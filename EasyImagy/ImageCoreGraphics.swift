import CoreGraphics

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

extension Image where Pixel: RGBAType {
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
