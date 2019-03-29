public struct RGBA<Channel> {
    public var red: Channel
    public var green: Channel
    public var blue: Channel
    public var alpha: Channel
    
    public init(red: Channel, green: Channel, blue: Channel, alpha: Channel) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
}

extension RGBA { // Additional initializers
    public init(gray: Channel, alpha: Channel) {
        self.init(red: gray, green: gray, blue: gray, alpha: alpha)
    }
}

extension RGBA where Channel : _NumericPixel & UnsignedInteger & FixedWidthInteger, Channel._ez_AdditiveInt : FixedWidthInteger {
    public init(_ premultipliedRGBA: PremultipliedRGBA<Channel>) {
        guard premultipliedRGBA.alpha > 0 else {
            self.init(red: 0, green: 0, blue: 0, alpha: 0)
            return
        }
        
        let numericAlpha: Channel._ez_AdditiveInt = premultipliedRGBA.alpha._ez_additiveInt
        let numericMaxAlpha: Channel._ez_AdditiveInt = Channel.max._ez_additiveInt
        
        self.init(
            red: .init(_ez_additiveInt: premultipliedRGBA.red._ez_additiveInt * numericMaxAlpha / numericAlpha),
            green: .init(_ez_additiveInt: premultipliedRGBA.green._ez_additiveInt * numericMaxAlpha / numericAlpha),
            blue: .init(_ez_additiveInt: premultipliedRGBA.blue._ez_additiveInt * numericMaxAlpha / numericAlpha),
            alpha: premultipliedRGBA.alpha
        )
    }
}

extension RGBA where Channel : FloatingPoint {
    public init(_ premultipliedRgba: PremultipliedRGBA<Channel>) {
        guard premultipliedRgba.alpha != 0 else {
            self.init(red: 0, green: 0, blue: 0, alpha: 0)
            return
        }
        
        self.init(
            red: premultipliedRgba.red / premultipliedRgba.alpha,
            green: premultipliedRgba.green / premultipliedRgba.alpha,
            blue: premultipliedRgba.blue / premultipliedRgba.alpha,
            alpha: premultipliedRgba.alpha
        )
    }
}

extension RGBA {
    public func map<T>(_ transform: (Channel) -> T) -> RGBA<T> {
        return RGBA<T>(
            red: transform(red),
            green: transform(green),
            blue: transform(blue),
            alpha: transform(alpha)
        )
    }
}

extension RGBA where Channel == UInt8 {
    public init(_ rgbaInt: UInt32) {
        self.init(red: UInt8((rgbaInt >> 24) & 0xFF), green: UInt8((rgbaInt >> 16) & 0xFF), blue: UInt8((rgbaInt >> 8) & 0xFF), alpha: UInt8(rgbaInt & 0xFF))
    }
}

extension RGBA : CustomStringConvertible {
    public var description: String {
        if let zelf = self as? RGBA<UInt8> {
            return String(format: "#%02X%02X%02X%02X", arguments: [zelf.red, zelf.green, zelf.blue, zelf.alpha])
        } else {
            return "RGBA(red: \(red), green: \(green), blue: \(blue), alpha: \(alpha))"
        }
    }
}

extension RGBA : CustomDebugStringConvertible {
    public var debugDescription: String {
        return description
    }
}

extension RGBA: AdditiveArithmetic where Channel: AdditiveArithmetic {
    @inlinable
    public static var zero: RGBA<Channel> {
        return RGBA<Channel>(
            red  : .zero,
            green: .zero,
            blue : .zero,
            alpha: .zero
        )
    }
    
    @inlinable
    public static func +(_ lhs: RGBA<Channel>, _ rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA<Channel>(
            red  : lhs.red   + rhs.red,
            green: lhs.green + rhs.green,
            blue : lhs.blue  + rhs.blue,
            alpha: lhs.alpha + rhs.alpha
        )
    }
    
    @inlinable
    public static func +=(_ lhs: inout RGBA<Channel>, _ rhs: RGBA<Channel>) {
        lhs.red   += rhs.red
        lhs.green += rhs.green
        lhs.blue  += rhs.blue
        lhs.alpha += rhs.alpha
    }
    
    @inlinable
    public static func -(_ lhs: RGBA<Channel>, _ rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA<Channel>(
            red  : lhs.red   - rhs.red,
            green: lhs.green - rhs.green,
            blue : lhs.blue  - rhs.blue,
            alpha: lhs.alpha - rhs.alpha
        )
    }
    
    @inlinable
    public static func -=(_ lhs: inout RGBA<Channel>, _ rhs: RGBA<Channel>) {
        lhs.red   -= rhs.red
        lhs.green -= rhs.green
        lhs.blue  -= rhs.blue
        lhs.alpha -= rhs.alpha
    }
}
