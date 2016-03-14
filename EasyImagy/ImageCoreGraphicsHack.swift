import CoreGraphics

extension Image where Pixel: UInt8Type { // Conversion
    public var cgImage: CGImageRef {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        
        let provider: CGDataProvider = CGDataProviderCreateWithCFData(NSData(bytes: UnsafeMutablePointer<Void>(zelf.pixels), length: count))!
        
        return CGImageCreate(width, height, 8, 8, width, Image.colorSpace, Image.bitmapInfo, provider, nil, false, CGColorRenderingIntent.RenderingIntentDefault)!
    }

    private static var colorSpace: CGColorSpaceRef {
        return CGColorSpaceCreateDeviceGray()!
    }
    
    private static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo.ByteOrderDefault
    }
}

extension Image where Pixel: FloatType { // Conversion
    public var cgImage: CGImageRef {
        guard let zelf = self as? Image<Float> else { fatalError() }

        return (zelf.map { UInt8(min(max($0, 0.0), 1.0) * 255.0) }).cgImage
    }
    
    private static var colorSpace: CGColorSpaceRef {
        return CGColorSpaceCreateDeviceGray()!
    }
    
    private static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo.ByteOrderDefault
    }
}

