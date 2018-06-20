#if canImport(CoreGraphics)
import CoreGraphics
import Foundation

public enum CGContextCoordinates {
    case original
    case natural
}

extension Image where Pixel == RGBA<UInt8> {
    private static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }
    
    private static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [RGBA<UInt8>] = Image<RGBA<UInt8>>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: .transparent,
            colorSpace: Image<RGBA<UInt8>>.colorSpace,
            bitmapInfo: Image<RGBA<UInt8>>.bitmapInfo,
            minValue: .min,
            maxValue: .max,
            isEqual: ==,
            toSummable: Int.init,
            product: (*) as (Int, Int) -> Int,
            quotient: (/) as (Int, Int) -> Int,
            toOriginal: UInt8.init,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels)
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return Image.generatedCGImage(
            image: self,
            colorSpace: Image<RGBA<UInt8>>.colorSpace,
            bitmapInfo: Image<RGBA<UInt8>>.bitmapInfo,
            maxValue: .max,
            toSummable: Int.init,
            product: (*) as (Int, Int) -> Int,
            quotient: (/) as (Int, Int) -> Int,
            toOriginal: UInt8.init
        )
    }
}

extension Image where Pixel == RGBA<UInt16> {
    private static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }
    
    private static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [RGBA<UInt16>] = Image<RGBA<UInt16>>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: .transparent,
            colorSpace: Image<RGBA<UInt16>>.colorSpace,
            bitmapInfo: Image<RGBA<UInt16>>.bitmapInfo,
            minValue: .min,
            maxValue: .max,
            isEqual: ==,
            toSummable: Int.init,
            product: (*) as (Int, Int) -> Int,
            quotient: (/) as (Int, Int) -> Int,
            toOriginal: UInt16.init,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels)
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return Image.generatedCGImage(
            image: self,
            colorSpace: Image<RGBA<UInt16>>.colorSpace,
            bitmapInfo: Image<RGBA<UInt16>>.bitmapInfo,
            maxValue: .max,
            toSummable: Int.init,
            product: (*) as (Int, Int) -> Int,
            quotient: (/) as (Int, Int) -> Int,
            toOriginal: UInt16.init
        )
    }
}

extension Image where Pixel == RGBA<UInt32> {
    private static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }
    
    private static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [RGBA<UInt32>] = Image<RGBA<UInt32>>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: .transparent,
            colorSpace: Image<RGBA<UInt32>>.colorSpace,
            bitmapInfo: Image<RGBA<UInt32>>.bitmapInfo,
            minValue: .min,
            maxValue: .max,
            isEqual: ==,
            toSummable: Int64.init,
            product: (*) as (Int64, Int64) -> Int64,
            quotient: (/) as (Int64, Int64) -> Int64,
            toOriginal: UInt32.init,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels)
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return Image.generatedCGImage(
            image: self,
            colorSpace: Image<RGBA<UInt32>>.colorSpace,
            bitmapInfo: Image<RGBA<UInt32>>.bitmapInfo,
            maxValue: .max,
            toSummable: Int64.init,
            product: (*) as (Int64, Int64) -> Int64,
            quotient: (/) as (Int64, Int64) -> Int64,
            toOriginal: UInt32.init
        )
    }
}

extension Image where Pixel == RGBA<Float> {
    private static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }
    
    private static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [RGBA<UInt8>] = Image<RGBA<UInt8>>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: .transparent,
            colorSpace: Image<RGBA<UInt8>>.colorSpace,
            bitmapInfo: Image<RGBA<UInt8>>.bitmapInfo,
            minValue: .min,
            maxValue: .max,
            isEqual: ==,
            toSummable: Int.init,
            product: (*) as (Int, Int) -> Int,
            quotient: (/) as (Int, Int) -> Int,
            toOriginal: UInt8.init,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels.map { $0.map { Float($0) / 255 } })
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return map { $0.map { UInt8(clamp($0, lower: 0.0, upper: 1.0) * 255) } }.cgImage
    }
}

extension Image where Pixel == RGBA<Double> {
    private static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }
    
    private static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [RGBA<UInt8>] = Image<RGBA<UInt8>>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: .transparent,
            colorSpace: Image<RGBA<UInt8>>.colorSpace,
            bitmapInfo: Image<RGBA<UInt8>>.bitmapInfo,
            minValue: .min,
            maxValue: .max,
            isEqual: ==,
            toSummable: Int.init,
            product: (*) as (Int, Int) -> Int,
            quotient: (/) as (Int, Int) -> Int,
            toOriginal: UInt8.init,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels.map { $0.map { Double($0) / 255 } })
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return map { $0.map { UInt8(clamp($0, lower: 0.0, upper: 1.0) * 255) } }.cgImage
    }
}

extension Image where Pixel == RGBA<Bool> {
    private static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }
    
    private static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [RGBA<UInt8>] = Image<RGBA<UInt8>>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: .transparent,
            colorSpace: Image<RGBA<UInt8>>.colorSpace,
            bitmapInfo: Image<RGBA<UInt8>>.bitmapInfo,
            minValue: .min,
            maxValue: .max,
            isEqual: ==,
            toSummable: Int.init,
            product: (*) as (Int, Int) -> Int,
            quotient: (/) as (Int, Int) -> Int,
            toOriginal: UInt8.init,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels.map { $0.map { $0 >= 128 } })
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return map { $0.map { $0 ? (255 as UInt8) : (0 as UInt8) } }.cgImage
    }
}

extension Image where Pixel == PremultipliedRGBA<UInt8> {
    fileprivate static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }
    
    fileprivate static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [PremultipliedRGBA<UInt8>] = Image<PremultipliedRGBA<UInt8>>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 0),
            colorSpace: Image<PremultipliedRGBA<UInt8>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt8>>.bitmapInfo,
            componentType: UInt8.self,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels)
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return Image.generatedCGImage(
            image: self,
            colorSpace: Image<PremultipliedRGBA<UInt8>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt8>>.bitmapInfo,
            componentType: UInt8.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try Image.withGeneratedCGImage(
            image: self,
            colorSpace: Image<PremultipliedRGBA<UInt8>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt8>>.bitmapInfo,
            body: body,
            componentType: UInt8.self
        )
    }

    public mutating func withCGContext(coordinates: CGContextCoordinates = .natural, _ body: (CGContext) throws -> Void) rethrows {
        let width = self.width
        let height = self.height

        precondition(width >= 0)
        precondition(height >= 0)

        let context  = CGContext(
            data: &pixels,
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<UInt8>.size * 8,
            bytesPerRow: MemoryLayout<PremultipliedRGBA<UInt8>>.size * width,
            space: Image<PremultipliedRGBA<UInt8>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt8>>.bitmapInfo.rawValue
        )!
        switch coordinates {
        case .original:
            break
        case .natural:
            context.scaleBy(x: 1, y: -1)
            context.translateBy(x: 0.5, y: 0.5 - CGFloat(height))
        }

        try body(context)
    }
}

extension Image where Pixel == PremultipliedRGBA<UInt16> {
    fileprivate static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }
    
    fileprivate static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [PremultipliedRGBA<UInt16>] = Image<PremultipliedRGBA<UInt16>>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: PremultipliedRGBA<UInt16>(red: 0, green: 0, blue: 0, alpha: 0),
            colorSpace: Image<PremultipliedRGBA<UInt16>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt16>>.bitmapInfo,
            componentType: UInt16.self,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels)
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return Image.generatedCGImage(
            image: self,
            colorSpace: Image<PremultipliedRGBA<UInt16>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt16>>.bitmapInfo,
            componentType: UInt16.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try Image.withGeneratedCGImage(
            image: self,
            colorSpace: Image<PremultipliedRGBA<UInt16>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt16>>.bitmapInfo,
            body: body,
            componentType: UInt16.self
        )
    }

    public mutating func withCGContext(coordinates: CGContextCoordinates = .natural, _ body: (CGContext) throws -> Void) rethrows {
        let width = self.width
        let height = self.height

        precondition(width >= 0)
        precondition(height >= 0)

        let context  = CGContext(
            data: &pixels,
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<UInt16>.size * 8,
            bytesPerRow: MemoryLayout<PremultipliedRGBA<UInt16>>.size * width,
            space: Image<PremultipliedRGBA<UInt16>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt16>>.bitmapInfo.rawValue
        )!
        switch coordinates {
        case .original:
            break
        case .natural:
            context.scaleBy(x: 1, y: -1)
            context.translateBy(x: 0.5, y: 0.5 - CGFloat(height))
        }

        try body(context)
    }
}

extension Image where Pixel == PremultipliedRGBA<UInt32> {
    fileprivate static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }
    
    fileprivate static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [PremultipliedRGBA<UInt32>] = Image<PremultipliedRGBA<UInt32>>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: PremultipliedRGBA<UInt32>(red: 0, green: 0, blue: 0, alpha: 0),
            colorSpace: Image<PremultipliedRGBA<UInt32>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt32>>.bitmapInfo,
            componentType: UInt32.self,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels)
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return Image.generatedCGImage(
            image: self,
            colorSpace: Image<PremultipliedRGBA<UInt32>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt32>>.bitmapInfo,
            componentType: UInt32.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try Image.withGeneratedCGImage(
            image: self,
            colorSpace: Image<PremultipliedRGBA<UInt32>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt32>>.bitmapInfo,
            body: body,
            componentType: UInt32.self
        )
    }

    public mutating func withCGContext(coordinates: CGContextCoordinates = .natural, _ body: (CGContext) throws -> Void) rethrows {
        let width = self.width
        let height = self.height

        precondition(width >= 0)
        precondition(height >= 0)

        let context  = CGContext(
            data: &pixels,
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<UInt32>.size * 8,
            bytesPerRow: MemoryLayout<PremultipliedRGBA<UInt32>>.size * width,
            space: Image<PremultipliedRGBA<UInt32>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt32>>.bitmapInfo.rawValue
        )!
        switch coordinates {
        case .original:
            break
        case .natural:
            context.scaleBy(x: 1, y: -1)
            context.translateBy(x: 0.5, y: 0.5 - CGFloat(height))
        }

        try body(context)
    }
}

extension Image where Pixel == PremultipliedRGBA<Float> {
    private static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }
    
    private static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [PremultipliedRGBA<UInt8>] = Image<PremultipliedRGBA<UInt8>>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 0),
            colorSpace: Image<PremultipliedRGBA<UInt8>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt8>>.bitmapInfo,
            componentType: UInt8.self,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels.map { $0.map { Float($0) / 255 } })
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return map { $0.map { UInt8(clamp($0, lower: 0.0, upper: 1.0) * 255) } }.cgImage
    }
}

extension Image where Pixel == PremultipliedRGBA<Double> {
    private static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }
    
    private static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [PremultipliedRGBA<UInt8>] = Image<PremultipliedRGBA<UInt8>>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 0),
            colorSpace: Image<PremultipliedRGBA<UInt8>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt8>>.bitmapInfo,
            componentType: UInt8.self,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels.map { $0.map { Double($0) / 255 } })
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return map { $0.map { UInt8(clamp($0, lower: 0.0, upper: 1.0) * 255) } }.cgImage
    }
}

extension Image where Pixel == UInt8 {
    fileprivate static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceGray()
    }
    
    fileprivate static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo()
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [UInt8] = Image<UInt8>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: 0,
            colorSpace: Image<UInt8>.colorSpace,
            bitmapInfo: Image<UInt8>.bitmapInfo,
            componentType: UInt8.self,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels)
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return Image.generatedCGImage(
            image: self,
            colorSpace: Image<UInt8>.colorSpace,
            bitmapInfo: Image<UInt8>.bitmapInfo,
            componentType: UInt8.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try Image.withGeneratedCGImage(
            image: self,
            colorSpace: Image<UInt8>.colorSpace,
            bitmapInfo: Image<UInt8>.bitmapInfo,
            body: body,
            componentType: UInt8.self
        )
    }

    public mutating func withCGContext(coordinates: CGContextCoordinates = .natural, _ body: (CGContext) throws -> Void) rethrows {
        let width = self.width
        let height = self.height

        precondition(width >= 0)
        precondition(height >= 0)

        let context  = CGContext(
            data: &pixels,
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<UInt8>.size * 8,
            bytesPerRow: MemoryLayout<UInt8>.size * width,
            space: Image<UInt8>.colorSpace,
            bitmapInfo: Image<UInt8>.bitmapInfo.rawValue
        )!
        switch coordinates {
        case .original:
            break
        case .natural:
            context.scaleBy(x: 1, y: -1)
            context.translateBy(x: 0.5, y: 0.5 - CGFloat(height))
        }

        try body(context)
    }
}

extension Image where Pixel == UInt16 {
    fileprivate static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceGray()
    }
    
    fileprivate static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo()
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [UInt16] = Image<UInt16>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: 0,
            colorSpace: Image<UInt16>.colorSpace,
            bitmapInfo: Image<UInt16>.bitmapInfo,
            componentType: UInt16.self,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels)
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return Image.generatedCGImage(
            image: self,
            colorSpace: Image<UInt16>.colorSpace,
            bitmapInfo: Image<UInt16>.bitmapInfo,
            componentType: UInt16.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try Image.withGeneratedCGImage(
            image: self,
            colorSpace: Image<UInt16>.colorSpace,
            bitmapInfo: Image<UInt16>.bitmapInfo,
            body: body,
            componentType: UInt16.self
        )
    }

    public mutating func withCGContext(coordinates: CGContextCoordinates = .natural, _ body: (CGContext) throws -> Void) rethrows {
        let width = self.width
        let height = self.height

        precondition(width >= 0)
        precondition(height >= 0)

        let context  = CGContext(
            data: &pixels,
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<UInt16>.size * 8,
            bytesPerRow: MemoryLayout<UInt16>.size * width,
            space: Image<UInt16>.colorSpace,
            bitmapInfo: Image<UInt16>.bitmapInfo.rawValue
        )!
        switch coordinates {
        case .original:
            break
        case .natural:
            context.scaleBy(x: 1, y: -1)
            context.translateBy(x: 0.5, y: 0.5 - CGFloat(height))
        }

        try body(context)
    }
}

extension Image where Pixel == UInt32 {
    fileprivate static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceGray()
    }
    
    fileprivate static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo()
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [UInt32] = Image<UInt32>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: 0,
            colorSpace: Image<UInt32>.colorSpace,
            bitmapInfo: Image<UInt32>.bitmapInfo,
            componentType: UInt32.self,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels)
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return Image.generatedCGImage(
            image: self,
            colorSpace: Image<UInt32>.colorSpace,
            bitmapInfo: Image<UInt32>.bitmapInfo,
            componentType: UInt32.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try Image.withGeneratedCGImage(
            image: self,
            colorSpace: Image<UInt32>.colorSpace,
            bitmapInfo: Image<UInt32>.bitmapInfo,
            body: body,
            componentType: UInt32.self
        )
    }

    public mutating func withCGContext(coordinates: CGContextCoordinates = .natural, _ body: (CGContext) throws -> Void) rethrows {
        let width = self.width
        let height = self.height

        precondition(width >= 0)
        precondition(height >= 0)

        let context  = CGContext(
            data: &pixels,
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<UInt32>.size * 8,
            bytesPerRow: MemoryLayout<UInt32>.size * width,
            space: Image<UInt32>.colorSpace,
            bitmapInfo: Image<UInt32>.bitmapInfo.rawValue
        )!
        switch coordinates {
        case .original:
            break
        case .natural:
            context.scaleBy(x: 1, y: -1)
            context.translateBy(x: 0.5, y: 0.5 - CGFloat(height))
        }

        try body(context)
    }
}

extension Image where Pixel == Float {
    private static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceGray()
    }
    
    private static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo()
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [UInt8] = Image<UInt8>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: 0,
            colorSpace: Image<UInt8>.colorSpace,
            bitmapInfo: Image<UInt8>.bitmapInfo,
            componentType: UInt8.self,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels.map { Float($0) / 255 })
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return map { UInt8(clamp($0, lower: 0.0, upper: 1.0) * 255) }.cgImage
    }
}

extension Image where Pixel == Double {
    private static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceGray()
    }
    
    private static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo()
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [UInt8] = Image<UInt8>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: 0,
            colorSpace: Image<UInt8>.colorSpace,
            bitmapInfo: Image<UInt8>.bitmapInfo,
            componentType: UInt8.self,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels.map { Double($0) / 255 })
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return map { UInt8(clamp($0, lower: 0.0, upper: 1.0) * 255) }.cgImage
    }
}

extension Image where Pixel == Bool {
    private static var colorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceGray()
    }
    
    private static var bitmapInfo: CGBitmapInfo {
        return CGBitmapInfo()
    }
    
    private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
        let pixels: [UInt8] = Image<UInt8>.drawnPixels(
            width: width,
            height: height,
            defaultPixel: 0,
            colorSpace: Image<UInt8>.colorSpace,
            bitmapInfo: Image<UInt8>.bitmapInfo,
            componentType: UInt8.self,
            setUp: setUp
        )
        
        self.init(width: width, height: height, pixels: pixels.map { $0 >= 128 })
    }
    
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height
        
        self.init(width: width, height: height, setUp: { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        })
    }
    
    public var cgImage: CGImage {
        return map { $0 ? 255 as UInt8 : 0 as UInt8 }.cgImage
    }
}

extension ImageSlice where Pixel == PremultipliedRGBA<UInt8> {
    public var cgImage: CGImage {
        return ImageSlice<PremultipliedRGBA<UInt8>>.generatedCGImage(
            slice: self,
            colorSpace: Image<PremultipliedRGBA<UInt8>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt8>>.bitmapInfo,
            componentType: UInt8.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try ImageSlice<PremultipliedRGBA<UInt8>>.withGeneratedCGImage(
            slice: self,
            colorSpace: Image<PremultipliedRGBA<UInt8>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt8>>.bitmapInfo,
            body: body,
            componentType: UInt8.self
        )
    }

    public mutating func withCGContext(coordinates: CGContextCoordinates = .natural, _ body: (CGContext) throws -> Void) rethrows {
        precondition(width >= 0)
        precondition(height >= 0)

        let data: UnsafeMutablePointer<PremultipliedRGBA<UInt8>> = &self.image.pixels + (yRange.lowerBound * self.image.width + xRange.lowerBound)
        let context  = CGContext(
            data: data,
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<UInt8>.size * 8,
            bytesPerRow: MemoryLayout<PremultipliedRGBA<UInt8>>.size * self.image.width,
            space: Image<PremultipliedRGBA<UInt8>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt8>>.bitmapInfo.rawValue
        )!
        switch coordinates {
        case .original:
            break
        case .natural:
            context.scaleBy(x: 1, y: -1)
            context.translateBy(x: 0.5 - CGFloat(xRange.lowerBound), y: 0.5 - CGFloat(yRange.lowerBound + height))
        }

        try body(context)
    }
}

extension ImageSlice where Pixel == PremultipliedRGBA<UInt16> {
    public var cgImage: CGImage {
        return ImageSlice<PremultipliedRGBA<UInt16>>.generatedCGImage(
            slice: self,
            colorSpace: Image<PremultipliedRGBA<UInt16>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt16>>.bitmapInfo,
            componentType: UInt16.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try ImageSlice<PremultipliedRGBA<UInt16>>.withGeneratedCGImage(
            slice: self,
            colorSpace: Image<PremultipliedRGBA<UInt16>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt16>>.bitmapInfo,
            body: body,
            componentType: UInt16.self
        )
    }

    public mutating func withCGContext(coordinates: CGContextCoordinates = .natural, _ body: (CGContext) throws -> Void) rethrows {
        precondition(width >= 0)
        precondition(height >= 0)

        let data: UnsafeMutablePointer<PremultipliedRGBA<UInt16>> = &self.image.pixels + (yRange.lowerBound * self.image.width + xRange.lowerBound)
        let context  = CGContext(
            data: data,
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<UInt16>.size * 8,
            bytesPerRow: MemoryLayout<PremultipliedRGBA<UInt16>>.size * self.image.width,
            space: Image<PremultipliedRGBA<UInt16>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt16>>.bitmapInfo.rawValue
        )!
        switch coordinates {
        case .original:
            break
        case .natural:
            context.scaleBy(x: 1, y: -1)
            context.translateBy(x: 0.5 - CGFloat(xRange.lowerBound), y: 0.5 - CGFloat(yRange.lowerBound + height))
        }

        try body(context)
    }
}

extension ImageSlice where Pixel == PremultipliedRGBA<UInt32> {
    public var cgImage: CGImage {
        return ImageSlice<PremultipliedRGBA<UInt32>>.generatedCGImage(
            slice: self,
            colorSpace: Image<PremultipliedRGBA<UInt32>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt32>>.bitmapInfo,
            componentType: UInt32.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try ImageSlice<PremultipliedRGBA<UInt32>>.withGeneratedCGImage(
            slice: self,
            colorSpace: Image<PremultipliedRGBA<UInt32>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt32>>.bitmapInfo,
            body: body,
            componentType: UInt32.self
        )
    }

    public mutating func withCGContext(coordinates: CGContextCoordinates = .natural, _ body: (CGContext) throws -> Void) rethrows {
        precondition(width >= 0)
        precondition(height >= 0)

        let data: UnsafeMutablePointer<PremultipliedRGBA<UInt32>> = &self.image.pixels + (yRange.lowerBound * self.image.width + xRange.lowerBound)
        let context  = CGContext(
            data: data,
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<UInt32>.size * 8,
            bytesPerRow: MemoryLayout<PremultipliedRGBA<UInt32>>.size * self.image.width,
            space: Image<PremultipliedRGBA<UInt32>>.colorSpace,
            bitmapInfo: Image<PremultipliedRGBA<UInt32>>.bitmapInfo.rawValue
        )!
        switch coordinates {
        case .original:
            break
        case .natural:
            context.scaleBy(x: 1, y: -1)
            context.translateBy(x: 0.5 - CGFloat(xRange.lowerBound), y: 0.5 - CGFloat(yRange.lowerBound + height))
        }

        try body(context)
    }
}

extension ImageSlice where Pixel == UInt8 {
    public var cgImage: CGImage {
        return ImageSlice<UInt8>.generatedCGImage(
            slice: self,
            colorSpace: Image<UInt8>.colorSpace,
            bitmapInfo: Image<UInt8>.bitmapInfo,
            componentType: UInt8.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try ImageSlice<UInt8>.withGeneratedCGImage(
            slice: self,
            colorSpace: Image<UInt8>.colorSpace,
            bitmapInfo: Image<UInt8>.bitmapInfo,
            body: body,
            componentType: UInt8.self
        )
    }

    public mutating func withCGContext(coordinates: CGContextCoordinates = .natural, _ body: (CGContext) throws -> Void) rethrows {
        precondition(width >= 0)
        precondition(height >= 0)

        let data: UnsafeMutablePointer<UInt8> = &self.image.pixels + (yRange.lowerBound * self.image.width + xRange.lowerBound)
        let context  = CGContext(
            data: data,
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<UInt8>.size * 8,
            bytesPerRow: MemoryLayout<UInt8>.size * self.image.width,
            space: Image<UInt8>.colorSpace,
            bitmapInfo: Image<UInt8>.bitmapInfo.rawValue
        )!
        switch coordinates {
        case .original:
            break
        case .natural:
            context.scaleBy(x: 1, y: -1)
            context.translateBy(x: 0.5 - CGFloat(xRange.lowerBound), y: 0.5 - CGFloat(yRange.lowerBound + height))
        }

        try body(context)
    }
}

extension ImageSlice where Pixel == UInt16 {
    public var cgImage: CGImage {
        return ImageSlice<UInt16>.generatedCGImage(
            slice: self,
            colorSpace: Image<UInt16>.colorSpace,
            bitmapInfo: Image<UInt16>.bitmapInfo,
            componentType: UInt16.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try ImageSlice<UInt16>.withGeneratedCGImage(
            slice: self,
            colorSpace: Image<UInt16>.colorSpace,
            bitmapInfo: Image<UInt16>.bitmapInfo,
            body: body,
            componentType: UInt16.self
        )
    }

    public mutating func withCGContext(coordinates: CGContextCoordinates = .natural, _ body: (CGContext) throws -> Void) rethrows {
        precondition(width >= 0)
        precondition(height >= 0)

        let data: UnsafeMutablePointer<UInt16> = &self.image.pixels + (yRange.lowerBound * self.image.width + xRange.lowerBound)
        let context  = CGContext(
            data: data,
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<UInt16>.size * 8,
            bytesPerRow: MemoryLayout<UInt16>.size * self.image.width,
            space: Image<UInt16>.colorSpace,
            bitmapInfo: Image<UInt16>.bitmapInfo.rawValue
        )!
        switch coordinates {
        case .original:
            break
        case .natural:
            context.scaleBy(x: 1, y: -1)
            context.translateBy(x: 0.5 - CGFloat(xRange.lowerBound), y: 0.5 - CGFloat(yRange.lowerBound + height))
        }

        try body(context)
    }
}

extension ImageSlice where Pixel == UInt32 {
    public var cgImage: CGImage {
        return ImageSlice<UInt32>.generatedCGImage(
            slice: self,
            colorSpace: Image<UInt32>.colorSpace,
            bitmapInfo: Image<UInt32>.bitmapInfo,
            componentType: UInt32.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try ImageSlice<UInt32>.withGeneratedCGImage(
            slice: self,
            colorSpace: Image<UInt32>.colorSpace,
            bitmapInfo: Image<UInt32>.bitmapInfo,
            body: body,
            componentType: UInt32.self
        )
    }

    public mutating func withCGContext(coordinates: CGContextCoordinates = .natural, _ body: (CGContext) throws -> Void) rethrows {
        precondition(width >= 0)
        precondition(height >= 0)

        let data: UnsafeMutablePointer<UInt32> = &self.image.pixels + (yRange.lowerBound * self.image.width + xRange.lowerBound)
        let context  = CGContext(
            data: data,
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<UInt32>.size * 8,
            bytesPerRow: MemoryLayout<UInt32>.size * self.image.width,
            space: Image<UInt32>.colorSpace,
            bitmapInfo: Image<UInt32>.bitmapInfo.rawValue
        )!
        switch coordinates {
        case .original:
            break
        case .natural:
            context.scaleBy(x: 1, y: -1)
            context.translateBy(x: 0.5 - CGFloat(xRange.lowerBound), y: 0.5 - CGFloat(yRange.lowerBound + height))
        }

        try body(context)
    }
}
#endif
