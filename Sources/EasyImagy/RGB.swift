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

extension RGB where Channel == UInt8 {
    @inlinable
    public init(_ hex: UInt32) {
        self.init(red: UInt8((hex >> 16) & 0xFF), green: UInt8((hex >> 8) & 0xFF), blue: UInt8(hex & 0xFF))
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
