public struct RGB<Channel> {
    public var red: Channel
    public var green: Channel
    public var blue: Channel
    #if canImport(CoreGraphics)
    @usableFromInline
    internal let padding: Channel
    #endif
    
    @inlinable
    public init(red: Channel, green: Channel, blue: Channel) {
        self.red = red
        self.green = green
        self.blue = blue
        #if canImport(CoreGraphics)
        self.padding = blue
        #endif
    }
}

extension RGB { // Additional initializers
    @inlinable
    public init(gray: Channel) {
        self.init(red: gray, green: gray, blue: gray)
    }
}

extension RGB where Channel == UInt8 {
    @inlinable
    public init(_ hex: UInt32) {
        self.init(red: UInt8((hex >> 16) & 0xFF), green: UInt8((hex >> 8) & 0xFF), blue: UInt8(hex & 0xFF))
    }
}

extension RGB where Channel : _NumericPixel & UnsignedInteger & FixedWidthInteger, Channel._ez_AdditiveInt : FixedWidthInteger {
    @inlinable
    public init(_ rgba: RGBA<Channel>) {
        let numericAlpha: Channel._ez_AdditiveInt = rgba.alpha._ez_additiveInt
        let numericMaxAlpha: Channel._ez_AdditiveInt = Channel.max._ez_additiveInt
        
        self.init(
            red: .init(_ez_additiveInt: rgba.red._ez_additiveInt * numericAlpha / numericMaxAlpha),
            green: .init(_ez_additiveInt: rgba.green._ez_additiveInt * numericAlpha / numericMaxAlpha),
            blue: .init(_ez_additiveInt: rgba.blue._ez_additiveInt * numericAlpha / numericMaxAlpha)
        )
    }
}

extension RGB where Channel : FloatingPoint {
    @inlinable
    public init(_ rgba: RGBA<Channel>) {
        self.init(
            red: rgba.red * rgba.alpha,
            green: rgba.green * rgba.alpha,
            blue: rgba.blue * rgba.alpha
        )
    }
}

extension RGB where Channel: Numeric {
    @inlinable
    public init(_ premultipliedRGBA: PremultipliedRGBA<Channel>) {
        self.init(red: premultipliedRGBA.red, green: premultipliedRGBA.green, blue: premultipliedRGBA.blue)
    }
}

extension RGB where Channel: _TypicalChannel {
    @inlinable
    public init(_ rgb: RGB<Int>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue))
    }

    @inlinable
    public init(_ rgb: RGB<Int8>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue))
    }

    @inlinable
    public init(_ rgb: RGB<Int16>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue))
    }

    @inlinable
    public init(_ rgb: RGB<Int32>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue))
    }

    @inlinable
    public init(_ rgb: RGB<Int64>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue))
    }

    @inlinable
    public init(_ rgb: RGB<UInt>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue))
    }

    @inlinable
    public init(_ rgb: RGB<UInt8>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue))
    }

    @inlinable
    public init(_ rgb: RGB<UInt16>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue))
    }

    @inlinable
    public init(_ rgb: RGB<UInt32>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue))
    }

    @inlinable
    public init(_ rgb: RGB<UInt64>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue))
    }

    @inlinable
    public init(_ rgb: RGB<Float>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue))
    }

    @inlinable
    public init(_ rgb: RGB<Double>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue))
    }
}

extension RGB where Channel: UnsignedInteger & FixedWidthInteger {
    @inlinable
    public static var red: RGB<Channel> {
        return RGB<Channel>(red: .max, green: .zero, blue: .zero)
    }
    
    @inlinable
    public static var green: RGB<Channel> {
        return RGB<Channel>(red: .zero, green: .max, blue: .zero)
    }
    
    @inlinable
    public static var blue: RGB<Channel> {
        return RGB<Channel>(red: .zero, green: .zero, blue: .max)
    }
    
    @inlinable
    public static var cyan: RGB<Channel> {
        return RGB<Channel>(red: .zero, green: .max, blue: .max)
    }
    
    @inlinable
    public static var magenta: RGB<Channel> {
        return RGB<Channel>(red: .max, green: .zero, blue: .max)
    }
    
    @inlinable
    public static var yellow: RGB<Channel> {
        return RGB<Channel>(red: .max, green: .max, blue: .zero)
    }
    
    @inlinable
    public static var black: RGB<Channel> {
        return RGB<Channel>(red: .zero, green: .zero, blue: .zero)
    }
    
    @inlinable
    public static var white: RGB<Channel> {
        return RGB<Channel>(red: .max, green: .max, blue: .max)
    }
    
    @inlinable
    public static var gray: RGB<Channel> {
        return RGB<Channel>(red: .max / 2, green: .max / 2, blue: .max / 2)
    }
    
    @inlinable
    public static var orange: RGB<Channel> {
        return RGB<Channel>(red: .max, green: .max / 2, blue: .zero)
    }
    
    @inlinable
    public static var purple: RGB<Channel> {
        return RGB<Channel>(red: .max / 2, green: .zero, blue: .max / 2)
    }
}

extension RGB where Channel: FloatingPoint {
    @inlinable
    public static var red: RGB<Channel> {
        return RGB<Channel>(red: 1, green: 0, blue: 0)
    }
    
    @inlinable
    public static var green: RGB<Channel> {
        return RGB<Channel>(red: 0, green: 1, blue: 0)
    }
    
    @inlinable
    public static var blue: RGB<Channel> {
        return RGB<Channel>(red: 0, green: 0, blue: 1)
    }
    
    @inlinable
    public static var cyan: RGB<Channel> {
        return RGB<Channel>(red: 0, green: 1, blue: 1)
    }
    
    @inlinable
    public static var magenta: RGB<Channel> {
        return RGB<Channel>(red: 1, green: 0, blue: 1)
    }
    
    @inlinable
    public static var yellow: RGB<Channel> {
        return RGB<Channel>(red: 1, green: 1, blue: 0)
    }
    
    @inlinable
    public static var black: RGB<Channel> {
        return RGB<Channel>(red: 0, green: 0, blue: 0)
    }
    
    @inlinable
    public static var white: RGB<Channel> {
        return RGB<Channel>(red: 1, green: 1, blue: 1)
    }
    
    @inlinable
    public static var gray: RGB<Channel> {
        return RGB<Channel>(red: 1 / 2, green: 1 / 2, blue: 1 / 2)
    }
    
    @inlinable
    public static var orange: RGB<Channel> {
        return RGB<Channel>(red: 1, green: 1 / 2, blue: 0)
    }
    
    @inlinable
    public static var purple: RGB<Channel> {
        return RGB<Channel>(red: 1 / 2, green: 0, blue: 1 / 2)
    }
}

extension RGB where Channel: _NumericPixel & BinaryInteger {
    @inlinable
    public var gray: Channel {
        return Channel(_ez_additiveInt: Channel._ez_quotientInt((red._ez_additiveInt + green._ez_additiveInt + blue._ez_additiveInt), 3))
    }
}

extension RGB where Channel: FloatingPoint {
    @inlinable
    public var gray: Channel {
        return (red + green + blue) / 3
    }
}

extension RGB {
    @inlinable
    public func map<T>(_ transform: (Channel) -> T) -> RGB<T> {
        return RGB<T>(
            red: transform(red),
            green: transform(green),
            blue: transform(blue)
        )
    }
}

extension RGB : Equatable where Channel : Equatable {
    @inlinable
    public static func ==(lhs: RGB<Channel>, rhs: RGB<Channel>) -> Bool {
        return lhs.red == rhs.red && lhs.green == rhs.green && lhs.blue == rhs.blue
    }
    
    @inlinable
    public static func !=(lhs: RGB<Channel>, rhs: RGB<Channel>) -> Bool {
        return lhs.red != rhs.red || lhs.green != rhs.green || lhs.blue != rhs.blue
    }
}

extension RGB : CustomStringConvertible {
    public var description: String {
        if let zelf = self as? RGB<UInt8> {
            return String(format: "#%02X%02X%02X", arguments: [zelf.red, zelf.green, zelf.blue])
        } else {
            return "RGB(red: \(red), green: \(green), blue: \(blue))"
        }
    }
}

extension RGB : CustomDebugStringConvertible {
    public var debugDescription: String {
        return description
    }
}

extension RGB: AdditiveArithmetic where Channel: AdditiveArithmetic {
    @inlinable
    public static var zero: RGB<Channel> {
        return RGB<Channel>(
            red  : .zero,
            green: .zero,
            blue : .zero
        )
    }
    
    @inlinable
    public static func +(_ lhs: RGB<Channel>, _ rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue)
    }
    
    @inlinable
    public static func +=(_ lhs: inout RGB<Channel>, _ rhs: RGB<Channel>) {
        lhs.red   += rhs.red
        lhs.green += rhs.green
        lhs.blue  += rhs.blue
    }
    
    @inlinable
    public static func -(_ lhs: RGB<Channel>, _ rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red - rhs.red, green: lhs.green - rhs.green, blue: lhs.blue - rhs.blue)
    }
    
    @inlinable
    public static func -=(_ lhs: inout RGB<Channel>, _ rhs: RGB<Channel>) {
        lhs.red   -= rhs.red
        lhs.green -= rhs.green
        lhs.blue  -= rhs.blue
    }
}

extension RGB where Channel: Numeric {
    @inlinable
    public static func *(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red * rhs.red, green: lhs.green * rhs.green, blue: lhs.blue * rhs.blue)
    }

    @inlinable
    public static func *=(lhs: inout RGB<Channel>, rhs: RGB<Channel>) {
        lhs.red   *= rhs.red
        lhs.green *= rhs.green
        lhs.blue  *= rhs.blue
    }
}

extension RGB where Channel: SignedNumeric {
    @inlinable
    public static prefix func -(x: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: -x.red, green: -x.green, blue: -x.blue)
    }
}

extension RGB where Channel: BinaryInteger {
    @inlinable
    public static func /(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue)
    }
    
    @inlinable
    public static func /=(lhs: inout RGB<Channel>, rhs: RGB<Channel>) {
        lhs.red   /= rhs.red
        lhs.green /= rhs.green
        lhs.blue  /= rhs.blue
    }

    @inlinable
    public static func %(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red % rhs.red, green: lhs.green % rhs.green, blue: lhs.blue % rhs.blue)
    }
    
    @inlinable
    public static func %=(lhs: inout RGB<Channel>, rhs: RGB<Channel>) {
        lhs.red   %= rhs.red
        lhs.green %= rhs.green
        lhs.blue  %= rhs.blue
    }

    @inlinable
    public static func &(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red & rhs.red, green: lhs.green & rhs.green, blue: lhs.blue & rhs.blue)
    }
    
    @inlinable
    public static func &=(lhs: inout RGB<Channel>, rhs: RGB<Channel>) {
        lhs.red   &= rhs.red
        lhs.green &= rhs.green
        lhs.blue  &= rhs.blue
    }

    @inlinable
    public static func |(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red | rhs.red, green: lhs.green | rhs.green, blue: lhs.blue | rhs.blue)
    }
    
    @inlinable
    public static func |=(lhs: inout RGB<Channel>, rhs: RGB<Channel>) {
        lhs.red   |= rhs.red
        lhs.green |= rhs.green
        lhs.blue  |= rhs.blue
    }

    @inlinable
    public static func ^(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red ^ rhs.red, green: lhs.green ^ rhs.green, blue: lhs.blue ^ rhs.blue)
    }
    
    @inlinable
    public static func ^=(lhs: inout RGB<Channel>, rhs: RGB<Channel>) {
        lhs.red   ^= rhs.red
        lhs.green ^= rhs.green
        lhs.blue  ^= rhs.blue
    }

    @inlinable
    public static prefix func ~(lhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: ~lhs.red, green: ~lhs.green, blue: ~lhs.blue)
    }
    
    @inlinable
    public static func << <RHSChannel: BinaryInteger>(lhs: RGB<Channel>, rhs: RGB<RHSChannel>) -> RGB<Channel> {
        return RGB(red: lhs.red << rhs.red, green: lhs.green << rhs.green, blue: lhs.blue << rhs.blue)
    }
    
    @inlinable
    public static func <<= <RHSChannel: BinaryInteger>(lhs: inout RGB<Channel>, rhs: RGB<RHSChannel>) {
        lhs.red   <<= rhs.red
        lhs.green <<= rhs.green
        lhs.blue  <<= rhs.blue
    }

    @inlinable
    public static func >> <RHSChannel: BinaryInteger>(lhs: RGB<Channel>, rhs: RGB<RHSChannel>) -> RGB<Channel> {
        return RGB(red: lhs.red >> rhs.red, green: lhs.green >> rhs.green, blue: lhs.blue >> rhs.blue)
    }
    
    @inlinable
    public static func >>= <RHSChannel: BinaryInteger>(lhs: inout RGB<Channel>, rhs: RGB<RHSChannel>) {
        lhs.red   >>= rhs.red
        lhs.green >>= rhs.green
        lhs.blue  >>= rhs.blue
    }
}

extension RGB where Channel: FixedWidthInteger {
    @inlinable
    public static func &+(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red &+ rhs.red, green: lhs.green &+ rhs.green, blue: lhs.blue &+ rhs.blue)
    }
    
    @inlinable
    public static func &+=(_ lhs: inout RGB<Channel>, _ rhs: RGB<Channel>) {
        lhs.red   &+= rhs.red
        lhs.green &+= rhs.green
        lhs.blue  &+= rhs.blue
    }

    @inlinable
    public static func &-(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red &- rhs.red, green: lhs.green &- rhs.green, blue: lhs.blue &- rhs.blue)
    }
    
    @inlinable
    public static func &-=(_ lhs: inout RGB<Channel>, _ rhs: RGB<Channel>) {
        lhs.red   &-= rhs.red
        lhs.green &-= rhs.green
        lhs.blue  &-= rhs.blue
    }

    @inlinable
    public static func &*(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red &* rhs.red, green: lhs.green &* rhs.green, blue: lhs.blue &* rhs.blue)
    }
    
    @inlinable
    public static func &*=(_ lhs: inout RGB<Channel>, _ rhs: RGB<Channel>) {
        lhs.red   &*= rhs.red
        lhs.green &*= rhs.green
        lhs.blue  &*= rhs.blue
    }

    @inlinable
    public static func &<<(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red &<< rhs.red, green: lhs.green &<< rhs.green, blue: lhs.blue &<< rhs.blue)
    }
    
    @inlinable
    public static func &<<=(lhs: inout RGB<Channel>, rhs: RGB<Channel>) {
        lhs.red   &<<= rhs.red
        lhs.green &<<= rhs.green
        lhs.blue  &<<= rhs.blue
    }

    @inlinable
    public static func &>>(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red &>> rhs.red, green: lhs.green &>> rhs.green, blue: lhs.blue &>> rhs.blue)
    }
    
    @inlinable
    public static func &>>=(lhs: inout RGB<Channel>, rhs: RGB<Channel>) {
        lhs.red   &>>= rhs.red
        lhs.green &>>= rhs.green
        lhs.blue  &>>= rhs.blue
    }
}

extension RGB where Channel: FloatingPoint {
    @inlinable
    public static func /(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue)
    }
    
    @inlinable
    public static func /=(lhs: inout RGB<Channel>, rhs: RGB<Channel>) {
        lhs.red   /= rhs.red
        lhs.green /= rhs.green
        lhs.blue  /= rhs.blue
    }
}

extension RGB where Channel: Comparable {
    @inlinable
    public static func <(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Bool> {
        return RGB<Bool>(red: lhs.red < rhs.red, green: lhs.green < rhs.green, blue: lhs.blue < rhs.blue)
    }
    
    @inlinable
    public static func <=(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Bool> {
        return RGB<Bool>(red: lhs.red <= rhs.red, green: lhs.green <= rhs.green, blue: lhs.blue <= rhs.blue)
    }
    
    @inlinable
    public static func >(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Bool> {
        return RGB<Bool>(red: lhs.red > rhs.red, green: lhs.green > rhs.green, blue: lhs.blue > rhs.blue)
    }
    
    @inlinable
    public static func >=(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Bool> {
        return RGB<Bool>(red: lhs.red >= rhs.red, green: lhs.green >= rhs.green, blue: lhs.blue >= rhs.blue)
    }
}

extension RGB where Channel == Bool {
    @inlinable
    public static func &&(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red && rhs.red, green: lhs.green && rhs.green, blue: lhs.blue && rhs.blue)
    }
    
    @inlinable
    public static func ||(lhs: RGB<Channel>, rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: lhs.red || rhs.red, green: lhs.green || rhs.green, blue: lhs.blue || rhs.blue)
    }
    
    @inlinable
    public static prefix func !(a: RGB<Channel>) -> RGB<Channel> {
        return RGB(red: !a.red, green: !a.green, blue: !a.blue)
    }
}
