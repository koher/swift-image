import CoreGraphics

extension Image where Pixel: RGBAType { // Initializers
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    fileprivate init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let safeWidth = Swift.max(width, 0)
        let safeHeight = Swift.max(height, 0)
        
        let count = safeWidth * safeHeight
        let defaultPixel = RGBA.transparent
        var pixels = [RGBA](repeating: defaultPixel, count: count)
        
        let context  = CGContext(data: &pixels, width: safeWidth, height: safeHeight, bitsPerComponent: 8, bytesPerRow: safeWidth * 4, space: Image.colorSpace, bitmapInfo: Image.bitmapInfo.rawValue)!
        context.clear(CGRect(x: 0.0, y: 0.0, width: CGFloat(safeWidth), height: CGFloat(safeHeight)))
        setUp(context)
        
        for i in 0..<count {
            let pixel = pixels[i]
            if pixel.alpha == 0 {
                pixels[i] = defaultPixel
            } else {
                pixels[i] = RGBA(red: UInt8(255 * Int(pixel.red) / Int(pixel.alpha)), green: UInt8(255 * Int(pixel.green) / Int(pixel.alpha)), blue: UInt8(255 * Int(pixel.blue) / Int(pixel.alpha)), alpha: pixel.alpha)
            }
        }

        let ps: [Pixel] = [Pixel](UnsafeBufferPointer<Pixel>(start: UnsafeMutablePointer<RGBA>(mutating: pixels)!.withMemoryRebound(to: Pixel.self, capacity: pixels.count) { $0 }, count: pixels.count))
        
        self.init(width: safeWidth, height: safeHeight, pixels: ps)
    }
}

extension Image where Pixel: UInt8Type { // Initializers
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    fileprivate init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let safeWidth = Swift.max(width, 0)
        let safeHeight = Swift.max(height, 0)
        
        let count = safeWidth * safeHeight
        var pixels = [UInt8](repeating: 0, count: count)
        
        let context  = CGContext(data: &pixels, width: safeWidth, height: safeHeight, bitsPerComponent: 8, bytesPerRow: safeWidth, space: Image.colorSpace, bitmapInfo: Image.bitmapInfo.rawValue)!
        context.clear(CGRect(x: 0.0, y: 0.0, width: CGFloat(safeWidth), height: CGFloat(safeHeight)))
        setUp(context)
        
        let ps: [Pixel] = [Pixel](UnsafeBufferPointer<Pixel>(start: UnsafeMutablePointer<UInt8>(mutating: pixels)!.withMemoryRebound(to: Pixel.self, capacity: pixels.count) { $0 }, count: pixels.count))
        
        self.init(width: safeWidth, height: safeHeight, pixels: ps)
    }
}

extension Image where Pixel: FloatType { // Initializers
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    fileprivate init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let safeWidth = Swift.max(width, 0)
        let safeHeight = Swift.max(height, 0)
        
        let count = safeWidth * safeHeight
        var pixels = [UInt8](repeating: 0, count: count)
        
        let context  = CGContext(data: &pixels, width: safeWidth, height: safeHeight, bitsPerComponent: 8, bytesPerRow: safeWidth, space: Image.colorSpace, bitmapInfo: Image.bitmapInfo.rawValue)!
        context.clear(CGRect(x: 0.0, y: 0.0, width: CGFloat(safeWidth), height: CGFloat(safeHeight)))
        setUp(context)

        let ps: [Pixel] = [Pixel](UnsafeBufferPointer<Pixel>(start: UnsafeMutablePointer<Float>(mutating: pixels.map { Float($0) / 255.0 })!.withMemoryRebound(to: Pixel.self, capacity: pixels.count) { $0 }, count: pixels.count))

        self.init(width: safeWidth, height: safeHeight, pixels: ps)
    }
}

extension Image where Pixel: RGBAType { // Conversion
    public var cgImage: CGImage {
        let zelf = self as! Image<RGBA>
        
        let length = count * 4
        let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: length)
        var pointer = buffer
        for pixel in zelf.pixels {
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
        
        let provider: CGDataProvider = CGDataProvider(data: Data(bytes: UnsafePointer<UInt8>(buffer), count: length) as CFData)!
        
        return CGImage(width: width, height: height, bitsPerComponent: 8, bitsPerPixel: 32, bytesPerRow: width * 4, space: Image.colorSpace, bitmapInfo: Image.bitmapInfo, provider: provider, decode: nil, shouldInterpolate: false, intent: CGColorRenderingIntent.defaultIntent)!
    }
    
    fileprivate static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }
    
    fileprivate static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
    }
}


extension Image where Pixel: UInt8Type { // Conversion
    public var cgImage: CGImage {
        let zelf = self as! Image<UInt8>
        
        let provider: CGDataProvider = CGDataProvider(data: NSData(bytesNoCopy: UnsafeMutableRawPointer(mutating: zelf.pixels), length: count))!
        
        return CGImage(width: width, height: height, bitsPerComponent: 8, bitsPerPixel: 8, bytesPerRow: width, space: Image.colorSpace, bitmapInfo: Image.bitmapInfo, provider: provider, decode: nil, shouldInterpolate: false, intent: CGColorRenderingIntent.defaultIntent)!
    }
    
    fileprivate static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceGray()
    }
    
    fileprivate static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo()
    }
}

extension Image where Pixel: FloatType { // Conversion
    public var cgImage: CGImage {
        let zelf = self as! Image<Float>
        
        return (zelf.map { UInt8(Swift.min(Swift.max($0, 0.0), 1.0) * 255.0) }).cgImage
    }
    
    fileprivate static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceGray()
    }
    
    fileprivate static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo()
    }
}

extension Image where Pixel: RGBAType { // Resizing
    public func resize(width: Int, height: Int) -> Image<Pixel> {
        return resize(width: width, height: height, interpolationQuality: CGInterpolationQuality.default)
    }
    
    public func resize(width: Int, height: Int, interpolationQuality: CGInterpolationQuality) -> Image<Pixel> {
        return Image(width: width, height: height) { context in
            context.interpolationQuality = interpolationQuality
            context.draw(self.cgImage, in: CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))
        }
    }
}

extension Image where Pixel: UInt8Type { // Resizing
    public func resize(width: Int, height: Int) -> Image<Pixel> {
        return resize(width: width, height: height, interpolationQuality: CGInterpolationQuality.default)
    }
    
    public func resize(width: Int, height: Int, interpolationQuality: CGInterpolationQuality) -> Image<Pixel> {
        return Image(width: width, height: height) { context in
            context.interpolationQuality = interpolationQuality
            context.draw(self.cgImage, in: CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))
        }
    }
}

extension Image where Pixel: FloatType { // Resizing
    public func resize(width: Int, height: Int) -> Image<Pixel> {
        return resize(width: width, height: height, interpolationQuality: CGInterpolationQuality.default)
    }
    
    public func resize(width: Int, height: Int, interpolationQuality: CGInterpolationQuality) -> Image<Pixel> {
        return Image(width: width, height: height) { context in
            context.interpolationQuality = interpolationQuality
            context.draw(self.cgImage, in: CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))
        }
    }
}

