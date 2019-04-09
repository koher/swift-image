extension ImageProtocol {
    @inlinable
    public func map<T>(_ transform: (Pixel) throws -> T) rethrows -> Image<T> {
        let pixels: [T] = try map(transform)
        return Image<T>(width: width, height: height, pixels: pixels)
    }

    // This method is experimental. When a similar method is added to `MutableCollection` in the Swift standard library, the name of this method should follow it. It is under discussion if such a method should be added to the standard library. So it keeps this method experimental until a conclusion is made to avoid renaming proper `public` methods.
    // - https://forums.swift.org/t/in-place-map-for-mutablecollection/11111
    // - https://forums.swift.org/t/idea-mutatingforeach-for-collections/18442
    @inlinable
    public mutating func _update(_ body: (inout Pixel) throws -> ()) rethrows {
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
    public mutating func _update(_ body: (inout Pixel) throws -> ()) rethrows {
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
