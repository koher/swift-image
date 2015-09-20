import CoreGraphics
#if os(iOS)
import UIKit
#endif

public struct Image {
	private var rawPixels: [Pixel]
	private let indexer: Indexer
	
	public init(width: Int, height: Int, pixels: [Pixel]) {
		indexer = Indexer(width: max(width, 0), height: max(height, 0))
		
		let count = indexer.width * indexer.height
		if pixels.count < count {
			rawPixels = pixels + [Pixel](count: count - pixels.count, repeatedValue: Pixel.transparent)
		} else if pixels.count == count {
			rawPixels = pixels
		} else {
			rawPixels = [Pixel](pixels[0..<count])
		}
	}
	
	private init(indexer: Indexer, pixels: [Pixel]) {
		self.indexer = indexer
		self.rawPixels = pixels
	}
	
	public var width: Int {
		return indexer.width
	}
	
	public var height: Int {
		return indexer.height
	}
	
	public var pixels: [Pixel] {
		return indexer.pixels(rawPixels)
	}
}

extension Image { // Additional initializers
	public init(width: Int, height: Int) {
		self.init(width: width, height: height, pixels: [Pixel](count: width * height, repeatedValue: Pixel.transparent))
	}
}

extension Image {
	public var count: Int {
		return width * height
	}
	
	public func enumerate() -> AnySequence<(x: Int, y: Int, pixel: Pixel)> {
		let width = self.width
		return AnySequence { () -> AnyGenerator<(x: Int, y: Int, pixel: Pixel)> in
			var x = 0
			var y = 0
			let generator = self.generate()
			return anyGenerator {
				if x == width {
					x = 0
					y++
				}
				return generator.next().map { (x: x, y: y, pixel: $0) }
			}
		}
	}
}

extension Image { // Subscripts (Index)
	private func isInvalidX(x: Int) -> Bool {
		return x < 0 || x >= width
	}
	
	private func isInvalidY(y: Int) -> Bool {
		return y < 0 || y >= height
	}
	
	public func index(x  x: Int, y: Int) -> Int? {
		if isInvalidX(x) || isInvalidY(y) {
			return nil
		}
		return indexer.index(x: x, y: y)
	}
	
	public subscript(y: Int) -> Row {
		get {
			return Row(image: self, y: y)
		}
		set {
			if newValue.count == width {
				for x in 0..<width {
					self[x, y] = newValue[x]
				}
			}
		}
	}
	
	public subscript(x: Int, y: Int) -> Pixel? {
		get {
			return index(x: x, y: y).map { rawPixels[$0] }
		}
		set (newValueOrNil) {
			guard let newValue = newValueOrNil, index = index(x: x, y: y) else { return }
			rawPixels[index] = newValue
		}
	}
}

extension Image { // Subscripts (Range)
	public subscript(yRange: Range<Int>) -> RowArray {
		return RowArray(image: self, yRange: yRange)
	}
	
	public subscript(xRange: Range<Int>, yRange: Range<Int>) -> Image? {
		if isInvalidX(xRange.startIndex) || isInvalidX(xRange.endIndex - 1) || isInvalidY(yRange.startIndex) || isInvalidY(yRange.endIndex - 1) {
			return nil
		}
		
		return Image(indexer: indexer.indexer(xRange: xRange, yRange: yRange), pixels: rawPixels)
	}
}

extension Image : SequenceType {
	public func generate() -> AnyGenerator<Pixel> {
		return indexer.generate(rawPixels)
	}
}

extension Image : Equatable {
}

public func ==(lhs: Image, rhs: Image) -> Bool {
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
	public func map(transform: Pixel -> Pixel) -> Image {
		var pixels = [Pixel]()
		for pixel in self {
			pixels.append(transform(pixel))
		}
		return Image(width: width, height: height, pixels: pixels)
	}

	public func map(transform: (index: Int, pixel: Pixel) -> Pixel) -> Image {
		var pixels = [Pixel]()
		for (index, pixel) in enumerate() {
			pixels.append(transform(index: index, pixel: pixel))
		}
		return Image(width: width, height: height, pixels: pixels)
	}

	public func map(transform: (x: Int, y: Int, pixel: Pixel) -> Pixel) -> Image {
		var pixels = [Pixel]()
		var x = 0
		var y = 0
		for pixel in self {
			pixels.append(transform(x: x++, y: y, pixel: pixel))
			if x == width {
				x = 0
				y++
			}
		}
		return Image(width: width, height: height, pixels: pixels)
	}
		
	public mutating func update(transform: Pixel -> Pixel) {
		for y in 0..<height {
			for x in 0..<width {
				let index = indexer.index(x: x, y: y)
				rawPixels[index] = transform(rawPixels[index])
			}
		}
	}
}

extension Image { // Operations
	public func flipX() -> Image {
		var pixels = [Pixel]()

		let maxX = width - 1
		for y in 0..<height {
			for x in 0..<width {
				pixels.append(rawPixels[indexer.index(x: maxX - x, y: y)])
			}
		}
		
		return Image(width: width, height: height, pixels: pixels)
	}
	
	public func flipY() -> Image {
		var pixels = [Pixel]()
		
		let maxY = height - 1
		for y in 0..<height {
			for x in 0..<width {
				pixels.append(rawPixels[indexer.index(x: x, y: maxY - y)])
			}
		}
		
		return Image(width: width, height: height, pixels: pixels)
	}
	
	public func resize(width  width: Int, height: Int) -> Image {
		return resize(width: width, height: height, interpolationQuality: CGInterpolationQuality.Default)
	}
	
	public func resize(width  width: Int, height: Int, interpolationQuality: CGInterpolationQuality) -> Image {
		return Image(width: width, height: height) { context in
			CGContextSetInterpolationQuality(context, interpolationQuality)
			CGContextDrawImage(context, CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)), self.CGImage)
		}
	}
	
	public func rotate() -> Image {
		return rotate(1)
	}
	
	public func rotate(times: Int) -> Image {
		switch times % 4 {
		case 0:
			return self
		case 1, -3:
			var pixels = [Pixel]()
			
			let maxX = height - 1
			for y in 0..<width {
				for x in 0..<height {
					pixels.append(rawPixels[indexer.index(x: y, y: maxX - x)])
				}
			}
			
			return Image(width: height, height: width, pixels: pixels)
		case 2, -2:
			var pixels = [Pixel]()
			
			let maxX = width - 1
			let maxY = height - 1
			for y in 0..<height {
				for x in 0..<width {
					pixels.append(rawPixels[indexer.index(x: maxX - x, y: maxY - y)])
				}
			}
			
			return Image(width: width, height: height, pixels: pixels)
		case 3, -1:
			var pixels = [Pixel]()
			
			let maxY = width - 1
			for y in 0..<width {
				for x in 0..<height {
					pixels.append(rawPixels[indexer.index(x: maxY - y, y: x)])
				}
			}
			
			return Image(width: height, height: width, pixels: pixels)
		default:
			fatalError("Never reaches here.")
		}
	}
}

extension Image { // CoreGraphics
	public init(CGImage: CGImageRef) {
		let width = CGImageGetWidth(CGImage)
		let height = CGImageGetHeight(CGImage)
		
		self.init(width: width, height: height, setUp: { context in
			let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
			CGContextDrawImage(context, rect, CGImage)
		})
	}
	
	private init(width: Int, height: Int, setUp: CGContextRef -> ()) {
		let safeWidth = max(width, 0)
		let safeHeight = max(height, 0)
		
		let count = safeWidth * safeHeight
		let defaultPixel = Pixel.transparent
		var pixels = [Pixel](count: count, repeatedValue: defaultPixel)
		
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
	
	public var CGImage: CGImageRef {
		let length = count * 4
		let buffer = UnsafeMutablePointer<UInt8>.alloc(length)
		var pointer = buffer
		for pixel in self {
			let alphaInt = pixel.alphaInt
			pointer.memory = UInt8(pixel.redInt * alphaInt / 255)
			pointer++
			pointer.memory = UInt8(pixel.greenInt * alphaInt / 255)
			pointer++
			pointer.memory = UInt8(pixel.blueInt * alphaInt / 255)
			pointer++
			pointer.memory = pixel.alpha
			pointer++
		}
		
		let provider: CGDataProvider = EasyImageCreateDataProvider(buffer, width * height * 4).takeRetainedValue()
		
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
extension Image { // UIKit
	public init?(UIImage: UIKit.UIImage) {
		guard let cgImage: CGImageRef = UIImage.CGImage else { return nil }
		self.init(CGImage: cgImage)
	}
	
	private init?(UIImageOrNil: UIKit.UIImage?) {
		guard let UIImage: UIKit.UIImage = UIImageOrNil else { return nil }
		self.init(UIImage: UIImage)
	}
	
	public init?(named name: String) {
		self.init(UIImageOrNil: UIKit.UIImage(named: name))
	}
	
	public init?(named name: String, inBundle bundle: NSBundle?, compatibleWithTraitCollection traitCollection: UITraitCollection?) {
		self.init(UIImageOrNil: UIKit.UIImage(named: name, inBundle: bundle, compatibleWithTraitCollection: traitCollection))
	}
	
	public init?(contentsOfFile path: String) {
		self.init(UIImageOrNil: UIKit.UIImage(contentsOfFile: path))
	}
	
	public init?(data: NSData) {
		self.init(UIImageOrNil: UIKit.UIImage(data: data))
	}

	public var UIImage: UIKit.UIImage {
		return UIKit.UIImage(CGImage: CGImage)
	}
}
#endif

public struct Row : SequenceType {
	private var image: Image
	private let y: Int
	
	private init(image: Image, y: Int) {
		self.image = image
		self.y = y
	}
	
	public subscript(x: Int) -> Pixel? {
		get {
			return image[x, y]
		}
		set {
			image[x, y] = newValue
		}
	}
	
	public var count: Int {
		return image.width
	}
	
	public func generate() -> AnyGenerator<Pixel> {
		var x = 0
		return anyGenerator { self.image[x++, self.y] }
	}
}

public struct Column : SequenceType {
	private var image: Image
	private let x: Int
	
	private init(image: Image, x: Int) {
		self.image = image
		self.x = x
	}
	
	public subscript(y: Int) -> Pixel? {
		get {
			return image[x, y]
		}
		set {
			image[x, y] = newValue
		}
	}
	
	public var count: Int {
		return image.height
	}
	public func generate() -> AnyGenerator<Pixel> {
		var y = 0
		return anyGenerator { self.image[self.x, y++] }
	}
}

public struct RowArray : SequenceType {
	private var image: Image
	private let yRange: Range<Int>
	
	private init(image: Image, yRange: Range<Int>) {
		self.image = image
		self.yRange = yRange
	}
	
	private func isInvalidY(y: Int) -> Bool {
		return y < 0 || y >= count || image.isInvalidY(yRange.startIndex + y)
	}
	
	public subscript(y: Int) -> Row? {
		get {
			return isInvalidY(y) ? nil : image[yRange.startIndex + y]
		}
		set(newValueOrNil) {
			if isInvalidY(y) {
				return
			}
			guard let newValue = newValueOrNil else { return }
			image[yRange.startIndex + y] = newValue
		}
	}
	
	public subscript(xRange: Range<Int>) -> Image? {
		get {
			return image[xRange, yRange]
		}
	}
	
	public var count: Int {
		return yRange.endIndex - yRange.startIndex
	}
	
	public func generate() -> AnyGenerator<Row> {
		var y = max(yRange.startIndex, 0)
		return anyGenerator { self.isInvalidY(y) ? nil : self.image[self.yRange.startIndex + y++] }
	}
}

private class Indexer {
	let width: Int
	let height: Int

	init(width: Int, height: Int) {
		self.width = width
		self.height = height
	}
	
	func index(x  x: Int, y: Int) -> Int {
		return y * width + x
	}
	
	func pixels(rawPixels: [Pixel]) -> [Pixel] {
		return rawPixels
	}
	
	func generate(rawPixels: [Pixel]) -> AnyGenerator<Pixel> {
		var generator = rawPixels.generate()
		return anyGenerator { generator.next() }
	}
	
	func indexer(xRange  xRange: Range<Int>, yRange: Range<Int>) -> Indexer {
		return OffsetIndexer(width: xRange.endIndex - xRange.startIndex, height: yRange.endIndex - yRange.startIndex, offsetX: xRange.startIndex, offsetY: yRange.startIndex, rawWidth: width, rawHeight: height)
	}
}

private class OffsetIndexer : Indexer {
	let offsetX: Int
	let offsetY: Int
	let rawWidth: Int
	let rawHeight: Int
	
	var pixels: [Pixel]?
	
	init(width: Int, height: Int, offsetX: Int, offsetY: Int, rawWidth: Int, rawHeight: Int) {
		self.offsetX = offsetX
		self.offsetY = offsetY
		self.rawWidth = rawWidth
		self.rawHeight = rawHeight
		
		super.init(width: width, height: height)
	}
	
	override func index(x  x: Int, y: Int) -> Int {
		return (y + offsetY) * rawWidth + (x + offsetX)
	}
	
	override func pixels(rawPixels: [Pixel]) -> [Pixel] {
		var pixels = [Pixel]()
		for y in 0..<height {
			var index = self.index(x: 0, y: y)
			for _ in 0..<width {
				pixels.append(rawPixels[index++])
			}
		}
		
		return pixels
	}
	
	override func generate(rawPixels: [Pixel]) -> AnyGenerator<Pixel> {
		var x: Int = 0
		var y: Int = 0
		var index: Int = self.index(x: 0, y: 0)
		
		return anyGenerator {
			if x >= self.width {
				x = 0
				y++
				index = self.index(x: 0, y: y)
			}
			if y >= self.height {
				return nil
			}
			x++
			return rawPixels[index++]
		}
	}
	
	private override func indexer(xRange xRange: Range<Int>, yRange: Range<Int>) -> Indexer {
		return OffsetIndexer(width: xRange.endIndex - xRange.startIndex, height: yRange.endIndex - yRange.startIndex, offsetX: offsetX + xRange.startIndex, offsetY: offsetY + yRange.startIndex, rawWidth: rawWidth, rawHeight: rawHeight)
	}
}
