public struct RGB<Channel> {
    public var red: Channel
    public var green: Channel
    public var blue: Channel
    
    @inlinable
    public init(red: Channel, green: Channel, blue: Channel) {
        self.red = red
        self.green = green
        self.blue = blue
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
    public init(_ rgbaInt: UInt32) {
        self.init(red: UInt8((rgbaInt >> 16) & 0xFF), green: UInt8((rgbaInt >> 8) & 0xFF), blue: UInt8(rgbaInt & 0xFF))
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
        return RGB<Channel>(
            red  : lhs.red   + rhs.red,
            green: lhs.green + rhs.green,
            blue : lhs.blue  + rhs.blue
        )
    }
    
    @inlinable
    public static func +=(_ lhs: inout RGB<Channel>, _ rhs: RGB<Channel>) {
        lhs.red   += rhs.red
        lhs.green += rhs.green
        lhs.blue  += rhs.blue
    }
    
    @inlinable
    public static func -(_ lhs: RGB<Channel>, _ rhs: RGB<Channel>) -> RGB<Channel> {
        return RGB<Channel>(
            red  : lhs.red   - rhs.red,
            green: lhs.green - rhs.green,
            blue : lhs.blue  - rhs.blue
        )
    }
    
    @inlinable
    public static func -=(_ lhs: inout RGB<Channel>, _ rhs: RGB<Channel>) {
        lhs.red   -= rhs.red
        lhs.green -= rhs.green
        lhs.blue  -= rhs.blue
    }
}
