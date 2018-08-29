public struct Image<Pixel> : ImageProtocol {
    public typealias SubImage = ImageSlice<Pixel>
    
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

extension Image { // Pointers
    public func withUnsafeBufferPointer<R>(_ body: (UnsafeBufferPointer<Pixel>) throws -> R) rethrows -> R {
        return try pixels.withUnsafeBufferPointer(body)
    }
    
    public mutating func withUnsafeMutableBufferPointer<R>(_ body: (inout UnsafeMutableBufferPointer<Pixel>) throws -> R) rethrows -> R {
        return try pixels.withUnsafeMutableBufferPointer(body)
    }
    
    public func withUnsafeBytes<R>(_ body: (UnsafeRawBufferPointer) throws -> R) rethrows -> R {
        return try pixels.withUnsafeBytes(body)
    }
    
    public mutating func withUnsafeMutableBytes<R>(_ body: (UnsafeMutableRawBufferPointer) throws -> R) rethrows -> R {
        return try pixels.withUnsafeMutableBytes(body)
    }
}

extension Image {
    internal func pixelIndexAt(x: Int, y: Int) -> Int {
        precondition(xRange.contains(x), "`x` is out of bounds: \(x)")
        precondition(yRange.contains(y), "`y` is out of bounds: \(y)")
        return y * width + x
    }
}

#if canImport(CoreGraphics)
import Foundation
import CoreGraphics

extension Image { // RGBA
    internal static func drawnPixels<Channel, Summable>(
        width: Int,
        height: Int,
        defaultPixel: RGBA<Channel>,
        colorSpace: CGColorSpace,
        bitmapInfo: CGBitmapInfo,
        minValue: Channel,
        maxValue: Channel,
        isEqual: (Channel, Channel) -> Bool,
        toSummable: (Channel) -> Summable,
        product: (Summable, Summable) -> Summable,
        quotient: (Summable, Summable) -> Summable,
        toOriginal: (Summable) -> Channel,
        setUp: (CGContext) -> ()
    ) -> [RGBA<Channel>] {
        assert(width >= 0)
        assert(height >= 0)
        
        let bytesPerComponent = MemoryLayout<Channel>.size
        
        let count = width * height
        var pixels = [RGBA<Channel>](repeating: defaultPixel, count: count)
        
        let context  = CGContext(
            data: &pixels,
            width: width,
            height: height,
            bitsPerComponent: bytesPerComponent * 8,
            bytesPerRow: bytesPerComponent * 4 * width,
            space: colorSpace,
            bitmapInfo: bitmapInfo.rawValue
        )!
        context.clear(CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))
        setUp(context)
        
        let maxSummable = toSummable(maxValue)
        for i in 0..<count {
            let pixel = pixels[i]
            if !isEqual(pixel.alpha, minValue) && !isEqual(pixel.alpha, maxValue) {
                let alpha = toSummable(pixel.alpha)
                pixels[i] = RGBA<Channel>(
                    red: toOriginal(quotient(product(maxSummable, toSummable(pixel.red)), alpha)),
                    green: toOriginal(quotient(product(maxSummable, toSummable(pixel.green)), alpha)),
                    blue: toOriginal(quotient(product(maxSummable, toSummable(pixel.blue)), alpha)),
                    alpha: pixel.alpha
                )
            }
        }
        
        return pixels
    }
    
    internal static func generatedCGImage<Channel, Summable>(
        image: Image<RGBA<Channel>>,
        colorSpace: CGColorSpace,
        bitmapInfo: CGBitmapInfo,
        maxValue: Channel,
        toSummable: (Channel) -> Summable,
        product: (Summable, Summable) -> Summable,
        quotient: (Summable, Summable) -> Summable,
        toOriginal: (Summable) -> Channel
    ) -> CGImage {
        let bytesPerComponent = MemoryLayout<Channel>.size
        let bytesPerPixel = bytesPerComponent * 4
        let length = image.count * bytesPerPixel
        
        let maxSummable = toSummable(maxValue)
        
        var data = Data(count: length)
        data.withUnsafeMutableBytes { (bytes: UnsafeMutablePointer<Channel>) -> Void in
            var pointer = bytes
            for pixel in image.pixels {
                let alphaInt = toSummable(pixel.alpha)
                pointer.pointee = toOriginal(quotient(product(toSummable(pixel.red), alphaInt), maxSummable))
                pointer += 1
                pointer.pointee = toOriginal(quotient(product(toSummable(pixel.green), alphaInt), maxSummable))
                pointer += 1
                pointer.pointee = toOriginal(quotient(product(toSummable(pixel.blue), alphaInt), maxSummable))
                pointer += 1
                pointer.pointee = pixel.alpha
                pointer += 1
            }
        }
        let provider: CGDataProvider = CGDataProvider(data: data as CFData)!
        
        return CGImage(
            width: image.width,
            height: image.height,
            bitsPerComponent: bytesPerComponent * 8,
            bitsPerPixel: bytesPerPixel * 8,
            bytesPerRow: bytesPerPixel * image.width,
            space: colorSpace,
            bitmapInfo: bitmapInfo,
            provider: provider,
            decode: nil,
            shouldInterpolate: false,
            intent: CGColorRenderingIntent.defaultIntent
        )!
    }
}

extension Image { // Gray or PremultipliedRGBA
    internal static func drawnPixels<Component>(
        width: Int,
        height: Int,
        defaultPixel: Pixel,
        colorSpace: CGColorSpace,
        bitmapInfo: CGBitmapInfo,
        componentType: Component.Type,
        setUp: (CGContext) -> ()
    ) -> [Pixel] {
        assert(width >= 0)
        assert(height >= 0)
        
        let count = width * height
        var pixels = [Pixel](repeating: defaultPixel, count: count)
        
        let context  = CGContext(
            data: &pixels,
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<Component>.size * 8,
            bytesPerRow: MemoryLayout<Pixel>.size * width,
            space: colorSpace,
            bitmapInfo: bitmapInfo.rawValue
        )!
        context.clear(CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))
        setUp(context)
        
        return pixels
    }
    
    internal static func generatedCGImage<Component>(
        image: Image<Pixel>,
        colorSpace: CGColorSpace,
        bitmapInfo: CGBitmapInfo,
        componentType: Component.Type
    ) -> CGImage {
        let length = image.count * MemoryLayout<Pixel>.size
        
        let provider: CGDataProvider = CGDataProvider(data: Data(
            bytes: UnsafeMutableRawPointer(mutating: image.pixels),
            count: length
        ) as CFData)!
        
        return CGImage(
            width: image.width,
            height: image.height,
            bitsPerComponent: MemoryLayout<Component>.size * 8,
            bitsPerPixel: MemoryLayout<Pixel>.size * 8,
            bytesPerRow: MemoryLayout<Pixel>.size * image.width,
            space: colorSpace,
            bitmapInfo: bitmapInfo,
            provider: provider,
            decode: nil,
            shouldInterpolate: false,
            intent: CGColorRenderingIntent.defaultIntent
        )!
    }
    
    internal static func withGeneratedCGImage<Component, R>(
        image: Image<Pixel>,
        colorSpace: CGColorSpace,
        bitmapInfo: CGBitmapInfo,
        body: (CGImage) throws -> R,
        componentType: Component.Type
    ) rethrows -> R {
        var image = image
        let length = image.count * MemoryLayout<Pixel>.size
        let width = image.width
        let height = image.height
        
        let provider: CGDataProvider = CGDataProvider(data: Data(
            bytesNoCopy: &image.pixels,
            count: length,
            deallocator: .none
        ) as CFData)!
        
        let cgImage = CGImage(
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<Component>.size * 8,
            bitsPerPixel: MemoryLayout<Pixel>.size * 8,
            bytesPerRow: MemoryLayout<Pixel>.size * width,
            space: colorSpace,
            bitmapInfo: bitmapInfo,
            provider: provider,
            decode: nil,
            shouldInterpolate: false,
            intent: CGColorRenderingIntent.defaultIntent
        )!
        
        return try body(cgImage)
    }
}
#endif
