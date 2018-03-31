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
