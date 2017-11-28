import Foundation

extension Image {
    internal func _convoluted<W, Summable>(
        by kernel: Image<W>,
        toSummable: (Pixel) -> Summable,
        product: (Summable, W) -> Summable,
        zero: Summable,
        sum: (Summable, Summable) -> Summable,
        toOriginal: (Summable) -> Pixel
    ) -> Image<Pixel> {
        precondition(kernel.width % 2 == 1, "The width of the `kernel` must be odd: \(kernel.width)")
        precondition(kernel.height % 2 == 1, "The height of the `kernel` must be odd: \(kernel.height)")
        
        let hw = kernel.width / 2  // halfWidth
        let hh = kernel.height / 2 // halfHeight
        
        var pixels: [Pixel] = []
        pixels.reserveCapacity(count)
        
        for y in 0..<height {
            for x in 0..<width {
                var weightedValues: [Summable] = []
                for fy in 0..<kernel.height {
                    for fx in 0..<kernel.width {
                        let dx = fx - hw
                        let dy = fy - hh
                        let summablePixel = toSummable(self.pixels[_safePixelIndex(x: x + dx, y: y + dy)])
                        let weight = kernel[fx, fy]
                        weightedValues.append(product(summablePixel, weight))
                    }
                }
                pixels.append(toOriginal(weightedValues.reduce(zero) { sum($0, $1) }))
            }
        }
        
        return Image<Pixel>(width: width, height: height, pixels: pixels)
    }
    
    internal func _interpolate<Summable>(
        x: Float,
        y: Float,
        toSummable: (Pixel) -> Summable,
        product: (Summable, Float) -> Summable,
        sum: (Summable, Summable) -> Summable,
        toOriginal: (Summable) -> Pixel
    ) -> Pixel {
        let width = self.width
        let height = self.height
        
        var x0 = Int(floor(x))
        var y0 = Int(floor(y))
        var x1 = x0 + 1
        var y1 = y0 + 1
        
        if x1 <= 0 {
            x0 = 0
            
            if x1 < 0 {
                x1 = 0
            }
        } else if x0 >= width - 1 {
            if x0 >= width {
                x0 = width - 1
            }
            
            x1 = width - 1
        }
        
        if y1 <= 0 {
            y0 = 0
            
            if y1 < 0 {
                y1 = 0
            }
        } else if y0 >= height - 1 {
            if y0 >= height {
                y0 = height - 1
            }
            
            y1 = height - 1
        }
        
        let v00 = self[x0, y0]
        let v01 = self[x1, y0]
        let v10 = self[x0, y1]
        let v11 = self[x1, y1]
        
        let wx = x - Float(x0)
        let wy = y - Float(y0)
        let w00 = (1.0 - wx) * (1.0 - wy)
        let w01 = wx * (1.0 - wy)
        let w10 = (1.0 - wx) * wy
        let w11 = wx * wy
        
        return toOriginal(sum(
            sum(product(toSummable(v00), w00), product(toSummable(v01), w01)),
            sum(product(toSummable(v10), w10), product(toSummable(v11), w11))
        ))
    }
    
    internal func _transformed<Summable>(
        width: Int,
        height: Int,
        toSummable: (Pixel) -> Summable,
        product: (Summable, Float) -> Summable,
        sum: (Summable, Summable) -> Summable,
        toOriginal: (Summable) -> Pixel,
        transform: (Float, Float) -> (Float, Float)
    ) -> Image<Pixel> {
        guard width >= 0 else { fatalError("`width` must be greater than or equal to 0: \(width)") }
        guard height >= 0 else { fatalError("`width` must be greater than or equal to 0: \(height)") }
        
        var pixels: [Pixel] = []
        pixels.reserveCapacity(width * height)
        for y in 0..<height {
            for x in 0..<width {
                let transformed = transform(Float(x), Float(y))
                pixels.append(_interpolate(x: transformed.0, y: transformed.1, toSummable: toSummable, product: product, sum: sum, toOriginal: toOriginal))
            }
        }
        
        return Image<Pixel>(width: width, height: height, pixels: pixels)
    }
}

#if os(iOS) || os(OSX) || os(watchOS) || os(tvOS)

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
    
extension Image { // Gray
    internal static func drawnPixels<Pixel>(
        width: Int,
        height: Int,
        defaultPixel: Pixel,
        colorSpace: CGColorSpace,
        bitmapInfo: CGBitmapInfo,
        setUp: (CGContext) -> ()
    ) -> [Pixel] {
        assert(width >= 0)
        assert(height >= 0)
        
        let bytesPerComponent = MemoryLayout<Pixel>.size

        let count = width * height
        var pixels = [Pixel](repeating: defaultPixel, count: count)
        
        let context  = CGContext(
            data: &pixels,
            width: width,
            height: height,
            bitsPerComponent: bytesPerComponent * 8,
            bytesPerRow: bytesPerComponent * width,
            space: colorSpace,
            bitmapInfo: bitmapInfo.rawValue
        )!
        context.clear(CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))
        setUp(context)
        
        return pixels
    }
    
    internal static func generatedCGImage<Pixel>(
        image: Image<Pixel>,
        colorSpace: CGColorSpace,
        bitmapInfo: CGBitmapInfo
    ) -> CGImage {
        let bytesPerPixel = MemoryLayout<Pixel>.size
        let length = image.count * bytesPerPixel

        let provider: CGDataProvider = CGDataProvider(data: Data(
            bytes: UnsafeMutableRawPointer(mutating: image.pixels),
            count: length
        ) as CFData)!
        
        return CGImage(
            width: image.width,
            height: image.height,
            bitsPerComponent: bytesPerPixel * 8,
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
    
#endif
