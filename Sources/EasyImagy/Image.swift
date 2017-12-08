public struct Image<Pixel> : ImageProtocol {
	public let width: Int
	public let height: Int
	internal var pixels: [Pixel]
	
	public init(width: Int, height: Int, pixels: [Pixel]) {
		precondition(width >= 0, "`width` must be greater than or equal to 0: \(width)")
		precondition(height >= 0, "`height` must be greater than or equal to 0: \(height)")
        let count = width * height
        precondition(pixels.count == count, "`pixels.count` (\(pixels.count)) must be equal to `width` (\(width)) * `height` (\(height)) (= \(count)).")

		self.width = width
		self.height = height
        self.pixels = pixels
	}
    
    public var xRange: CountableRange<Int> {
        return 0..<width
    }
    
    public var yRange: CountableRange<Int> {
        return 0..<height
    }
    
    public subscript(x: Int, y: Int) -> Pixel {
        get {
            return pixels[pixelIndexAt(x: x, y: y)]
        }
        set {
            pixels[pixelIndexAt(x: x, y: y)] = newValue
        }
    }

    public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return ImageSlice(image: self, xRange: xRange, yRange: yRange)
    }
}

extension Image { // Initializers for ImageSlice
	public init(_ imageSlice: ImageSlice<Pixel>) {
		self.init(width: imageSlice.width, height: imageSlice.height, pixels: Array(imageSlice))
	}
}

extension Image {
	public func makeIterator() -> IndexingIterator<[Pixel]> {
		return pixels.makeIterator()
	}
}
