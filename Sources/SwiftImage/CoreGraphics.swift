#if canImport(CoreGraphics)
import CoreGraphics
import Foundation

public enum CGContextCoordinates {
    case original
    case natural
}

public protocol _CGChannel {
    associatedtype _EZ_DirectChannel: _CGDirectChannel, Numeric

    init(_ez_directChannel: _EZ_DirectChannel)
    var _ez_directChannel: _EZ_DirectChannel { get }

    static func _ez_rgba(from: PremultipliedRGBA<_EZ_DirectChannel>) -> RGBA<Self>
    static func _ez_premultipliedRGBA(from: RGBA<Self>) -> PremultipliedRGBA<_EZ_DirectChannel>
}

public protocol _CGDirectChannel: _CGChannel where _EZ_DirectChannel == Self {
    static var _ez_cgChannelDefault: Self { get }
}

extension _CGDirectChannel {
    @inlinable
    public init(_ez_directChannel directChannel: _EZ_DirectChannel) {
        self = directChannel
    }

    @inlinable
    public var _ez_directChannel: _EZ_DirectChannel {
        return self
    }
}

extension UInt8: _CGDirectChannel {
    public typealias _EZ_DirectChannel = UInt8

    @inlinable
    public static func _ez_rgba(from premultipliedRGBA: PremultipliedRGBA<UInt8>) -> RGBA<UInt8> {
        return RGBA<UInt8>(premultipliedRGBA)
    }

    @inlinable
    public static func _ez_premultipliedRGBA(from rgba: RGBA<UInt8>) -> PremultipliedRGBA<UInt8> {
        return PremultipliedRGBA<UInt8>(rgba)
    }

    @inlinable
    public static var _ez_cgChannelDefault: UInt8 { return 0 }
}

extension UInt16: _CGDirectChannel {
    public typealias _EZ_DirectChannel = UInt16

    @inlinable
    public static func _ez_rgba(from premultipliedRGBA: PremultipliedRGBA<UInt16>) -> RGBA<UInt16> {
        return RGBA<UInt16>(premultipliedRGBA)
    }

    @inlinable
    public static func _ez_premultipliedRGBA(from rgba: RGBA<UInt16>) -> PremultipliedRGBA<UInt16> {
        return PremultipliedRGBA<UInt16>(rgba)
    }

    @inlinable
    public static var _ez_cgChannelDefault: UInt16 { return 0 }
}

extension Float: _CGChannel {
    public typealias _EZ_DirectChannel = UInt8

    @inlinable
    public init(_ez_directChannel directChannel: UInt8) {
        self = Float(directChannel) / 255
    }

    @inlinable
    public var _ez_directChannel: UInt8 {
        return UInt8(clamp(self * 255, lower: 0, upper: 255))
    }

    @inlinable
    public static func _ez_rgba(from premultipliedRGBA: PremultipliedRGBA<UInt8>) -> RGBA<Float> {
        return RGBA<Float>(premultipliedRGBA.map(Float.init(_ez_directChannel:)))
    }

    @inlinable
    public static func _ez_premultipliedRGBA(from rgba: RGBA<Float>) -> PremultipliedRGBA<UInt8> {
        return PremultipliedRGBA<UInt8>(rgba.map { $0._ez_directChannel })
    }
}

extension Double: _CGChannel {
    public typealias _EZ_DirectChannel = UInt8

    @inlinable
    public init(_ez_directChannel directChannel: UInt8) {
        self = Double(directChannel) / 255
    }

    @inlinable
    public var _ez_directChannel: UInt8 {
        return UInt8(clamp(self * 255, lower: 0, upper: 255))
    }

    @inlinable
    public static func _ez_rgba(from premultipliedRGBA: PremultipliedRGBA<UInt8>) -> RGBA<Double> {
        return RGBA<Double>(premultipliedRGBA.map(Double.init(_ez_directChannel:)))
    }

    @inlinable
    public static func _ez_premultipliedRGBA(from rgba: RGBA<Double>) -> PremultipliedRGBA<UInt8> {
        return PremultipliedRGBA<UInt8>(rgba.map { $0._ez_directChannel })
    }
}

extension Bool: _CGChannel {
    public typealias _EZ_DirectChannel = UInt8

    @inlinable
    public init(_ez_directChannel directChannel: UInt8) {
        self = directChannel >= 128
    }

    @inlinable
    public var _ez_directChannel: _EZ_DirectChannel {
        return self ? 255 : 0
    }

    @inlinable
    public static func _ez_rgba(from premultipliedRGBA: PremultipliedRGBA<UInt8>) -> RGBA<Bool> {
        return RGBA<UInt8>(premultipliedRGBA).map(Bool.init(_ez_directChannel:))
    }

    @inlinable
    public static func _ez_premultipliedRGBA(from rgba: RGBA<Bool>) -> PremultipliedRGBA<UInt8> {
        return PremultipliedRGBA<UInt8>(rgba.map { $0._ez_directChannel })
    }
}

public protocol _CGPixel {
    associatedtype _EZ_DirectPixel: _CGDirectPixel
    associatedtype _EZ_PixelDirectChannel: _CGDirectChannel

    init(_ez_directPixel: _EZ_DirectPixel)

    var _ez_directPixel: _EZ_DirectPixel { get }

    static var _ez_cgColorSpace: CGColorSpace { get }
    static var _ez_cgBitmapInfo: CGBitmapInfo { get }
}

public protocol _CGDirectPixel: _CGPixel where _EZ_DirectPixel == Self {
    static var _ez_cgPixelDefault: Self { get }
}

extension _CGDirectPixel {
    @inlinable
    public var _ez_directPixel: _EZ_DirectPixel {
        return self
    }

    @inlinable
    public init(_ez_directPixel directPixel: _EZ_DirectPixel) {
        self = directPixel
    }
}

extension UInt8: _CGDirectPixel {
    public typealias _EZ_DirectPixel = UInt8
    public typealias _EZ_PixelDirectChannel = UInt8
    
    @inlinable
    public static var _ez_cgColorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceGray()
    }
    
    @inlinable
    public static var _ez_cgBitmapInfo: CGBitmapInfo {
        return CGBitmapInfo()
    }
    
    @inlinable
    public static var _ez_cgPixelDefault: UInt8 {
        return 0
    }
}

extension UInt16: _CGDirectPixel {
    public typealias _EZ_DirectPixel = UInt16
    public typealias _EZ_PixelDirectChannel = UInt16
    
    @inlinable
    public static var _ez_cgColorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceGray()
    }
    
    @inlinable
    public static var _ez_cgBitmapInfo: CGBitmapInfo {
        return CGBitmapInfo()
    }

    @inlinable
    public static var _ez_cgPixelDefault: UInt16 {
        return 0
    }
}

extension Float: _CGPixel {
    public typealias _EZ_DirectPixel = UInt8
    public typealias _EZ_PixelDirectChannel = UInt8

    @inlinable
    public var _ez_directPixel: UInt8 {
        return UInt8(clamp(self * 255, lower: 0, upper: 255))
    }
    
    @inlinable
    public static var _ez_cgColorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceGray()
    }
    
    @inlinable
    public static var _ez_cgBitmapInfo: CGBitmapInfo {
        return CGBitmapInfo()
    }

    @inlinable
    public init(_ez_directPixel directPixel: UInt8) {
        self = Float(directPixel) / 255
    }
}

extension Double: _CGPixel {
    public typealias _EZ_DirectPixel = UInt8
    public typealias _EZ_PixelDirectChannel = UInt8

    @inlinable
    public var _ez_directPixel: UInt8 {
        return UInt8(clamp(self * 255, lower: 0, upper: 255))
    }
    
    @inlinable
    public static var _ez_cgColorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceGray()
    }
    
    @inlinable
    public static var _ez_cgBitmapInfo: CGBitmapInfo {
        return CGBitmapInfo()
    }

    @inlinable
    public init(_ez_directPixel directPixel: UInt8) {
        self = Double(directPixel) / 255
    }
}

extension Bool: _CGPixel {
    public typealias _EZ_DirectPixel = UInt8
    public typealias _EZ_PixelDirectChannel = UInt8

    @inlinable
    public var _ez_directPixel: UInt8 {
        return self ? 255 : 0
    }
    
    @inlinable
    public static var _ez_cgColorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceGray()
    }
    
    @inlinable
    public static var _ez_cgBitmapInfo: CGBitmapInfo {
        return CGBitmapInfo()
    }

    @inlinable
    public init(_ez_directPixel directPixel: UInt8) {
        self = directPixel >= 128
    }
}

extension RGB: _CGPixel where Channel: _CGChannel {
    public typealias _EZ_DirectPixel = RGB<Channel._EZ_DirectChannel>
    public typealias _EZ_PixelDirectChannel = Channel._EZ_DirectChannel

    @inlinable
    public init(_ez_directPixel directPixel: RGB<Channel._EZ_DirectChannel>) {
        self = directPixel.map(Channel.init(_ez_directChannel:))
    }
    
    @inlinable
    public var _ez_directPixel: RGB<Channel._EZ_DirectChannel> {
        return map { $0._ez_directChannel }
    }
    
    @inlinable
    public static var _ez_cgColorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }
    
    @inlinable
    public static var _ez_cgBitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.noneSkipLast.rawValue)
    }
}

extension RGB: _CGDirectPixel where Channel: _CGDirectChannel {
    @inlinable
    public static var _ez_cgPixelDefault: RGB<Channel> {
        return RGB<Channel>(
            red: Channel._ez_cgChannelDefault,
            green: Channel._ez_cgChannelDefault,
            blue: Channel._ez_cgChannelDefault
        )
    }
}

extension RGBA: _CGPixel where Channel: _CGChannel {
    public typealias _EZ_DirectPixel = PremultipliedRGBA<Channel._EZ_DirectChannel>
    public typealias _EZ_PixelDirectChannel = Channel._EZ_DirectChannel

    @inlinable
    public init(_ez_directPixel directPixel: PremultipliedRGBA<Channel._EZ_DirectChannel>) {
        self = Channel._ez_rgba(from: directPixel)
    }

    @inlinable
    public var _ez_directPixel: PremultipliedRGBA<Channel._EZ_DirectChannel> {
        return Channel._ez_premultipliedRGBA(from: self)
    }
    
    @inlinable
    public static var _ez_cgColorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }
    
    @inlinable
    public static var _ez_cgBitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue)
    }
}

extension PremultipliedRGBA: _CGPixel where Channel: _CGChannel {
    public typealias _EZ_DirectPixel = PremultipliedRGBA<Channel._EZ_DirectChannel>
    public typealias _EZ_PixelDirectChannel = Channel._EZ_DirectChannel

    @inlinable
    public init(_ez_directPixel directPixel: PremultipliedRGBA<Channel._EZ_DirectChannel>) {
        self = directPixel.map(Channel.init(_ez_directChannel:))
    }

    @inlinable
    public var _ez_directPixel: PremultipliedRGBA<Channel._EZ_DirectChannel> {
        return map { $0._ez_directChannel }
    }
    
    @inlinable
    public static var _ez_cgColorSpace: CGColorSpace {
        return CGColorSpaceCreateDeviceRGB()
    }
    
    @inlinable
    public static var _ez_cgBitmapInfo: CGBitmapInfo {
        return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue)
    }
}

extension PremultipliedRGBA: _CGDirectPixel where Channel: _CGDirectChannel {
    @inlinable
    public static var _ez_cgPixelDefault: PremultipliedRGBA<Channel> {
        return PremultipliedRGBA<Channel>(
            red: Channel._ez_cgChannelDefault,
            green: Channel._ez_cgChannelDefault,
            blue: Channel._ez_cgChannelDefault,
            alpha: Channel._ez_cgChannelDefault
        )
    }
}

public protocol _CGImageConvertible {
    init(cgImage: CGImage)
    var cgImage: CGImage { get }
}

public protocol _CGImageDirectlyConvertible: _CGImageConvertible {
    func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R
    mutating func withCGContext(coordinates: CGContextCoordinates, _ body: (CGContext) throws -> Void) rethrows
}

extension Image: _CGImageConvertible where Pixel: _CGPixel {
    @inlinable
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

    @inlinable
    public var cgImage: CGImage {
        return map { $0._ez_directPixel }.cgImage
    }
}

extension Image: _CGImageDirectlyConvertible where Pixel: _CGDirectPixel {
    @inlinable
    public var cgImage: CGImage {
        let length = count * MemoryLayout<Pixel>.size

        let data: Data = pixels.withUnsafeBytes { pixelsPointer in
            Data(bytes: pixelsPointer.baseAddress!, count: length)
        }
        let provider: CGDataProvider = CGDataProvider(data: data as CFData)!

        return CGImage(
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<Pixel._EZ_PixelDirectChannel>.size * 8,
            bitsPerPixel: MemoryLayout<Pixel>.size * 8,
            bytesPerRow: MemoryLayout<Pixel>.size * width,
            space: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            provider: provider,
            decode: nil,
            shouldInterpolate: false,
            intent: CGColorRenderingIntent.defaultIntent
        )!

    }

    @inlinable
    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        let length = count * MemoryLayout<Pixel>.size

        var image = self
        return try image.pixels.withUnsafeMutableBufferPointer { pixelsPointer in
            let provider: CGDataProvider = CGDataProvider(data: Data(
                bytesNoCopy: pixelsPointer.baseAddress!,
                count: length,
                deallocator: .none
            ) as CFData)!

            let cgImage = CGImage(
                width: width,
                height: height,
                bitsPerComponent: MemoryLayout<Pixel._EZ_PixelDirectChannel>.size * 8,
                bitsPerPixel: MemoryLayout<Pixel>.size * 8,
                bytesPerRow: MemoryLayout<Pixel>.size * width,
                space: Pixel._ez_cgColorSpace,
                bitmapInfo: Pixel._ez_cgBitmapInfo,
                provider: provider,
                decode: nil,
                shouldInterpolate: false,
                intent: CGColorRenderingIntent.defaultIntent
            )!

            return try body(cgImage)
        }
    }

    @inlinable
    public mutating func withCGContext(coordinates: CGContextCoordinates = .natural, _ body: (CGContext) throws -> Void) rethrows {
        let width = self.width
        let height = self.height

        precondition(width >= 0)
        precondition(height >= 0)

        try self.pixels.withUnsafeMutableBytes { pixelsPointer in
            let context  = CGContext(
                data: pixelsPointer.baseAddress!,
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
}

extension ImageSlice: _CGImageConvertible where Pixel: _CGPixel {
    @inlinable
    public init(cgImage: CGImage) {
        self.init(Image<Pixel>(cgImage: cgImage))
    }

    @inlinable
    public var cgImage: CGImage {
        return map { $0._ez_directPixel }.cgImage
    }
}

extension ImageSlice: _CGImageDirectlyConvertible where Pixel: _CGDirectPixel {
    @inlinable
    public var cgImage: CGImage {
        let imageCount = image.count
        let pixelCount = image.width * self.height
        let length = pixelCount * MemoryLayout<Pixel>.size
        let offset = yRange.lowerBound * image.width + xRange.lowerBound

        var data: Data
        if offset + pixelCount <= imageCount {
            data = image.pixels.withUnsafeBufferPointer { pixelsPointer in
                let bytes: UnsafePointer<Pixel> = pixelsPointer.baseAddress! + (yRange.lowerBound * image.width + xRange.lowerBound)
                return Data(bytes: bytes, count: length)
            }
        } else {
            data = image.pixels.withUnsafeBufferPointer { pixelsPointer in
                let bytes: UnsafePointer<Pixel> = pixelsPointer.baseAddress! + (yRange.lowerBound * image.width + xRange.lowerBound)
                let pointer: UnsafePointer<UInt8> = UnsafeRawPointer(bytes).bindMemory(to: UInt8.self, capacity: length)
                var data = Data(capacity: pixelCount * MemoryLayout<Pixel>.size)
                data.append(pointer, count: (imageCount - offset) * MemoryLayout<Pixel>.size)
                data.append(pointer, count: (offset + pixelCount - imageCount) * MemoryLayout<Pixel>.size)
                return data
            }
        }

        let provider: CGDataProvider = CGDataProvider(data: data as CFData)!

        return CGImage(
            width: width,
            height: height,
            bitsPerComponent: MemoryLayout<Pixel._EZ_PixelDirectChannel>.size * 8,
            bitsPerPixel: MemoryLayout<Pixel>.size * 8,
            bytesPerRow: MemoryLayout<Pixel>.size * image.width,
            space: Pixel._ez_cgColorSpace,
            bitmapInfo: Pixel._ez_cgBitmapInfo,
            provider: provider,
            decode: nil,
            shouldInterpolate: false,
            intent: CGColorRenderingIntent.defaultIntent
        )!
    }

    @inlinable
    public func withCGImage<R>(_ body: (CGImage) throws -> R) rethrows -> R {
        let length = image.width * self.height * MemoryLayout<Pixel>.size
        let width = self.width
        let xRange = self.xRange
        let yRange = self.yRange
        let imageWidth = self.image.width

        var slice = self
        return try slice.image.pixels.withUnsafeMutableBufferPointer { pixelsPointer in
            let bytes: UnsafeMutablePointer<Pixel> = pixelsPointer.baseAddress! + (yRange.lowerBound * imageWidth + xRange.lowerBound)
            let provider: CGDataProvider = CGDataProvider(data: Data(
                bytesNoCopy: bytes,
                count: length,
                deallocator: .none
            ) as CFData)!

            let cgImage = CGImage(
                width: width,
                height: height,
                bitsPerComponent: MemoryLayout<Pixel._EZ_PixelDirectChannel>.size * 8,
                bitsPerPixel: MemoryLayout<Pixel>.size * 8,
                bytesPerRow: MemoryLayout<Pixel>.size * image.width,
                space: Pixel._ez_cgColorSpace,
                bitmapInfo: Pixel._ez_cgBitmapInfo,
                provider: provider,
                decode: nil,
                shouldInterpolate: false,
                intent: CGColorRenderingIntent.defaultIntent
            )!

            return try body(cgImage)
        }
    }

    @inlinable
    public mutating func withCGContext(coordinates: CGContextCoordinates = .natural, _ body: (CGContext) throws -> Void) rethrows {
        let width = self.width
        let height = self.height
        let xRange = self.xRange
        let yRange = self.yRange
        let imageWidth = self.image.width

        precondition(width >= 0)
        precondition(height >= 0)

        try self.image.pixels.withUnsafeMutableBufferPointer { pixelsPointer in
            let data: UnsafeMutablePointer<Pixel> = pixelsPointer.baseAddress! + (yRange.lowerBound * imageWidth + xRange.lowerBound)
            
            let context  = CGContext(
                data: data,
                width: width,
                height: height,
                bitsPerComponent: MemoryLayout<Pixel._EZ_PixelDirectChannel>.size * 8,
                bytesPerRow: MemoryLayout<Pixel>.size * imageWidth,
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
}
#endif
