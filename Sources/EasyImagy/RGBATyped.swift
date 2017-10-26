extension RGBA where Channel == Int {
    public init(red: Int, green: Int, blue: Int) {
        self.init(red: red, green: green, blue: blue, alpha: 255)
    }
    
    public init(gray: Int) {
        self.init(gray: gray, alpha: 255)
    }

    public static var red: RGBA<Int> {
        return RGBA<Int>(red: 255, green: 0, blue: 0)
    }
    
    public static var green: RGBA<Int> {
        return RGBA<Int>(red: 0, green: 255, blue: 0)
    }
    
    public static var blue: RGBA<Int> {
        return RGBA<Int>(red: 0, green: 0, blue: 255)
    }
    
    public static var black: RGBA<Int> {
        return RGBA<Int>(gray: 0)
    }
    
    public static var white: RGBA<Int> {
        return RGBA<Int>(gray: 255)
    }
    
    public static var transparent: RGBA<Int> {
        return RGBA<Int>(gray: 0, alpha: 0)
    }

    public var gray: Int {
        return Int((Int(red) + Int(green) + Int(blue)) / 3)
    }
}

extension RGBA where Channel == UInt8 {
    public init(red: UInt8, green: UInt8, blue: UInt8) {
        self.init(red: red, green: green, blue: blue, alpha: UInt8.max)
    }
    
    public init(gray: UInt8) {
        self.init(gray: gray, alpha: UInt8.max)
    }

    public static var red: RGBA<UInt8> {
        return RGBA<UInt8>(red: UInt8.max, green: 0, blue: 0)
    }
    
    public static var green: RGBA<UInt8> {
        return RGBA<UInt8>(red: 0, green: UInt8.max, blue: 0)
    }
    
    public static var blue: RGBA<UInt8> {
        return RGBA<UInt8>(red: 0, green: 0, blue: UInt8.max)
    }
    
    public static var black: RGBA<UInt8> {
        return RGBA<UInt8>(gray: 0)
    }
    
    public static var white: RGBA<UInt8> {
        return RGBA<UInt8>(gray: UInt8.max)
    }
    
    public static var transparent: RGBA<UInt8> {
        return RGBA<UInt8>(gray: 0, alpha: 0)
    }

    public var gray: UInt8 {
        return UInt8((UInt(red) + UInt(green) + UInt(blue)) / 3)
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

    public var grayInt: Int {
        return (redInt + greenInt + blueInt) / 3
    }
}

extension RGBA where Channel == UInt16 {
    public init(red: UInt16, green: UInt16, blue: UInt16) {
        self.init(red: red, green: green, blue: blue, alpha: UInt16.max)
    }
    
    public init(gray: UInt16) {
        self.init(gray: gray, alpha: UInt16.max)
    }

    public static var red: RGBA<UInt16> {
        return RGBA<UInt16>(red: UInt16.max, green: 0, blue: 0)
    }
    
    public static var green: RGBA<UInt16> {
        return RGBA<UInt16>(red: 0, green: UInt16.max, blue: 0)
    }
    
    public static var blue: RGBA<UInt16> {
        return RGBA<UInt16>(red: 0, green: 0, blue: UInt16.max)
    }
    
    public static var black: RGBA<UInt16> {
        return RGBA<UInt16>(gray: 0)
    }
    
    public static var white: RGBA<UInt16> {
        return RGBA<UInt16>(gray: UInt16.max)
    }
    
    public static var transparent: RGBA<UInt16> {
        return RGBA<UInt16>(gray: 0, alpha: 0)
    }

    public var gray: UInt16 {
        return UInt16((UInt(red) + UInt(green) + UInt(blue)) / 3)
    }
    
    public init(red: Int, green: Int, blue: Int, alpha: Int) {
        self.init(red: UInt16(red), green: UInt16(green), blue: UInt16(blue), alpha: UInt16(alpha))
    }
    
    public init(red: Int, green: Int, blue: Int) {
        self.init(red: UInt16(red), green: UInt16(green), blue: UInt16(blue))
    }
    
    public init(gray: Int) {
        self.init(gray: UInt16(gray))
    }
    
    public init(gray: Int, alpha: Int) {
        self.init(gray: UInt16(gray), alpha: UInt16(alpha))
    }

    public var redInt: Int {
        get {
            return Int(red)
        }
        set {
            red = UInt16(newValue)
        }
    }
    
    public var greenInt: Int {
        get {
            return Int(green)
        }
        set {
            green = UInt16(newValue)
        }
    }
    
    public var blueInt: Int {
        get {
            return Int(blue)
        }
        set {
            blue = UInt16(newValue)
        }
    }
    
    public var alphaInt: Int {
        get {
            return Int(alpha)
        }
        set {
            alpha = UInt16(newValue)
        }
    }

    public var grayInt: Int {
        return (redInt + greenInt + blueInt) / 3
    }
}

extension RGBA where Channel == UInt32 {
    public init(red: UInt32, green: UInt32, blue: UInt32) {
        self.init(red: red, green: green, blue: blue, alpha: UInt32.max)
    }
    
    public init(gray: UInt32) {
        self.init(gray: gray, alpha: UInt32.max)
    }

    public static var red: RGBA<UInt32> {
        return RGBA<UInt32>(red: UInt32.max, green: 0, blue: 0)
    }
    
    public static var green: RGBA<UInt32> {
        return RGBA<UInt32>(red: 0, green: UInt32.max, blue: 0)
    }
    
    public static var blue: RGBA<UInt32> {
        return RGBA<UInt32>(red: 0, green: 0, blue: UInt32.max)
    }
    
    public static var black: RGBA<UInt32> {
        return RGBA<UInt32>(gray: 0)
    }
    
    public static var white: RGBA<UInt32> {
        return RGBA<UInt32>(gray: UInt32.max)
    }
    
    public static var transparent: RGBA<UInt32> {
        return RGBA<UInt32>(gray: 0, alpha: 0)
    }

    public var gray: UInt32 {
        return UInt32((UInt64(red) + UInt64(green) + UInt64(blue)) / 3)
    }
}

extension RGBA where Channel == UInt64 {
    public init(red: UInt64, green: UInt64, blue: UInt64) {
        self.init(red: red, green: green, blue: blue, alpha: UInt64.max)
    }
    
    public init(gray: UInt64) {
        self.init(gray: gray, alpha: UInt64.max)
    }

    public static var red: RGBA<UInt64> {
        return RGBA<UInt64>(red: UInt64.max, green: 0, blue: 0)
    }
    
    public static var green: RGBA<UInt64> {
        return RGBA<UInt64>(red: 0, green: UInt64.max, blue: 0)
    }
    
    public static var blue: RGBA<UInt64> {
        return RGBA<UInt64>(red: 0, green: 0, blue: UInt64.max)
    }
    
    public static var black: RGBA<UInt64> {
        return RGBA<UInt64>(gray: 0)
    }
    
    public static var white: RGBA<UInt64> {
        return RGBA<UInt64>(gray: UInt64.max)
    }
    
    public static var transparent: RGBA<UInt64> {
        return RGBA<UInt64>(gray: 0, alpha: 0)
    }

    public var gray: UInt64 {
        return UInt64((UInt64(red) + UInt64(green) + UInt64(blue)) / 3)
    }
}

extension RGBA where Channel == Float {
    public init(red: Float, green: Float, blue: Float) {
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
    
    public init(gray: Float) {
        self.init(gray: gray, alpha: 1)
    }

    public static var red: RGBA<Float> {
        return RGBA<Float>(red: 1, green: 0, blue: 0)
    }
    
    public static var green: RGBA<Float> {
        return RGBA<Float>(red: 0, green: 1, blue: 0)
    }
    
    public static var blue: RGBA<Float> {
        return RGBA<Float>(red: 0, green: 0, blue: 1)
    }
    
    public static var black: RGBA<Float> {
        return RGBA<Float>(gray: 0)
    }
    
    public static var white: RGBA<Float> {
        return RGBA<Float>(gray: 1)
    }
    
    public static var transparent: RGBA<Float> {
        return RGBA<Float>(gray: 0, alpha: 0)
    }

    public var gray: Float {
        return Float((Float(red) + Float(green) + Float(blue)) / 3)
    }
}

extension RGBA where Channel == Double {
    public init(red: Double, green: Double, blue: Double) {
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
    
    public init(gray: Double) {
        self.init(gray: gray, alpha: 1)
    }

    public static var red: RGBA<Double> {
        return RGBA<Double>(red: 1, green: 0, blue: 0)
    }
    
    public static var green: RGBA<Double> {
        return RGBA<Double>(red: 0, green: 1, blue: 0)
    }
    
    public static var blue: RGBA<Double> {
        return RGBA<Double>(red: 0, green: 0, blue: 1)
    }
    
    public static var black: RGBA<Double> {
        return RGBA<Double>(gray: 0)
    }
    
    public static var white: RGBA<Double> {
        return RGBA<Double>(gray: 1)
    }
    
    public static var transparent: RGBA<Double> {
        return RGBA<Double>(gray: 0, alpha: 0)
    }

    public var gray: Double {
        return Double((Double(red) + Double(green) + Double(blue)) / 3)
    }
}
