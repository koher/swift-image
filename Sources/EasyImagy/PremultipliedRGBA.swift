public struct PremultipliedRGBA<Channel> where Channel : Numeric{
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

extension PremultipliedRGBA where Channel : UnsignedInteger & FixedWidthInteger {
    public init(_ rgb: RGB<Channel>) {
        self.init(red: rgb.red, green: rgb.green, blue: rgb.blue, alpha: .max)
    }
}

extension PremultipliedRGBA where Channel : _NumericPixel & UnsignedInteger & FixedWidthInteger, Channel._ez_AdditiveInt : FixedWidthInteger {
    public init(_ rgba: RGBA<Channel>) {
        let numericAlpha: Channel._ez_AdditiveInt = rgba.alpha._ez_additiveInt
        let numericMaxAlpha: Channel._ez_AdditiveInt = Channel.max._ez_additiveInt
        
        self.init(
            red: .init(_ez_additiveInt: rgba.red._ez_additiveInt * numericAlpha / numericMaxAlpha),
            green: .init(_ez_additiveInt: rgba.green._ez_additiveInt * numericAlpha / numericMaxAlpha),
            blue: .init(_ez_additiveInt: rgba.blue._ez_additiveInt * numericAlpha / numericMaxAlpha),
            alpha: rgba.alpha
        )
    }
}

extension PremultipliedRGBA where Channel : FloatingPoint {
    public init(_ rgb: RGB<Channel>) {
        self.init(red: rgb.red, green: rgb.green, blue: rgb.blue, alpha: 1)
    }
    
    public init(_ rgba: RGBA<Channel>) {
        self.init(
            red: rgba.red * rgba.alpha,
            green: rgba.green * rgba.alpha,
            blue: rgba.blue * rgba.alpha,
            alpha: rgba.alpha
        )
    }
}

extension PremultipliedRGBA { // Additional initializers
    public init(gray: Channel, alpha: Channel) {
        self.init(red: gray, green: gray, blue: gray, alpha: alpha)
    }
}

extension PremultipliedRGBA {
    public func map<T>(_ transform: (Channel) -> T) -> PremultipliedRGBA<T> where T : Numeric {
        return PremultipliedRGBA<T>(
            red: transform(red),
            green: transform(green),
            blue: transform(blue),
            alpha: transform(alpha)
        )
    }
}

extension PremultipliedRGBA where Channel == UInt8 {
    public init(_ rgbaInt: UInt32) {
        self.init(red: UInt8((rgbaInt >> 24) & 0xFF), green: UInt8((rgbaInt >> 16) & 0xFF), blue: UInt8((rgbaInt >> 8) & 0xFF), alpha: UInt8(rgbaInt & 0xFF))
    }
}

extension PremultipliedRGBA : CustomStringConvertible {
    public var description: String {
        return "PremultipliedRGBA(red: \(red), green: \(green), blue: \(blue), alpha: \(alpha))"
    }
}

extension PremultipliedRGBA : CustomDebugStringConvertible {
    public var debugDescription: String {
        return description
    }
}

extension PremultipliedRGBA : Equatable where Channel : Equatable {
    @inlinable
    public static func ==(lhs: PremultipliedRGBA<Channel>, rhs: PremultipliedRGBA<Channel>) -> Bool {
        return lhs.red == rhs.red && lhs.green == rhs.green && lhs.blue == rhs.blue && lhs.alpha == rhs.alpha
    }
    
    @inlinable
    public static func !=(lhs: PremultipliedRGBA<Channel>, rhs: PremultipliedRGBA<Channel>) -> Bool {
        return lhs.red != rhs.red || lhs.green != rhs.green || lhs.blue != rhs.blue || lhs.alpha != rhs.alpha
    }
}
