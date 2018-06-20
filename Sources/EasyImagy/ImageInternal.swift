import Foundation

extension Image {
    internal func pixelIndexAt(x: Int, y: Int) -> Int {
        precondition(xRange.contains(x), "`x` is out of bounds: \(x)")
        precondition(yRange.contains(y), "`y` is out of bounds: \(y)")
        return y * width + x
    }
}

#if canImport(CoreGraphics)

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

extension ImageSlice { // Gray or PremultipliedRGBA
    internal static func generatedCGImage<Component>(
        slice: ImageSlice<Pixel>,
        colorSpace: CGColorSpace,
        bitmapInfo: CGBitmapInfo,
        componentType: Component.Type
    ) -> CGImage {
        let length = slice.image.width * slice.height * MemoryLayout<Pixel>.size

        let bytes: UnsafeMutablePointer<Pixel> = UnsafeMutablePointer(mutating: slice.image.pixels) + (slice.yRange.lowerBound * slice.image.width + slice.xRange.lowerBound)
        let provider: CGDataProvider = CGDataProvider(data: Data(
            bytes: bytes,
            count: length
        ) as CFData)!
        
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
