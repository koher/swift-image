public struct ImageSlice<Pixel> : ImageProtocol {
    public typealias SubImage = ImageSlice<Pixel>
    public typealias Element = Pixel // FIXME: Remove this line in the future. Swift 4.1 needs it to build `ImageSlice`.

    internal var image: Image<Pixel>
    public let xRange: CountableRange<Int>
    public let yRange: CountableRange<Int>
    
    internal init(image: Image<Pixel>, xRange: CountableRange<Int>, yRange: CountableRange<Int>) {
        precondition(image.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(image.yRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        self.image = image
        self.xRange = xRange
        self.yRange = yRange
    }

    public init(width: Int, height: Int, pixels: [Pixel]) {
        self.init(image: Image<Pixel>(width: width, height: height, pixels: pixels), xRange: 0..<width, yRange: 0..<height)
    }
    
    public subscript(x: Int, y: Int) -> Pixel {
        get {
            precondition(xRange.contains(x), "`x` is out of bounds: \(x)")
            precondition(yRange.contains(y), "`y` is out of bounds: \(y)")
            return image[x, y]
        }
        
        set {
            precondition(xRange.contains(x), "`x` is out of bounds: \(x)")
            precondition(yRange.contains(y), "`y` is out of bounds: \(y)")
            image[x, y] = newValue
        }
    }
    
    public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.yRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }
}

extension ImageSlice {
    public init(_ image: Image<Pixel>) {
        self.init(image: image, xRange: image.xRange, yRange: image.yRange)
    }
}

#if canImport(CoreGraphics)
import Foundation
import CoreGraphics

extension ImageSlice { // Gray or PremultipliedRGBA
    internal static func generatedCGImage<Component>(
        slice: ImageSlice<Pixel>,
        colorSpace: CGColorSpace,
        bitmapInfo: CGBitmapInfo,
        componentType: Component.Type
    ) -> CGImage {
        let imageCount = slice.image.count
        let pixelCount = slice.image.width * slice.height
        let length = pixelCount * MemoryLayout<Pixel>.size
        let offset = slice.yRange.lowerBound * slice.image.width + slice.xRange.lowerBound
        
        var data: Data
        if offset + pixelCount <= imageCount {
            let bytes: UnsafeMutablePointer<Pixel> = UnsafeMutablePointer(mutating: slice.image.pixels) + (slice.yRange.lowerBound * slice.image.width + slice.xRange.lowerBound)
            data = Data(bytes: bytes, count: length)
        } else {
            let bytes: UnsafeMutablePointer<Pixel> = UnsafeMutablePointer(mutating: slice.image.pixels) + (slice.yRange.lowerBound * slice.image.width + slice.xRange.lowerBound)
            let pointer: UnsafeMutablePointer<UInt8> = UnsafeMutableRawPointer(bytes).bindMemory(to: UInt8.self, capacity: length)
            data = Data(capacity: pixelCount * MemoryLayout<Pixel>.size)
            data.append(pointer, count: (imageCount - offset) * MemoryLayout<Pixel>.size)
            data.append(pointer, count: (offset + pixelCount - imageCount) * MemoryLayout<Pixel>.size)
        }
        
        let provider: CGDataProvider = CGDataProvider(data: data as CFData)!
        
        return CGImage(
            width: slice.width,
            height: slice.height,
            bitsPerComponent: MemoryLayout<Component>.size * 8,
            bitsPerPixel: MemoryLayout<Pixel>.size * 8,
            bytesPerRow: MemoryLayout<Pixel>.size * slice.image.width,
            space: colorSpace,
            bitmapInfo: bitmapInfo,
            provider: provider,
            decode: nil,
            shouldInterpolate: false,
            intent: CGColorRenderingIntent.defaultIntent
        )!
    }
    
    internal static func withGeneratedCGImage<Component, R>(
        slice: ImageSlice<Pixel>,
        colorSpace: CGColorSpace,
        bitmapInfo: CGBitmapInfo,
        body: (CGImage) throws -> R,
        componentType: Component.Type
    ) rethrows -> R {
        var slice = slice
        let length = slice.image.width * slice.height * MemoryLayout<Pixel>.size
        
        let bytes: UnsafeMutablePointer<Pixel> = &slice.image.pixels + (slice.yRange.lowerBound * slice.image.width + slice.xRange.lowerBound)
        let provider: CGDataProvider = CGDataProvider(data: Data(
            bytesNoCopy: bytes,
            count: length,
            deallocator: .none
        ) as CFData)!
        
        let cgImage = CGImage(
            width: slice.width,
            height: slice.height,
            bitsPerComponent: MemoryLayout<Component>.size * 8,
            bitsPerPixel: MemoryLayout<Pixel>.size * 8,
            bytesPerRow: MemoryLayout<Pixel>.size * slice.image.width,
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
