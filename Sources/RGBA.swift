public struct RGBA {
    public var red: UInt8
    public var green: UInt8
    public var blue: UInt8
    public var alpha: UInt8
    
    public init(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
}

extension RGBA { // Additional initializers
    public init(red: UInt8, green: UInt8, blue: UInt8) {
        self.init(red: red, green: green, blue: blue, alpha: 255)
    }
    
    public init(gray: UInt8, alpha: UInt8) {
        self.init(red: gray, green: gray, blue: gray, alpha: alpha)
    }
    
    public init(gray: UInt8) {
        self.init(gray: gray, alpha: 255)
    }
    
    public init(red: Int, green: Int, blue: Int, alpha: Int) {
        self.init(red: UInt8(red), green: UInt8(green), blue: UInt8(blue), alpha: UInt8(alpha))
    }
    
    public init(red: Int, green: Int, blue: Int) {
        self.init(red: UInt8(red), green: UInt8(green), blue: UInt8(blue))
    }
    
    public init(gray: Int) {
        self.init(gray: UInt8(gray))
    }
    
    public init(gray: Int, alpha: Int) {
        self.init(gray: UInt8(gray), alpha: UInt8(alpha))
    }
}

extension RGBA {
    public init(_ rgbaInt: UInt32) {
        self.init(red: UInt8((rgbaInt >> 24) & 0xFF), green: UInt8((rgbaInt >> 16) & 0xFF), blue: UInt8((rgbaInt >> 8) & 0xFF), alpha: UInt8(rgbaInt & 0xFF))
    }
}

extension RGBA : CustomStringConvertible {
    public var description: String {
        return String(format: "#%02X%02X%02X%02X", arguments: [red, green, blue, alpha])
    }
}

extension RGBA : CustomDebugStringConvertible {
    public var debugDescription: String {
        return description
    }
}

extension RGBA : Equatable {
}

public func ==(lhs: RGBA, rhs: RGBA) -> Bool {
    return lhs.red == rhs.red && lhs.green == rhs.green && lhs.blue == rhs.blue && lhs.alpha == rhs.alpha
}

extension RGBA { // Presets
    public static var red: RGBA {
        return RGBA(red: 255, green: 0, blue: 0)
    }
    
    public static var green: RGBA {
        return RGBA(red: 0, green: 255, blue: 0)
    }
    
    public static var blue: RGBA {
        return RGBA(red: 0, green: 0, blue: 255)
    }
    
    public static var black: RGBA {
        return RGBA(gray: 0)
    }
    
    public static var white: RGBA {
        return RGBA(gray: 255)
    }
    
    public static var transparent: RGBA {
        return RGBA(gray: 0, alpha: 0)
    }
}

extension RGBA { // Int getters
    public var redInt: Int {
        get {
            return Int(red)
        }
        set {
            red = UInt8(newValue)
        }
    }
    
    public var greenInt: Int {
        get {
            return Int(green)
        }
        set {
            green = UInt8(newValue)
        }
    }
    
    public var blueInt: Int {
        get {
            return Int(blue)
        }
        set {
            blue = UInt8(newValue)
        }
    }
    
    public var alphaInt: Int {
        get {
            return Int(alpha)
        }
        set {
            alpha = UInt8(newValue)
        }
    }
}

extension RGBA { // Gray
    public var gray: UInt8 {
        return UInt8(grayInt)
    }
    
    public var grayInt: Int {
        return (redInt + greenInt + blueInt) / 3
    }
}
