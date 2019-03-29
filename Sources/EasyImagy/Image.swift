public struct Image<Pixel> : ImageProtocol {
    public typealias SubImage = ImageSlice<Pixel>
    
	public let width: Int
	public let height: Int
	@usableFromInline internal var pixels: [Pixel]
	
	public init(width: Int, height: Int, pixels: [Pixel]) {
		precondition(width >= 0, "`width` must be greater than or equal to 0: \(width)")
		precondition(height >= 0, "`height` must be greater than or equal to 0: \(height)")
        let count = width * height
        precondition(pixels.count == count, "`pixels.count` (\(pixels.count)) must be equal to `width` (\(width)) * `height` (\(height)) (= \(count)).")

		self.width = width
		self.height = height
        self.pixels = pixels
	}
    
    public var xRange: Range<Int> {
        return 0..<width
    }
    
    public var yRange: Range<Int> {
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

    public subscript(xRange: Range<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
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
    internal static func generatedCGImage<Channel, Additive>(
        image: Image<RGBA<Channel>>,
        colorSpace: CGColorSpace,
        bitmapInfo: CGBitmapInfo,
        maxValue: Channel,
        toAdditive: (Channel) -> Additive,
        product: (Additive, Additive) -> Additive,
        quotient: (Additive, Additive) -> Additive,
        toOriginal: (Additive) -> Channel
    ) -> CGImage {
        let bytesPerComponent = MemoryLayout<Channel>.size
        let bytesPerPixel = bytesPerComponent * 4
        let length = image.count * bytesPerPixel
        
        let maxAdditive = toAdditive(maxValue)
        
        var data = Data(count: length)
        #if swift(>=5.0)
        data.withUnsafeMutableBytes { (rawPointer: UnsafeMutableRawBufferPointer) -> Void in
            let bytes = rawPointer.bindMemory(to: Channel.self)
            var pointer = bytes.baseAddress!
            for pixel in image.pixels {
                let alphaInt = toAdditive(pixel.alpha)
                pointer.pointee = toOriginal(quotient(product(toAdditive(pixel.red), alphaInt), maxAdditive))
                pointer += 1
                pointer.pointee = toOriginal(quotient(product(toAdditive(pixel.green), alphaInt), maxAdditive))
                pointer += 1
                pointer.pointee = toOriginal(quotient(product(toAdditive(pixel.blue), alphaInt), maxAdditive))
                pointer += 1
                pointer.pointee = pixel.alpha
                pointer += 1
            }
        }
        #else
        data.withUnsafeMutableBytes { (bytes: UnsafeMutablePointer<Channel>) -> Void in
            var pointer = bytes
            for pixel in image.pixels {
                let alphaInt = toAdditive(pixel.alpha)
                pointer.pointee = toOriginal(quotient(product(toAdditive(pixel.red), alphaInt), maxAdditive))
                pointer += 1
                pointer.pointee = toOriginal(quotient(product(toAdditive(pixel.green), alphaInt), maxAdditive))
                pointer += 1
                pointer.pointee = toOriginal(quotient(product(toAdditive(pixel.blue), alphaInt), maxAdditive))
                pointer += 1
                pointer.pointee = pixel.alpha
                pointer += 1
            }
        }
        #endif
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
