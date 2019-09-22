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

extension RGBA where Channel : UnsignedInteger & FixedWidthInteger {
    public init(red: Channel, green: Channel, blue: Channel) {
        self.init(red: red, green: green, blue: blue, alpha: .max)
    }

    public init(_ rgb: RGB<Channel>) {
        self.init(red: rgb.red, green: rgb.green, blue: rgb.blue, alpha: .max)
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
    public init(red: Channel, green: Channel, blue: Channel) {
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
    
    public init(_ rgb: RGB<Channel>) {
        self.init(red: rgb.red, green: rgb.green, blue: rgb.blue, alpha: 1)
    }
    
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

extension RGBA where Channel == UInt8 {
    public init(_ hex: UInt32) {
        self.init(red: UInt8((hex >> 24) & 0xFF), green: UInt8((hex >> 16) & 0xFF), blue: UInt8((hex >> 8) & 0xFF), alpha: UInt8(hex & 0xFF))
    }
}

extension RGBA where Channel: _TypicalChannel {
    @inlinable
    public init(_ rgb: RGBA<Int>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue), alpha: Channel(rgb.alpha))
    }

    @inlinable
    public init(_ rgb: RGBA<Int8>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue), alpha: Channel(rgb.alpha))
    }

    @inlinable
    public init(_ rgb: RGBA<Int16>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue), alpha: Channel(rgb.alpha))
    }

    @inlinable
    public init(_ rgb: RGBA<Int32>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue), alpha: Channel(rgb.alpha))
    }

    @inlinable
    public init(_ rgb: RGBA<Int64>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue), alpha: Channel(rgb.alpha))
    }

    @inlinable
    public init(_ rgb: RGBA<UInt>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue), alpha: Channel(rgb.alpha))
    }

    @inlinable
    public init(_ rgb: RGBA<UInt8>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue), alpha: Channel(rgb.alpha))
    }

    @inlinable
    public init(_ rgb: RGBA<UInt16>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue), alpha: Channel(rgb.alpha))
    }

    @inlinable
    public init(_ rgb: RGBA<UInt32>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue), alpha: Channel(rgb.alpha))
    }

    @inlinable
    public init(_ rgb: RGBA<UInt64>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue), alpha: Channel(rgb.alpha))
    }

    @inlinable
    public init(_ rgb: RGBA<Float>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue), alpha: Channel(rgb.alpha))
    }

    @inlinable
    public init(_ rgb: RGBA<Double>) {
        self.init(red: Channel(rgb.red), green: Channel(rgb.green), blue: Channel(rgb.blue), alpha: Channel(rgb.alpha))
    }
}

extension RGBA where Channel: UnsignedInteger & FixedWidthInteger {
    @inlinable
    public static var red: RGBA<Channel> {
        return RGBA<Channel>(red: .max, green: .zero, blue: .zero, alpha: .max)
    }
    
    @inlinable
    public static var green: RGBA<Channel> {
        return RGBA<Channel>(red: .zero, green: .max, blue: .zero, alpha: .max)
    }
    
    @inlinable
    public static var blue: RGBA<Channel> {
        return RGBA<Channel>(red: .zero, green: .zero, blue: .max, alpha: .max)
    }
    
    @inlinable
    public static var cyan: RGBA<Channel> {
        return RGBA<Channel>(red: .zero, green: .max, blue: .max, alpha: .max)
    }
    
    @inlinable
    public static var magenta: RGBA<Channel> {
        return RGBA<Channel>(red: .max, green: .zero, blue: .max, alpha: .max)
    }
    
    @inlinable
    public static var yellow: RGBA<Channel> {
        return RGBA<Channel>(red: .max, green: .max, blue: .zero, alpha: .max)
    }
    
    @inlinable
    public static var black: RGBA<Channel> {
        return RGBA<Channel>(red: .zero, green: .zero, blue: .zero, alpha: .max)
    }
    
    @inlinable
    public static var white: RGBA<Channel> {
        return RGBA<Channel>(red: .max, green: .max, blue: .max, alpha: .max)
    }
    
    @inlinable
    public static var gray: RGBA<Channel> {
        return RGBA<Channel>(red: .max / 2, green: .max / 2, blue: .max / 2, alpha: .max)
    }
    
    @inlinable
    public static var orange: RGBA<Channel> {
        return RGBA<Channel>(red: .max, green: .max / 2, blue: .zero, alpha: .max)
    }
    
    @inlinable
    public static var purple: RGBA<Channel> {
        return RGBA<Channel>(red: .max / 2, green: .zero, blue: .max / 2, alpha: .max)
    }
    
    @inlinable
    public static var clear: RGBA<Channel> {
        return RGBA<Channel>(red: .zero, green: .zero, blue: .zero, alpha: .zero)
    }
    
    @inlinable
    @available(*, deprecated, message: "User `clear` instead.")
    public static var transparent: RGBA<Channel> {
        return .clear
    }
}

extension RGBA where Channel: FloatingPoint {
    @inlinable
    public static var red: RGBA<Channel> {
        return RGBA<Channel>(red: 1, green: 0, blue: 0, alpha: 1)
    }
    
    @inlinable
    public static var green: RGBA<Channel> {
        return RGBA<Channel>(red: 0, green: 1, blue: 0, alpha: 1)
    }
    
    @inlinable
    public static var blue: RGBA<Channel> {
        return RGBA<Channel>(red: 0, green: 0, blue: 1, alpha: 1)
    }
    
    @inlinable
    public static var cyan: RGBA<Channel> {
        return RGBA<Channel>(red: 0, green: 1, blue: 1, alpha: 1)
    }
    
    @inlinable
    public static var magenta: RGBA<Channel> {
        return RGBA<Channel>(red: 1, green: 0, blue: 1, alpha: 1)
    }
    
    @inlinable
    public static var yellow: RGBA<Channel> {
        return RGBA<Channel>(red: 1, green: 1, blue: 0, alpha: 1)
    }
    
    @inlinable
    public static var black: RGBA<Channel> {
        return RGBA<Channel>(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    @inlinable
    public static var white: RGBA<Channel> {
        return RGBA<Channel>(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    @inlinable
    public static var gray: RGBA<Channel> {
        return RGBA<Channel>(red: 1 / 2, green: 1 / 2, blue: 1 / 2, alpha: 1)
    }
    
    @inlinable
    public static var orange: RGBA<Channel> {
        return RGBA<Channel>(red: 1, green: 1 / 2, blue: 0, alpha: 1)
    }
    
    @inlinable
    public static var purple: RGBA<Channel> {
        return RGBA<Channel>(red: 1 / 2, green: 0, blue: 1 / 2, alpha: 1)
    }
    
    @inlinable
    public static var clear: RGBA<Channel> {
        return RGBA<Channel>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    @inlinable
    @available(*, deprecated, message: "User `clear` instead.")
    public static var transparent: RGBA<Channel> {
        return .clear
    }
}

extension RGBA where Channel: _NumericPixel & BinaryInteger {
    @inlinable
    public var gray: Channel {
        return Channel(_ez_additiveInt: Channel._ez_quotientInt((red._ez_additiveInt + green._ez_additiveInt + blue._ez_additiveInt), 3))
    }
}

extension RGBA where Channel: FloatingPoint {
    @inlinable
    public var gray: Channel {
        return (red + green + blue) / 3
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

extension RGBA : Equatable where Channel : Equatable {
    @inlinable
    public static func ==(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> Bool {
        return lhs.red == rhs.red && lhs.green == rhs.green && lhs.blue == rhs.blue && lhs.alpha == rhs.alpha
    }
    
    @inlinable
    public static func !=(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> Bool {
        return lhs.red != rhs.red || lhs.green != rhs.green || lhs.blue != rhs.blue || lhs.alpha != rhs.alpha
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

extension RGBA where Channel == UInt8 {
    public var redInt: Int {
        @available(*, deprecated, message: "Replace `rgba.redInt` with `Int(rgba.red)`.")
        get {
            return Int(red)
        }
        @available(*, deprecated, message: "Replace `rgba.redInt = value` with `rgba.red = UInt8(rgba.red)`.")
        set {
            red = UInt8(newValue)
        }
    }
    
    public var greenInt: Int {
        @available(*, deprecated, message: "Replace `rgba.greenInt` with `Int(rgba.green)`.")
        get {
            return Int(green)
        }
        @available(*, deprecated, message: "Replace `rgba.greenInt = value` with `rgba.red = UInt8(rgba.green)`.")
        set {
            green = UInt8(newValue)
        }
    }
    
    public var blueInt: Int {
        @available(*, deprecated, message: "Replace `rgba.blueInt` with `Int(rgba.blue)`.")
        get {
            return Int(blue)
        }
        @available(*, deprecated, message: "Replace `rgba.blueInt = value` with `rgba.red = UInt8(rgba.blue)`.")
        set {
            blue = UInt8(newValue)
        }
    }
    
    public var alphaInt: Int {
        @available(*, deprecated, message: "Replace `rgba.alphaInt` with `Int(rgba.alpha)`.")
        get {
            return Int(alpha)
        }
        @available(*, deprecated, message: "Replace `rgba.alphaInt = value` with `rgba.red = UInt8(rgba.alpha)`.")
        set {
            alpha = UInt8(newValue)
        }
    }

    @available(*, deprecated, message: "Replace `rgba.grayInt` with `Int(rgba.gray)`.")
    public var grayInt: Int {
        return (redInt + greenInt + blueInt) / 3
    }
}

extension RGBA where Channel == UInt16 {
    public var redInt: Int {
        @available(*, deprecated, message: "Replace `rgba.redInt` with `Int(rgba.red)`.")
        get {
            return Int(red)
        }
        @available(*, deprecated, message: "Replace `rgba.redInt = value` with `rgba.red = UInt16(rgba.red)`.")
        set {
            red = UInt16(newValue)
        }
    }
    
    public var greenInt: Int {
        @available(*, deprecated, message: "Replace `rgba.greenInt` with `Int(rgba.green)`.")
        get {
            return Int(green)
        }
        @available(*, deprecated, message: "Replace `rgba.greenInt = value` with `rgba.red = UInt16(rgba.green)`.")
        set {
            green = UInt16(newValue)
        }
    }
    
    public var blueInt: Int {
        @available(*, deprecated, message: "Replace `rgba.blueInt` with `Int(rgba.blue)`.")
        get {
            return Int(blue)
        }
        @available(*, deprecated, message: "Replace `rgba.blueInt = value` with `rgba.red = UInt16(rgba.blue)`.")
        set {
            blue = UInt16(newValue)
        }
    }
    
    public var alphaInt: Int {
        @available(*, deprecated, message: "Replace `rgba.alphaInt` with `Int(rgba.alpha)`.")
        get {
            return Int(alpha)
        }
        @available(*, deprecated, message: "Replace `rgba.alphaInt = value` with `rgba.red = UInt16(rgba.alpha)`.")
        set {
            alpha = UInt16(newValue)
        }
    }

    @available(*, deprecated, message: "Replace `rgba.grayInt` with `Int(rgba.gray)`.")
    public var grayInt: Int {
        return (redInt + greenInt + blueInt) / 3
    }
}
