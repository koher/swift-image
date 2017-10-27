#if os(iOS) || os(OSX) || os(watchOS) || os(tvOS)
    import CoreGraphics
    import Foundation
    
    extension Image where Pixel == RGBA<UInt8> { // Initializers
        public init(cgImage: CGImage) {
            let width = cgImage.width
            let height = cgImage.height
            
            self.init(width: width, height: height, setUp: { context in
                let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
                context.draw(cgImage, in: rect)
            })
        }
        
        fileprivate init(width: Int, height: Int, setUp: (CGContext) -> ()) {
            assert(width >= 0)
            assert(height >= 0)
            
            let count = width * height
            let defaultPixel = RGBA<UInt8>.transparent
            var pixels = [RGBA](repeating: defaultPixel, count: count)
            
            let context  = CGContext(data: &pixels, width: width, height: height, bitsPerComponent: 8, bytesPerRow: width * 4, space: Image.colorSpace, bitmapInfo: Image.bitmapInfo.rawValue)!
            context.clear(CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))
            setUp(context)
            
            for i in 0..<count {
                let pixel = pixels[i]
                if pixel.alpha == 0 {
                    pixels[i] = defaultPixel
                } else {
                    pixels[i] = RGBA(red: UInt8(255 * Int(pixel.red) / Int(pixel.alpha)), green: UInt8(255 * Int(pixel.green) / Int(pixel.alpha)), blue: UInt8(255 * Int(pixel.blue) / Int(pixel.alpha)), alpha: pixel.alpha)
                }
            }
            
            self.init(width: width, height: height, pixels: pixels)
        }
    }
    
    extension Image where Pixel == UInt8 { // Initializers
        public init(cgImage: CGImage) {
            let width = cgImage.width
            let height = cgImage.height
            
            self.init(width: width, height: height, setUp: { context in
                let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
                context.draw(cgImage, in: rect)
            })
        }
        
        fileprivate init(width: Int, height: Int, setUp: (CGContext) -> ()) {
            assert(width >= 0)
            assert(height >= 0)

            let count = width * height
            var pixels = [UInt8](repeating: 0, count: count)
            
            let context  = CGContext(data: &pixels, width: width, height: height, bitsPerComponent: 8, bytesPerRow: width, space: Image.colorSpace, bitmapInfo: Image.bitmapInfo.rawValue)!
            context.clear(CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))
            setUp(context)
            
            let ps: [Pixel] = [Pixel](UnsafeBufferPointer<Pixel>(start: UnsafeMutablePointer<UInt8>(mutating: pixels)!.withMemoryRebound(to: Pixel.self, capacity: pixels.count) { $0 }, count: pixels.count))
            
            self.init(width: width, height: height, pixels: ps)
        }
    }
    
    extension Image where Pixel == Float { // Initializers
        public init(cgImage: CGImage) {
            let width = cgImage.width
            let height = cgImage.height
            
            self.init(width: width, height: height, setUp: { context in
                let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
                context.draw(cgImage, in: rect)
            })
        }
        
        fileprivate init(width: Int, height: Int, setUp: (CGContext) -> ()) {
            assert(width >= 0)
            assert(height >= 0)

            let count = width * height
            var pixels = [UInt8](repeating: 0, count: count)
            
            let context  = CGContext(data: &pixels, width: width, height: height, bitsPerComponent: 8, bytesPerRow: width, space: Image.colorSpace, bitmapInfo: Image.bitmapInfo.rawValue)!
            context.clear(CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))
            setUp(context)
            
            let ps: [Pixel] = [Pixel](UnsafeBufferPointer<Pixel>(start: UnsafeMutablePointer<Float>(mutating: pixels.map { Float($0) / 255.0 })!.withMemoryRebound(to: Pixel.self, capacity: pixels.count) { $0 }, count: pixels.count))
            
            self.init(width: width, height: height, pixels: ps)
        }
    }
    
    extension Image where Pixel == RGBA<UInt8> { // Conversion
        public var cgImage: CGImage {
            let length = count * 4
            
            var data = Data(count: length)
            data.withUnsafeMutableBytes { (bytes: UnsafeMutablePointer<UInt8>) -> Void in
                var pointer = bytes
                for pixel in pixels {
                    let alphaInt = Int(pixel.alpha)
                    pointer.pointee = UInt8(pixel.redInt * alphaInt / 255)
                    pointer += 1
                    pointer.pointee = UInt8(pixel.greenInt * alphaInt / 255)
                    pointer += 1
                    pointer.pointee = UInt8(pixel.blueInt * alphaInt / 255)
                    pointer += 1
                    pointer.pointee = pixel.alpha
                    pointer += 1
                }
            }
            let provider: CGDataProvider = CGDataProvider(data: data as CFData)!
            
            return CGImage(width: width, height: height, bitsPerComponent: 8, bitsPerPixel: 32, bytesPerRow: width * 4, space: Image.colorSpace, bitmapInfo: Image.bitmapInfo, provider: provider, decode: nil, shouldInterpolate: false, intent: CGColorRenderingIntent.defaultIntent)!
        }
        
        fileprivate static var colorSpace: CGColorSpace {
            return CGColorSpaceCreateDeviceRGB()
        }
        
        fileprivate static var bitmapInfo: CGBitmapInfo {
            return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
        }
    }
    
    
    extension Image where Pixel == UInt8 { // Conversion
        public var cgImage: CGImage {
            let provider: CGDataProvider = CGDataProvider(data: Data(bytes: UnsafeMutableRawPointer(mutating: pixels), count: count) as CFData)!
            
            return CGImage(width: width, height: height, bitsPerComponent: 8, bitsPerPixel: 8, bytesPerRow: width, space: Image.colorSpace, bitmapInfo: Image.bitmapInfo, provider: provider, decode: nil, shouldInterpolate: false, intent: CGColorRenderingIntent.defaultIntent)!
        }
        
        fileprivate static var colorSpace: CGColorSpace {
            return CGColorSpaceCreateDeviceGray()
        }
        
        fileprivate static var bitmapInfo: CGBitmapInfo {
            return CGBitmapInfo()
        }
    }
    
    extension Image where Pixel == Float { // Conversion
        public var cgImage: CGImage {
            return (map { UInt8(clamp($0, lower: 0.0, upper: 1.0) * 255.0) }).cgImage
        }
        
        fileprivate static var colorSpace: CGColorSpace {
            return CGColorSpaceCreateDeviceGray()
        }
        
        fileprivate static var bitmapInfo: CGBitmapInfo {
            return CGBitmapInfo()
        }
    }
    
    extension Image where Pixel == RGBA<UInt8> { // Resizing
        public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
            return resizedTo(width: width, height: height, interpolationQuality: CGInterpolationQuality.default)
        }
        
        public func resizedTo(width: Int, height: Int, interpolationQuality: CGInterpolationQuality) -> Image<Pixel> {
            return Image(width: width, height: height) { context in
                context.interpolationQuality = interpolationQuality
                context.draw(self.cgImage, in: CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))
            }
        }
    }
    
    extension Image where Pixel == UInt8 { // Resizing
        public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
            return resizedTo(width: width, height: height, interpolationQuality: CGInterpolationQuality.default)
        }
        
        public func resizedTo(width: Int, height: Int, interpolationQuality: CGInterpolationQuality) -> Image<Pixel> {
            return Image(width: width, height: height) { context in
                context.interpolationQuality = interpolationQuality
                context.draw(self.cgImage, in: CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))
            }
        }
    }
    
    extension Image where Pixel == Float { // Resizing
        public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
            return resizedTo(width: width, height: height, interpolationQuality: CGInterpolationQuality.default)
        }
        
        public func resizedTo(width: Int, height: Int, interpolationQuality: CGInterpolationQuality) -> Image<Pixel> {
            return Image(width: width, height: height) { context in
                context.interpolationQuality = interpolationQuality
                context.draw(self.cgImage, in: CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))
            }
        }
    }
#endif
