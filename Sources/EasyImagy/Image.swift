public struct Image<Pixel> : ImageProtocol {
	public let width: Int
	public let height: Int
	public internal(set) var pixels: [Pixel]
	
	public init(width: Int, height: Int, pixels: [Pixel]) {
		precondition(width >= 0, "`width` must be greater than or equal to 0: \(width)")
		precondition(height >= 0, "`height` must be greater than or equal to 0: \(height)")
        let count = width * height
        precondition(pixels.count == count, "`pixels.count` (\(pixels.count)) must be equal to `width` (\(width)) * `height` (\(height)) (= \(count)).")

		self.width = width
		self.height = height
        self.pixels = pixels
	}
}

extension Image { // Additional initializers
	public init(width: Int, height: Int, pixel: Pixel) {
		self.init(width: width, height: height, pixels: [Pixel](repeating: pixel, count: width * height))
	}
}

extension Image { // Initializers for ImageSlice
	public init(_ imageSlice: ImageSlice<Pixel>) {
		self.init(width: imageSlice.width, height: imageSlice.height, pixels: imageSlice.pixels)
	}
}

extension Image {
	public func pixelIndexAt(x: Int, y: Int) -> Int? {
		guard xRange.contains(x) else { return nil }
		guard yRange.contains(y) else { return nil }
		return pixelIndexWithAssertionsAt(x: x, y: y)
	}
    
    public func pixelAt(x: Int, y: Int) -> Pixel? {
        guard let pixelIndex = self.pixelIndexAt(x: x, y: y) else { return nil }
        return pixels[pixelIndex]
    }

	public subscript(x: Int, y: Int) -> Pixel {
		get {
			return pixels[pixelIndexWithPreconditionsAt(x: x, y: y)]
		}
		set {
			pixels[pixelIndexWithPreconditionsAt(x: x, y: y)] = newValue
		}
	}
}

extension Image {
	public func makeIterator() -> IndexingIterator<[Pixel]> {
		return pixels.makeIterator()
	}
}

public func ==<Pixel: Equatable>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
	if lhs.width != rhs.width || lhs.height != rhs.height {
		return false
	}
	
	for (pixel1, pixel2) in zip(lhs, rhs) {
		if pixel1 != pixel2 {
			return false
		}
	}
	
	return true
}

extension Image { // Operations
	public func xReversed() -> Image<Pixel> {
		var pixels = [Pixel]()

		let maxX = width - 1
		for y in 0..<height {
			for x in 0..<width {
				pixels.append(self.pixels[pixelIndexWithAssertionsAt(x: maxX - x, y: y)])
			}
		}
		
		return Image(width: width, height: height, pixels: pixels)
	}
	
	public func yReversed() -> Image<Pixel> {
		var pixels = [Pixel]()
		
		let maxY = height - 1
		for y in 0..<height {
			for x in 0..<width {
				pixels.append(self.pixels[pixelIndexWithAssertionsAt(x: x, y: maxY - y)])
			}
		}
		
		return Image(width: width, height: height, pixels: pixels)
	}
	
	public func rotated() -> Image<Pixel> {
		return rotated(1)
	}
	
	public func rotated(_ times: Int) -> Image<Pixel> {
		switch times % 4 {
		case 0:
			return self
		case 1, -3:
			var pixels = [Pixel]()
			
			let maxX = height - 1
			for y in 0..<width {
				for x in 0..<height {
					pixels.append(self.pixels[pixelIndexWithAssertionsAt(x: y, y: maxX - x)])
				}
			}
			
			return Image(width: height, height: width, pixels: pixels)
		case 2, -2:
			var pixels = [Pixel]()
			
			let maxX = width - 1
			let maxY = height - 1
			for y in 0..<height {
				for x in 0..<width {
					pixels.append(self.pixels[pixelIndexWithAssertionsAt(x: maxX - x, y: maxY - y)])
				}
			}
			
			return Image(width: width, height: height, pixels: pixels)
		case 3, -1:
			var pixels = [Pixel]()
			
			let maxY = width - 1
			for y in 0..<width {
				for x in 0..<height {
					pixels.append(self.pixels[pixelIndexWithAssertionsAt(x: maxY - y, y: x)])
				}
			}
			
			return Image(width: height, height: width, pixels: pixels)
		default:
			fatalError("Never reaches here.")
		}
	}
}
