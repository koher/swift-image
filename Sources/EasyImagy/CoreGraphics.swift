#if canImport(CoreGraphics)
import CoreGraphics

public enum CGContextCoordinates {
    case original
    case natural
}

public protocol _CGGrayScale {}
public protocol _CGRGBA {}

extension _CGGrayScale {
    public static var _ez_cgColorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceGray()
    }

    public static var _ez_cgBitmapInfo: CGBitmapInfo {
        return CGBitmapInfo()
    }
}

extension _CGRGBA {
    public static var _ez_cgColorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }

    public static var _ez_cgBitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
    }
}

extension UInt8: _CGGrayScale {}
extension UInt16: _CGGrayScale {}
extension Float: _CGGrayScale {}
extension Double: _CGGrayScale {}
extension Bool: _CGGrayScale {}
extension RGBA: _CGRGBA {}
extension PremultipliedRGBA: _CGRGBA {}

public protocol _CGChannel {
    associatedtype _EZ_DirectChannel: _CGDirectChannel, Numeric

    init(_ez_directChannel: _EZ_DirectChannel)

    static func _ez_rgba(from: PremultipliedRGBA<_EZ_DirectChannel>) -> RGBA<Self>
}

public protocol _CGDirectChannel: _CGChannel where _EZ_DirectChannel == Self {
    static var _ez_cgChannelDefault: Self { get }
}

extension _CGDirectChannel {
    public init(_ez_directChannel directChannel: _EZ_DirectChannel) {
        self = directChannel
    }
}

extension UInt8: _CGDirectChannel {
    public typealias _EZ_DirectChannel = UInt8

    public static func _ez_rgba(from premultipliedRGBA: PremultipliedRGBA<UInt8>) -> RGBA<UInt8> {
        return RGBA<UInt8>(premultipliedRGBA)
    }

    public static var _ez_cgChannelDefault: UInt8 { return 0 }
}

extension UInt16: _CGDirectChannel {
    public typealias _EZ_DirectChannel = UInt16

    public static func _ez_rgba(from premultipliedRGBA: PremultipliedRGBA<UInt16>) -> RGBA<UInt16> {
        return RGBA<UInt16>(premultipliedRGBA)
    }

    public static var _ez_cgChannelDefault: UInt16 { return 0 }
}

extension Float: _CGChannel {
    public typealias _EZ_DirectChannel = UInt8

    public init(_ez_directChannel directChannel: UInt8) {
        self = Float(directChannel) / 255
    }

    public static func _ez_rgba(from premultipliedRGBA: PremultipliedRGBA<UInt8>) -> RGBA<Float> {
        return RGBA<Float>(premultipliedRGBA.map(Float.init(_ez_directChannel:)))
    }
}

extension Double: _CGChannel {
    public typealias _EZ_DirectChannel = UInt8

    public init(_ez_directChannel directChannel: UInt8) {
        self = Double(directChannel) / 255
    }

    public static func _ez_rgba(from premultipliedRGBA: PremultipliedRGBA<UInt8>) -> RGBA<Double> {
        return RGBA<Double>(premultipliedRGBA.map(Double.init(_ez_directChannel:)))
    }
}

extension Bool: _CGChannel {
    public typealias _EZ_DirectChannel = UInt8

    public init(_ez_directChannel directChannel: UInt8) {
        self = directChannel >= 128
    }

    public static func _ez_rgba(from premultipliedRGBA: PremultipliedRGBA<UInt8>) -> RGBA<Bool> {
        return RGBA<UInt8>(premultipliedRGBA).map(Bool.init(_ez_directChannel:))
    }
}

public protocol _CGPixel {
    associatedtype _EZ_DirectPixel: _CGDirectPixel
    associatedtype _EZ_PixelDirectChannel: _CGDirectChannel

    init(_ez_directPixel: _EZ_DirectPixel)

    static var _ez_cgColorSpace: CGColorSpace { get }
    static var _ez_cgBitmapInfo: CGBitmapInfo { get }
}

public protocol _CGDirectPixel: _CGPixel where _EZ_DirectPixel == Self {
    static var _ez_cgPixelDefault: Self { get }
}

extension _CGDirectPixel {
    public init(_ez_directPixel directPixel: _EZ_DirectPixel) {
        self = directPixel
    }
}

extension UInt8: _CGDirectPixel {
    public typealias _EZ_DirectPixel = UInt8
    public typealias _EZ_PixelDirectChannel = UInt8
    public static var _ez_cgPixelDefault: UInt8 {
        return 0
    }
}

extension UInt16: _CGDirectPixel {
    public typealias _EZ_DirectPixel = UInt16
    public typealias _EZ_PixelDirectChannel = UInt16
    public static var _ez_cgPixelDefault: UInt16 {
        return 0
    }
}

extension Float: _CGPixel {
    public typealias _EZ_DirectPixel = UInt8
    public typealias _EZ_PixelDirectChannel = UInt8

    public init(_ez_directPixel directPixel: UInt8) {
        self = Float(directPixel) / 255
    }
}

extension Double: _CGPixel {
    public typealias _EZ_DirectPixel = UInt8
    public typealias _EZ_PixelDirectChannel = UInt8

    public init(_ez_directPixel directPixel: UInt8) {
        self = Double(directPixel) / 255
    }
}

extension Bool: _CGPixel {
    public typealias _EZ_DirectPixel = UInt8
    public typealias _EZ_PixelDirectChannel = UInt8

    public init(_ez_directPixel directPixel: UInt8) {
        self = directPixel >= 128
    }
}

extension RGBA: _CGPixel where Channel: _CGChannel {
    public typealias _EZ_DirectPixel = PremultipliedRGBA<Channel._EZ_DirectChannel>
    public typealias _EZ_PixelDirectChannel = Channel._EZ_DirectChannel

    public init(_ez_directPixel directPixel: PremultipliedRGBA<Channel._EZ_DirectChannel>) {
        self = Channel._ez_rgba(from: directPixel)
    }
}

extension PremultipliedRGBA: _CGPixel where Channel: _CGChannel {
    public typealias _EZ_DirectPixel = PremultipliedRGBA<Channel._EZ_DirectChannel>
    public typealias _EZ_PixelDirectChannel = Channel._EZ_DirectChannel

    public init(_ez_directPixel directPixel: PremultipliedRGBA<Channel._EZ_DirectChannel>) {
        self = directPixel.map(Channel.init(_ez_directChannel:))
    }
}

extension PremultipliedRGBA: _CGDirectPixel where Channel: _CGDirectChannel {
    public static var _ez_cgPixelDefault: PremultipliedRGBA<Channel> {
        return PremultipliedRGBA<Channel>(
            red: Channel._ez_cgChannelDefault,
            green: Channel._ez_cgChannelDefault,
            blue: Channel._ez_cgChannelDefault,
            alpha: Channel._ez_cgChannelDefault
        )
    }
}

extension Image where Pixel: _CGPixel {
    public init(cgImage: CGImage) {
        let width = cgImage.width
        let height = cgImage.height

        let pixels = [Pixel._EZ_DirectPixel](repeating: Pixel._EZ_DirectPixel._ez_cgPixelDefault, count: width * height)
        var image = Image<Pixel._EZ_DirectPixel>(width: width, height: height, pixels: pixels)
        image.withCGContext(coordinates: .original) { context in
            let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
            context.draw(cgImage, in: rect)
        }

        self = image.map(Pixel.init(_ez_directPixel:))
    }
}

extension Image where Pixel: _CGDirectPixel {
    public mutating func withCGContext(coordinates: CGContextCoordinates = .natural, _ body: (CGContext) throws -> Void) rethrows {
        let width = self.width
        let height = self.height

        precondition(width >= 0)
        precondition(height >= 0)

        let context  = CGContext(
            data: &pixels,
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<Pixel._EZ_PixelDirectChannel>.size * 8,
            bytesPerRow: MemoryLayout<Pixel>.size * width,
            space: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo.rawValue
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

extension ImageSlice where Pixel: _CGPixel {
    public init(cgImage: CGImage) {
        self.init(Image<Pixel>(cgImage: cgImage))
    }
}

extension Image where Pixel == RGBA<UInt8> {
    public var cgImage: CGImage {
        return Image.generatedCGImage(
            image: self,
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            maxValue: .max,
            toAdditive: Int.init,
            product: (*) as (Int, Int) -> Int,
            quotient: (/) as (Int, Int) -> Int,
            toOriginal: UInt8.init
        )
    }
}

extension Image where Pixel == RGBA<UInt16> {
    public var cgImage: CGImage {
        return Image.generatedCGImage(
            image: self,
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            maxValue: .max,
            toAdditive: Int.init,
            product: (*) as (Int, Int) -> Int,
            quotient: (/) as (Int, Int) -> Int,
            toOriginal: UInt16.init
        )
    }
}

extension Image where Pixel == RGBA<Float> {
    public var cgImage: CGImage {
        return map { $0.map { UInt8(clamp($0, lower: 0.0, upper: 1.0) * 255) } }.cgImage
    }
}

extension Image where Pixel == RGBA<Double> {
    public var cgImage: CGImage {
        return map { $0.map { UInt8(clamp($0, lower: 0.0, upper: 1.0) * 255) } }.cgImage
    }
}

extension Image where Pixel == RGBA<Bool> {
    public var cgImage: CGImage {
        return map { $0.map { $0 ? (255 as UInt8) : (0 as UInt8) } }.cgImage
    }
}

extension Image where Pixel == PremultipliedRGBA<UInt8> {
    public var cgImage: CGImage {
        return Image.generatedCGImage(
            image: self,
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            componentType: UInt8.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try Image.withGeneratedCGImage(
            image: self,
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            body: body,
            componentType: UInt8.self
        )
    }
}

extension Image where Pixel == PremultipliedRGBA<UInt16> {
    public var cgImage: CGImage {
        return Image.generatedCGImage(
            image: self,
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            componentType: UInt16.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try Image.withGeneratedCGImage(
            image: self,
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            body: body,
            componentType: UInt16.self
        )
    }
}

extension Image where Pixel == PremultipliedRGBA<Float> {
    public var cgImage: CGImage {
        return map { $0.map { UInt8(clamp($0, lower: 0.0, upper: 1.0) * 255) } }.cgImage
    }
}

extension Image where Pixel == PremultipliedRGBA<Double> {
    public var cgImage: CGImage {
        return map { $0.map { UInt8(clamp($0, lower: 0.0, upper: 1.0) * 255) } }.cgImage
    }
}

extension Image where Pixel == UInt8 {
    public var cgImage: CGImage {
        return Image.generatedCGImage(
            image: self,
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            componentType: UInt8.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try Image.withGeneratedCGImage(
            image: self,
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            body: body,
            componentType: UInt8.self
        )
    }
}

extension Image where Pixel == UInt16 {
    public var cgImage: CGImage {
        return Image.generatedCGImage(
            image: self,
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            componentType: UInt16.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try Image.withGeneratedCGImage(
            image: self,
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            body: body,
            componentType: UInt16.self
        )
    }
}

extension Image where Pixel == Float {
    public var cgImage: CGImage {
        return map { UInt8(clamp($0, lower: 0.0, upper: 1.0) * 255) }.cgImage
    }
}

extension Image where Pixel == Double {
    public var cgImage: CGImage {
        return map { UInt8(clamp($0, lower: 0.0, upper: 1.0) * 255) }.cgImage
    }
}

extension Image where Pixel == Bool {
    public var cgImage: CGImage {
        return map { $0 ? 255 as UInt8 : 0 as UInt8 }.cgImage
    }
}

extension ImageSlice where Pixel == PremultipliedRGBA<UInt8> {
    public var cgImage: CGImage {
        return ImageSlice<PremultipliedRGBA<UInt8>>.generatedCGImage(
            slice: self,
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            componentType: UInt8.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try ImageSlice<PremultipliedRGBA<UInt8>>.withGeneratedCGImage(
            slice: self,
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
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
            space: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo.rawValue
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
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            componentType: UInt16.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try ImageSlice<PremultipliedRGBA<UInt16>>.withGeneratedCGImage(
            slice: self,
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
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
            space: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo.rawValue
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
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            componentType: UInt8.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try ImageSlice<UInt8>.withGeneratedCGImage(
            slice: self,
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
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
            space: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo.rawValue
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
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            componentType: UInt16.self
        )
    }

    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        return try ImageSlice<UInt16>.withGeneratedCGImage(
            slice: self,
            colorSpace: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
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
            space: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo.rawValue
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
