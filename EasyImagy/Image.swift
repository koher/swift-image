public struct Image<Pixel> {
	public let width: Int
	public let height: Int
	public fileprivate(set) var pixels: [Pixel]
	
	public init(width: Int, height: Int, pixels: [Pixel]) {
		assert(width >= 0, "`width` must be greater than or equal to 0: \(width)")
		assert(height >= 0, "`height` must be greater than or equal to 0: \(height)")
		
		self.width = width
		self.height = height
		
		let count = width * height

		assert(pixels.count >= count, "`pixels` must have more elements than `width` * `height`: \(count) < \(width) * \(height)")
		
		if pixels.count == count {
			self.pixels = pixels
		} else {
			self.pixels = [Pixel](pixels[0..<count])
		}
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
	public var count: Int {
		return width * height
	}
}

extension Image { // Subscripts (Index)
	fileprivate func isValidX(_ x: Int) -> Bool {
		return 0 <= x && x < width
	}
	
	fileprivate func isValidY(_ y: Int) -> Bool {
		return 0 <= y && y < height
	}
	
	fileprivate func _pixelIndex(x: Int, y: Int) -> Int {
		return y * width + x
	}
	
	internal func _safePixelIndex(x: Int, y: Int) -> Int {
		return _pixelIndex(x: clamp(x, lower: 0, upper: width - 1), y: clamp(y, lower: 0, upper: height - 1))
	}
	
	public func pixelIndex(x: Int, y: Int) -> Int? {
		guard isValidX(x) else { return nil }
		guard isValidY(y) else { return nil }
		return _pixelIndex(x: x, y: y)
	}
	
	public subscript(x: Int, y: Int) -> Pixel {
		get {
			return pixels[_pixelIndex(x: x, y: y)]
		}
		set {
			pixels[_pixelIndex(x: x, y: y)] = newValue
		}
	}
}

// Does not support combinations of range types like `xRange: Range<Int>, yRange: ClosedRange<Int>` currently
extension Image { // Subscripts (Range)
	public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
		return ImageSlice(image: self, xRange: xRange, yRange: yRange)
	}
	
	public subscript(xRange: CountableClosedRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
		return self[CountableRange(xRange), CountableRange(yRange)]
	}
	
	public subscript(xRange: Range<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
		return self[CountableRange(xRange), CountableRange(yRange)]
	}
	
	public subscript(xRange: ClosedRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
		return self[CountableRange(xRange), CountableRange(yRange)]
	}
	
	public subscript(xRange: CountableRange<Int>?, yRange: CountableRange<Int>?) -> ImageSlice<Pixel> {
		return self[xRange ?? 0..<width, yRange ?? 0..<height]
	}
	
	public subscript(xRange: CountableClosedRange<Int>?, yRange: CountableClosedRange<Int>?) -> ImageSlice<Pixel> {
		return self[xRange.map { CountableRange($0) }, yRange.map { CountableRange($0) }]
	}
	
	public subscript(xRange: Range<Int>?, yRange: Range<Int>?) -> ImageSlice<Pixel> {
		return self[xRange.map { CountableRange($0) }, yRange.map { CountableRange($0) }]
	}
	
	public subscript(xRange: ClosedRange<Int>?, yRange: ClosedRange<Int>?) -> ImageSlice<Pixel> {
		return self[xRange.map { CountableRange($0) }, yRange.map { CountableRange($0) }]
	}
}

extension Image { // safe get
	public func pixel(_ x: Int, _ y: Int) -> Pixel? {
		guard let pixelIndex = self.pixelIndex(x: x, y: y) else { return nil }
		return pixels[pixelIndex]
	}
}

extension Image : Sequence {
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

extension Image { // Higher-order methods
	public func map<T>(_ transform: (Pixel) -> T) -> Image<T> {
		return _map(transform)
	}
	
	internal func _map<T>(_ transform: (Pixel) -> T) -> Image<T> {
		return Image<T>(width: width, height: height, pixels: pixels.map(transform))
	}

	public func map<T>(_ transform: (_ x: Int, _ y: Int, _ pixel: Pixel) -> T) -> Image<T> {
		return _map(transform)
	}
	
	public func _map<T>(_ transform: (_ x: Int, _ y: Int, _ pixel: Pixel) -> T) -> Image<T> {
		var pixels: [T] = []
		pixels.reserveCapacity(count)
		var generator = makeIterator()
		for y in 0..<height {
			for x in 0..<width {
				pixels.append(transform(x, y, generator.next()!))
			}
		}
		return Image<T>(width: width, height: height, pixels: pixels)
	}

	public mutating func update(_ transform: (Pixel) -> Pixel) {
		for i in 0..<count {
			pixels[i] = transform(pixels[i])
		}
	}
}

extension Image { // Convolutions
	internal func _convoluted<W, T>(_ kernel: Image<W>, weightedSum: ([(weight: W, value: Pixel)]) -> T) -> Image<T> {
		assert(kernel.width % 2 == 1, "The width of the `kernel` must be odd: \(kernel.width)")
		assert(kernel.height % 2 == 1, "The height of the `kernel` must be odd: \(kernel.height)")
		
		let hw = kernel.width / 2  // halfWidth
		let hh = kernel.height / 2 // halfHeight
		
		var pixels: [T] = []
		pixels.reserveCapacity(count)
		
		for y in 0..<height {
			for x in 0..<width {
				var weightedValues: [(weight: W, value: Pixel)] = []
				for fy in 0..<kernel.height {
					for fx in 0..<kernel.width {
						let dx = fx - hw
						let dy = fy - hh
						weightedValues.append((weight: kernel[fx, fy], value: self.pixels[_safePixelIndex(x: x + dx, y: y + dy)]))
					}
				}
				pixels.append(weightedSum(weightedValues))
			}
		}
		
		return Image<T>(width: width, height: height, pixels: pixels)
	}
}

extension Image { // Operations
	public func flipX() -> Image<Pixel> {
		var pixels = [Pixel]()

		let maxX = width - 1
		for y in 0..<height {
			for x in 0..<width {
				pixels.append(self.pixels[pixelIndex(x: maxX - x, y: y)!])
			}
		}
		
		return Image(width: width, height: height, pixels: pixels)
	}
	
	public func flipY() -> Image<Pixel> {
		var pixels = [Pixel]()
		
		let maxY = height - 1
		for y in 0..<height {
			for x in 0..<width {
				pixels.append(self.pixels[pixelIndex(x: x, y: maxY - y)!])
			}
		}
		
		return Image(width: width, height: height, pixels: pixels)
	}
	
	public func rotate() -> Image<Pixel> {
		return rotate(1)
	}
	
	public func rotate(_ times: Int) -> Image<Pixel> {
		switch times % 4 {
		case 0:
			return self
		case 1, -3:
			var pixels = [Pixel]()
			
			let maxX = height - 1
			for y in 0..<width {
				for x in 0..<height {
					pixels.append(self.pixels[pixelIndex(x: y, y: maxX - x)!])
				}
			}
			
			return Image(width: height, height: width, pixels: pixels)
		case 2, -2:
			var pixels = [Pixel]()
			
			let maxX = width - 1
			let maxY = height - 1
			for y in 0..<height {
				for x in 0..<width {
					pixels.append(self.pixels[pixelIndex(x: maxX - x, y: maxY - y)!])
				}
			}
			
			return Image(width: width, height: height, pixels: pixels)
		case 3, -1:
			var pixels = [Pixel]()
			
			let maxY = width - 1
			for y in 0..<width {
				for x in 0..<height {
					pixels.append(self.pixels[pixelIndex(x: maxY - y, y: x)!])
				}
			}
			
			return Image(width: height, height: width, pixels: pixels)
		default:
			fatalError("Never reaches here.")
		}
	}
}
