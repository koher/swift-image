import CoreGraphics
#if os(iOS)
import UIKit
#endif
#if os(OSX)
import AppKit
#endif

public struct Image<Pixel> {
	public let width: Int
	public let height: Int
	public private(set) var pixels: [Pixel]
	
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
		self.init(width: width, height: height, pixels: [Pixel](count: width * height, repeatedValue: pixel))
	}
}

extension Image {
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
	private func isValidX(x: Int) -> Bool {
		return 0 <= x && x < width
	}
	
	private func isValidY(y: Int) -> Bool {
		return 0 <= y && y < height
	}
	
	internal func _pixelIndex(x  x: Int, y: Int) -> Int {
		return y * width + x
	}
	
	public func pixelIndex(x  x: Int, y: Int) -> Int? {
		guard isValidX(x) else { return nil }
		guard isValidY(y) else { return nil }
		return _pixelIndex(x: x, y: y)
	}
	
	public subscript(x: Int, y: Int) -> Pixel? {
		get {
			guard let pixelIndex = self.pixelIndex(x: x, y: y) else { return nil }
			return pixels[pixelIndex]
		}
		set {
			guard let newValue = newValue else { return }
			guard let pixelIndex = self.pixelIndex(x: x, y: y) else { return }
			pixels[pixelIndex] = newValue
		}
	}
}

extension Image { // Subscripts (Range)
	public subscript(xRange: Range<Int>?, yRange: Range<Int>?) -> ImageSlice<Pixel> {
		return ImageSlice(image: self, xRange: xRange ?? 0..<width, yRange: yRange ?? 0..<height)
	}
}

extension Image : SequenceType {
	public func generate() -> IndexingGenerator<[Pixel]> {
		return pixels.generate()
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
	public func map<T>(transform: Pixel -> T) -> Image<T> {
		return _map(transform)
	}
	
	internal func _map<T>(transform: Pixel -> T) -> Image<T> {
		return Image<T>(width: width, height: height, pixels: pixels.map(transform))
	}

	public func map<T>(transform: (x: Int, y: Int, pixel: Pixel) -> T) -> Image<T> {
		return _map(transform)
	}
	
	public func _map<T>(transform: (x: Int, y: Int, pixel: Pixel) -> T) -> Image<T> {
		var pixels: [T] = []
		pixels.reserveCapacity(count)
		var generator = generate()
		for y in 0..<height {
			for x in 0..<width {
				pixels.append(transform(x: x, y: y, pixel: generator.next()!))
			}
		}
		return Image<T>(width: width, height: height, pixels: pixels)
	}

	public mutating func update(transform: Pixel -> Pixel) {
		for i in 0..<count {
			pixels[i] = transform(pixels[i])
		}
	}
}

extension Image { // Convolution
	public func convoluted<W, T>(filter: Image<W>, mean: [(weight: W, value: Pixel)] -> T) -> Image<T> {
		return _convoluted(filter, mean: mean)
	}

	internal func _convoluted<W, T>(filter: Image<W>, mean: [(weight: W, value: Pixel)] -> T) -> Image<T> {
		assert(filter.width % 2 == 1, "The width of the `image` must be odd: \(filter.width)")
		assert(filter.height % 2 == 1, "The height of the `image` must be odd: \(filter.height)")
		
		let hw = filter.width / 2  // halfWidth
		let hh = filter.height / 2 // halfHeight
		
		var pixels: [T] = []
		pixels.reserveCapacity(count)
		
		for y in 0..<height {
			for x in 0..<width {
				var weightedValues: [(weight: W, value: Pixel)] = []
				for fy in 0..<filter.height {
					for fx in 0..<filter.width {
						let dx = fx - hw
						let dy = fy - hh
						guard let pixel = self[x + dx, y + dy] else { continue }
						weightedValues.append((weight: filter.pixels[filter._pixelIndex(x: fx, y: fy)], value: pixel))
					}
				}
				pixels.append(mean(weightedValues))
			}
		}
		
		return Image<T>(width: width, height: height, pixels: pixels)
	}
	
	public mutating func convolute<W>(filter: Image<W>, mean: [(weight: W, value: Pixel)] -> Pixel) {
		self = convoluted(filter, mean: mean)
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
	
	public func rotate(times: Int) -> Image<Pixel> {
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

extension Image where Pixel: RGBAType { // CoreGraphics
	public func resize(width  width: Int, height: Int) -> Image<Pixel> {
		return resize(width: width, height: height, interpolationQuality: CGInterpolationQuality.Default)
	}
	
	public func resize(width  width: Int, height: Int, interpolationQuality: CGInterpolationQuality) -> Image<Pixel> {
		return Image(width: width, height: height) { context in
			CGContextSetInterpolationQuality(context, interpolationQuality)
			CGContextDrawImage(context, CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)), self.cgImage)
		}
	}
}

extension Image where Pixel: RGBAType { // CoreGraphics
	public init(cgImage: CGImageRef) {
		let width = CGImageGetWidth(cgImage)
		let height = CGImageGetHeight(cgImage)
		
		self.init(width: width, height: height, setUp: { context in
			let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
			CGContextDrawImage(context, rect, cgImage)
		})
	}
	
	private init(width: Int, height: Int, setUp: CGContextRef -> ()) {
		let safeWidth = max(width, 0)
		let safeHeight = max(height, 0)
		
		let count = safeWidth * safeHeight
		let defaultPixel = Pixel.transparent
		var pixels = [Pixel](count: count, repeatedValue: Pixel.transparent)
		
		let context  = CGBitmapContextCreate(&pixels, safeWidth, safeHeight, 8, safeWidth * 4, Image.colorSpace, Image.bitmapInfo.rawValue)!
		CGContextClearRect(context, CGRect(x: 0.0, y: 0.0, width: CGFloat(safeWidth), height: CGFloat(safeHeight)))
		setUp(context)

		for i in 0..<count {
			let pixel = pixels[i]
			if pixel.alpha == 0 {
				pixels[i] = defaultPixel
			} else {
				pixels[i] = Pixel(red: UInt8(255 * Int(pixel.red) / Int(pixel.alpha)), green: UInt8(255 * Int(pixel.green) / Int(pixel.alpha)), blue: UInt8(255 * Int(pixel.blue) / Int(pixel.alpha)), alpha: pixel.alpha)
			}
		}

		self.init(width: safeWidth, height: safeHeight, pixels: pixels)
	}
	
	public var cgImage: CGImageRef {
		let length = count * 4
		let buffer = UnsafeMutablePointer<UInt8>.alloc(length)
		var pointer = buffer
		for pixel in self {
			let alphaInt = Int(pixel.alpha)
			pointer.memory = UInt8(pixel.redInt * alphaInt / 255)
			pointer++
			pointer.memory = UInt8(pixel.greenInt * alphaInt / 255)
			pointer++
			pointer.memory = UInt8(pixel.blueInt * alphaInt / 255)
			pointer++
			pointer.memory = pixel.alpha
			pointer++
		}
		
		let provider: CGDataProvider = CGDataProviderCreateWithCFData(NSData(bytes: buffer, length: length))!
		
		return CGImageCreate(width, height, 8, 32, width * 4, Image.colorSpace, Image.bitmapInfo, provider, nil, false, CGColorRenderingIntent.RenderingIntentDefault)!
	}
	
	private static var colorSpace: CGColorSpaceRef {
		return CGColorSpaceCreateDeviceRGB()!
	}
	
	private static var bitmapInfo: CGBitmapInfo {
		return CGBitmapInfo(rawValue: CGImageAlphaInfo.PremultipliedLast.rawValue | CGBitmapInfo.ByteOrder32Big.rawValue)
	}
}

#if os(iOS)
extension Image where Pixel: RGBAType  { // UIKit
	public init?(uiImage: UIImage) {
		guard let cgImage: CGImageRef = uiImage.CGImage else { return nil }
		self.init(cgImage: cgImage)
	}
	
	private init?(UIImageOrNil: UIImage?) {
		guard let uiImage: UIImage = UIImageOrNil else { return nil }
		self.init(uiImage: uiImage)
	}
	
	public init?(named name: String) {
		self.init(UIImageOrNil: UIImage(named: name))
	}
	
	public init?(named name: String, inBundle bundle: NSBundle?, compatibleWithTraitCollection traitCollection: UITraitCollection?) {
		self.init(UIImageOrNil: UIImage(named: name, inBundle: bundle, compatibleWithTraitCollection: traitCollection))
	}
	
	public init?(contentsOfFile path: String) {
		self.init(UIImageOrNil: UIImage(contentsOfFile: path))
	}
	
	public init?(data: NSData) {
		self.init(UIImageOrNil: UIImage(data: data))
	}

	public var uiImage: UIImage {
		return UIImage(CGImage: cgImage)
	}
}
#endif

#if os(OSX)
	extension Image where Pixel: RGBAType  { // AppKit
		public init?(nsImage: NSImage) {
			guard let cgImage: CGImageRef = nsImage.CGImageForProposedRect(nil, context: nil, hints: nil) else { return nil }
			self.init(cgImage: cgImage)
		}
		
		private init?(nsImageOrNil: NSImage?) {
			guard let nsImage: NSImage = nsImageOrNil else { return nil }
			self.init(nsImage: nsImage)
		}
		
		public init?(named name: String) {
			self.init(nsImageOrNil: NSImage(named: name))
		}
		
		public init?(contentsOfFile path: String) {
			self.init(nsImageOrNil: NSImage(contentsOfFile: path))
		}
		
		public init?(data: NSData) {
			self.init(nsImageOrNil: NSImage(data: data))
		}
		
		public var nsImage: NSImage {
			return NSImage(cgImage: CGImage, size: NSSize.zero)
		}
	}
#endif
