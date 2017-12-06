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
            return pixels[pixelIndexWithPreconditionsAt(x: x, y: y)]
        }
        set {
            pixels[pixelIndexWithPreconditionsAt(x: x, y: y)] = newValue
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

extension Image { // Operations
    public func transposed() -> Image<Pixel> {
        var pixels = [Pixel]()
        
        for x in 0..<width {
            for y in 0..<height {
                pixels.append(self[x, y])
            }
        }
        
        return Image(width: height, height: width, pixels: pixels)
    }
    
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
