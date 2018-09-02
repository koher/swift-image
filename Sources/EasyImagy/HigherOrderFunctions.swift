extension ImageProtocol {
    @inlinable
    public func map<T>(_ transform: (Pixel) throws -> T) rethrows -> Image<T> {
        return Image<T>(width: width, height: height, pixels: try map(transform))
    }

    @inlinable
    public mutating func update(_ body: (inout Pixel) throws -> ()) rethrows {
        for y in yRange {
            for x in xRange {
                try body(&self[x, y])
            }
        }
    }
}

// Special implementation for `Image` for performance
#if swift(>=4.1)
extension Image {
    @inlinable
    public mutating func update(_ body: (inout Pixel) throws -> ()) rethrows {
        let count = self.count
        guard count > 0 else { return }
        try pixels.withUnsafeMutableBufferPointer {
            for pointer in $0.baseAddress! ..< $0.baseAddress! + count {
                try body(&pointer.pointee)
            }
        }
    }
}
#endif
