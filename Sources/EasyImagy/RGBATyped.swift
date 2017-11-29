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
        return UInt8((Int(red) + Int(green) + Int(blue)) / 3)
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
        return UInt16((Int(red) + Int(green) + Int(blue)) / 3)
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
        return (red / 3 + green / 3 + blue / 3) + (red % 3 + green % 3 + blue % 3) / 3
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
        return (red + green + blue) / 3
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
        return (red + green + blue) / 3
    }
}

extension RGBA where Channel == Int {
    public init(_ rgba: RGBA<Int>) {
        self.init(red: Int(rgba.red), green: Int(rgba.green), blue: Int(rgba.blue), alpha: Int(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int8>) {
        self.init(red: Int(rgba.red), green: Int(rgba.green), blue: Int(rgba.blue), alpha: Int(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int16>) {
        self.init(red: Int(rgba.red), green: Int(rgba.green), blue: Int(rgba.blue), alpha: Int(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int32>) {
        self.init(red: Int(rgba.red), green: Int(rgba.green), blue: Int(rgba.blue), alpha: Int(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int64>) {
        self.init(red: Int(rgba.red), green: Int(rgba.green), blue: Int(rgba.blue), alpha: Int(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt>) {
        self.init(red: Int(rgba.red), green: Int(rgba.green), blue: Int(rgba.blue), alpha: Int(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt8>) {
        self.init(red: Int(rgba.red), green: Int(rgba.green), blue: Int(rgba.blue), alpha: Int(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt16>) {
        self.init(red: Int(rgba.red), green: Int(rgba.green), blue: Int(rgba.blue), alpha: Int(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt32>) {
        self.init(red: Int(rgba.red), green: Int(rgba.green), blue: Int(rgba.blue), alpha: Int(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt64>) {
        self.init(red: Int(rgba.red), green: Int(rgba.green), blue: Int(rgba.blue), alpha: Int(rgba.alpha))
    }

    public init(_ rgba: RGBA<Float>) {
        self.init(red: Int(rgba.red), green: Int(rgba.green), blue: Int(rgba.blue), alpha: Int(rgba.alpha))
    }

    public init(_ rgba: RGBA<Double>) {
        self.init(red: Int(rgba.red), green: Int(rgba.green), blue: Int(rgba.blue), alpha: Int(rgba.alpha))
    }
}

extension RGBA where Channel == Int8 {
    public init(_ rgba: RGBA<Int>) {
        self.init(red: Int8(rgba.red), green: Int8(rgba.green), blue: Int8(rgba.blue), alpha: Int8(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int8>) {
        self.init(red: Int8(rgba.red), green: Int8(rgba.green), blue: Int8(rgba.blue), alpha: Int8(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int16>) {
        self.init(red: Int8(rgba.red), green: Int8(rgba.green), blue: Int8(rgba.blue), alpha: Int8(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int32>) {
        self.init(red: Int8(rgba.red), green: Int8(rgba.green), blue: Int8(rgba.blue), alpha: Int8(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int64>) {
        self.init(red: Int8(rgba.red), green: Int8(rgba.green), blue: Int8(rgba.blue), alpha: Int8(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt>) {
        self.init(red: Int8(rgba.red), green: Int8(rgba.green), blue: Int8(rgba.blue), alpha: Int8(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt8>) {
        self.init(red: Int8(rgba.red), green: Int8(rgba.green), blue: Int8(rgba.blue), alpha: Int8(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt16>) {
        self.init(red: Int8(rgba.red), green: Int8(rgba.green), blue: Int8(rgba.blue), alpha: Int8(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt32>) {
        self.init(red: Int8(rgba.red), green: Int8(rgba.green), blue: Int8(rgba.blue), alpha: Int8(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt64>) {
        self.init(red: Int8(rgba.red), green: Int8(rgba.green), blue: Int8(rgba.blue), alpha: Int8(rgba.alpha))
    }

    public init(_ rgba: RGBA<Float>) {
        self.init(red: Int8(rgba.red), green: Int8(rgba.green), blue: Int8(rgba.blue), alpha: Int8(rgba.alpha))
    }

    public init(_ rgba: RGBA<Double>) {
        self.init(red: Int8(rgba.red), green: Int8(rgba.green), blue: Int8(rgba.blue), alpha: Int8(rgba.alpha))
    }
}

extension RGBA where Channel == Int16 {
    public init(_ rgba: RGBA<Int>) {
        self.init(red: Int16(rgba.red), green: Int16(rgba.green), blue: Int16(rgba.blue), alpha: Int16(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int8>) {
        self.init(red: Int16(rgba.red), green: Int16(rgba.green), blue: Int16(rgba.blue), alpha: Int16(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int16>) {
        self.init(red: Int16(rgba.red), green: Int16(rgba.green), blue: Int16(rgba.blue), alpha: Int16(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int32>) {
        self.init(red: Int16(rgba.red), green: Int16(rgba.green), blue: Int16(rgba.blue), alpha: Int16(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int64>) {
        self.init(red: Int16(rgba.red), green: Int16(rgba.green), blue: Int16(rgba.blue), alpha: Int16(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt>) {
        self.init(red: Int16(rgba.red), green: Int16(rgba.green), blue: Int16(rgba.blue), alpha: Int16(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt8>) {
        self.init(red: Int16(rgba.red), green: Int16(rgba.green), blue: Int16(rgba.blue), alpha: Int16(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt16>) {
        self.init(red: Int16(rgba.red), green: Int16(rgba.green), blue: Int16(rgba.blue), alpha: Int16(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt32>) {
        self.init(red: Int16(rgba.red), green: Int16(rgba.green), blue: Int16(rgba.blue), alpha: Int16(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt64>) {
        self.init(red: Int16(rgba.red), green: Int16(rgba.green), blue: Int16(rgba.blue), alpha: Int16(rgba.alpha))
    }

    public init(_ rgba: RGBA<Float>) {
        self.init(red: Int16(rgba.red), green: Int16(rgba.green), blue: Int16(rgba.blue), alpha: Int16(rgba.alpha))
    }

    public init(_ rgba: RGBA<Double>) {
        self.init(red: Int16(rgba.red), green: Int16(rgba.green), blue: Int16(rgba.blue), alpha: Int16(rgba.alpha))
    }
}

extension RGBA where Channel == Int32 {
    public init(_ rgba: RGBA<Int>) {
        self.init(red: Int32(rgba.red), green: Int32(rgba.green), blue: Int32(rgba.blue), alpha: Int32(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int8>) {
        self.init(red: Int32(rgba.red), green: Int32(rgba.green), blue: Int32(rgba.blue), alpha: Int32(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int16>) {
        self.init(red: Int32(rgba.red), green: Int32(rgba.green), blue: Int32(rgba.blue), alpha: Int32(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int32>) {
        self.init(red: Int32(rgba.red), green: Int32(rgba.green), blue: Int32(rgba.blue), alpha: Int32(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int64>) {
        self.init(red: Int32(rgba.red), green: Int32(rgba.green), blue: Int32(rgba.blue), alpha: Int32(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt>) {
        self.init(red: Int32(rgba.red), green: Int32(rgba.green), blue: Int32(rgba.blue), alpha: Int32(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt8>) {
        self.init(red: Int32(rgba.red), green: Int32(rgba.green), blue: Int32(rgba.blue), alpha: Int32(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt16>) {
        self.init(red: Int32(rgba.red), green: Int32(rgba.green), blue: Int32(rgba.blue), alpha: Int32(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt32>) {
        self.init(red: Int32(rgba.red), green: Int32(rgba.green), blue: Int32(rgba.blue), alpha: Int32(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt64>) {
        self.init(red: Int32(rgba.red), green: Int32(rgba.green), blue: Int32(rgba.blue), alpha: Int32(rgba.alpha))
    }

    public init(_ rgba: RGBA<Float>) {
        self.init(red: Int32(rgba.red), green: Int32(rgba.green), blue: Int32(rgba.blue), alpha: Int32(rgba.alpha))
    }

    public init(_ rgba: RGBA<Double>) {
        self.init(red: Int32(rgba.red), green: Int32(rgba.green), blue: Int32(rgba.blue), alpha: Int32(rgba.alpha))
    }
}

extension RGBA where Channel == Int64 {
    public init(_ rgba: RGBA<Int>) {
        self.init(red: Int64(rgba.red), green: Int64(rgba.green), blue: Int64(rgba.blue), alpha: Int64(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int8>) {
        self.init(red: Int64(rgba.red), green: Int64(rgba.green), blue: Int64(rgba.blue), alpha: Int64(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int16>) {
        self.init(red: Int64(rgba.red), green: Int64(rgba.green), blue: Int64(rgba.blue), alpha: Int64(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int32>) {
        self.init(red: Int64(rgba.red), green: Int64(rgba.green), blue: Int64(rgba.blue), alpha: Int64(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int64>) {
        self.init(red: Int64(rgba.red), green: Int64(rgba.green), blue: Int64(rgba.blue), alpha: Int64(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt>) {
        self.init(red: Int64(rgba.red), green: Int64(rgba.green), blue: Int64(rgba.blue), alpha: Int64(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt8>) {
        self.init(red: Int64(rgba.red), green: Int64(rgba.green), blue: Int64(rgba.blue), alpha: Int64(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt16>) {
        self.init(red: Int64(rgba.red), green: Int64(rgba.green), blue: Int64(rgba.blue), alpha: Int64(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt32>) {
        self.init(red: Int64(rgba.red), green: Int64(rgba.green), blue: Int64(rgba.blue), alpha: Int64(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt64>) {
        self.init(red: Int64(rgba.red), green: Int64(rgba.green), blue: Int64(rgba.blue), alpha: Int64(rgba.alpha))
    }

    public init(_ rgba: RGBA<Float>) {
        self.init(red: Int64(rgba.red), green: Int64(rgba.green), blue: Int64(rgba.blue), alpha: Int64(rgba.alpha))
    }

    public init(_ rgba: RGBA<Double>) {
        self.init(red: Int64(rgba.red), green: Int64(rgba.green), blue: Int64(rgba.blue), alpha: Int64(rgba.alpha))
    }
}

extension RGBA where Channel == UInt {
    public init(_ rgba: RGBA<Int>) {
        self.init(red: UInt(rgba.red), green: UInt(rgba.green), blue: UInt(rgba.blue), alpha: UInt(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int8>) {
        self.init(red: UInt(rgba.red), green: UInt(rgba.green), blue: UInt(rgba.blue), alpha: UInt(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int16>) {
        self.init(red: UInt(rgba.red), green: UInt(rgba.green), blue: UInt(rgba.blue), alpha: UInt(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int32>) {
        self.init(red: UInt(rgba.red), green: UInt(rgba.green), blue: UInt(rgba.blue), alpha: UInt(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int64>) {
        self.init(red: UInt(rgba.red), green: UInt(rgba.green), blue: UInt(rgba.blue), alpha: UInt(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt>) {
        self.init(red: UInt(rgba.red), green: UInt(rgba.green), blue: UInt(rgba.blue), alpha: UInt(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt8>) {
        self.init(red: UInt(rgba.red), green: UInt(rgba.green), blue: UInt(rgba.blue), alpha: UInt(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt16>) {
        self.init(red: UInt(rgba.red), green: UInt(rgba.green), blue: UInt(rgba.blue), alpha: UInt(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt32>) {
        self.init(red: UInt(rgba.red), green: UInt(rgba.green), blue: UInt(rgba.blue), alpha: UInt(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt64>) {
        self.init(red: UInt(rgba.red), green: UInt(rgba.green), blue: UInt(rgba.blue), alpha: UInt(rgba.alpha))
    }

    public init(_ rgba: RGBA<Float>) {
        self.init(red: UInt(rgba.red), green: UInt(rgba.green), blue: UInt(rgba.blue), alpha: UInt(rgba.alpha))
    }

    public init(_ rgba: RGBA<Double>) {
        self.init(red: UInt(rgba.red), green: UInt(rgba.green), blue: UInt(rgba.blue), alpha: UInt(rgba.alpha))
    }
}

extension RGBA where Channel == UInt8 {
    public init(_ rgba: RGBA<Int>) {
        self.init(red: UInt8(rgba.red), green: UInt8(rgba.green), blue: UInt8(rgba.blue), alpha: UInt8(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int8>) {
        self.init(red: UInt8(rgba.red), green: UInt8(rgba.green), blue: UInt8(rgba.blue), alpha: UInt8(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int16>) {
        self.init(red: UInt8(rgba.red), green: UInt8(rgba.green), blue: UInt8(rgba.blue), alpha: UInt8(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int32>) {
        self.init(red: UInt8(rgba.red), green: UInt8(rgba.green), blue: UInt8(rgba.blue), alpha: UInt8(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int64>) {
        self.init(red: UInt8(rgba.red), green: UInt8(rgba.green), blue: UInt8(rgba.blue), alpha: UInt8(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt>) {
        self.init(red: UInt8(rgba.red), green: UInt8(rgba.green), blue: UInt8(rgba.blue), alpha: UInt8(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt8>) {
        self.init(red: UInt8(rgba.red), green: UInt8(rgba.green), blue: UInt8(rgba.blue), alpha: UInt8(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt16>) {
        self.init(red: UInt8(rgba.red), green: UInt8(rgba.green), blue: UInt8(rgba.blue), alpha: UInt8(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt32>) {
        self.init(red: UInt8(rgba.red), green: UInt8(rgba.green), blue: UInt8(rgba.blue), alpha: UInt8(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt64>) {
        self.init(red: UInt8(rgba.red), green: UInt8(rgba.green), blue: UInt8(rgba.blue), alpha: UInt8(rgba.alpha))
    }

    public init(_ rgba: RGBA<Float>) {
        self.init(red: UInt8(rgba.red), green: UInt8(rgba.green), blue: UInt8(rgba.blue), alpha: UInt8(rgba.alpha))
    }

    public init(_ rgba: RGBA<Double>) {
        self.init(red: UInt8(rgba.red), green: UInt8(rgba.green), blue: UInt8(rgba.blue), alpha: UInt8(rgba.alpha))
    }
}

extension RGBA where Channel == UInt16 {
    public init(_ rgba: RGBA<Int>) {
        self.init(red: UInt16(rgba.red), green: UInt16(rgba.green), blue: UInt16(rgba.blue), alpha: UInt16(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int8>) {
        self.init(red: UInt16(rgba.red), green: UInt16(rgba.green), blue: UInt16(rgba.blue), alpha: UInt16(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int16>) {
        self.init(red: UInt16(rgba.red), green: UInt16(rgba.green), blue: UInt16(rgba.blue), alpha: UInt16(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int32>) {
        self.init(red: UInt16(rgba.red), green: UInt16(rgba.green), blue: UInt16(rgba.blue), alpha: UInt16(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int64>) {
        self.init(red: UInt16(rgba.red), green: UInt16(rgba.green), blue: UInt16(rgba.blue), alpha: UInt16(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt>) {
        self.init(red: UInt16(rgba.red), green: UInt16(rgba.green), blue: UInt16(rgba.blue), alpha: UInt16(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt8>) {
        self.init(red: UInt16(rgba.red), green: UInt16(rgba.green), blue: UInt16(rgba.blue), alpha: UInt16(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt16>) {
        self.init(red: UInt16(rgba.red), green: UInt16(rgba.green), blue: UInt16(rgba.blue), alpha: UInt16(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt32>) {
        self.init(red: UInt16(rgba.red), green: UInt16(rgba.green), blue: UInt16(rgba.blue), alpha: UInt16(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt64>) {
        self.init(red: UInt16(rgba.red), green: UInt16(rgba.green), blue: UInt16(rgba.blue), alpha: UInt16(rgba.alpha))
    }

    public init(_ rgba: RGBA<Float>) {
        self.init(red: UInt16(rgba.red), green: UInt16(rgba.green), blue: UInt16(rgba.blue), alpha: UInt16(rgba.alpha))
    }

    public init(_ rgba: RGBA<Double>) {
        self.init(red: UInt16(rgba.red), green: UInt16(rgba.green), blue: UInt16(rgba.blue), alpha: UInt16(rgba.alpha))
    }
}

extension RGBA where Channel == UInt32 {
    public init(_ rgba: RGBA<Int>) {
        self.init(red: UInt32(rgba.red), green: UInt32(rgba.green), blue: UInt32(rgba.blue), alpha: UInt32(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int8>) {
        self.init(red: UInt32(rgba.red), green: UInt32(rgba.green), blue: UInt32(rgba.blue), alpha: UInt32(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int16>) {
        self.init(red: UInt32(rgba.red), green: UInt32(rgba.green), blue: UInt32(rgba.blue), alpha: UInt32(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int32>) {
        self.init(red: UInt32(rgba.red), green: UInt32(rgba.green), blue: UInt32(rgba.blue), alpha: UInt32(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int64>) {
        self.init(red: UInt32(rgba.red), green: UInt32(rgba.green), blue: UInt32(rgba.blue), alpha: UInt32(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt>) {
        self.init(red: UInt32(rgba.red), green: UInt32(rgba.green), blue: UInt32(rgba.blue), alpha: UInt32(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt8>) {
        self.init(red: UInt32(rgba.red), green: UInt32(rgba.green), blue: UInt32(rgba.blue), alpha: UInt32(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt16>) {
        self.init(red: UInt32(rgba.red), green: UInt32(rgba.green), blue: UInt32(rgba.blue), alpha: UInt32(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt32>) {
        self.init(red: UInt32(rgba.red), green: UInt32(rgba.green), blue: UInt32(rgba.blue), alpha: UInt32(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt64>) {
        self.init(red: UInt32(rgba.red), green: UInt32(rgba.green), blue: UInt32(rgba.blue), alpha: UInt32(rgba.alpha))
    }

    public init(_ rgba: RGBA<Float>) {
        self.init(red: UInt32(rgba.red), green: UInt32(rgba.green), blue: UInt32(rgba.blue), alpha: UInt32(rgba.alpha))
    }

    public init(_ rgba: RGBA<Double>) {
        self.init(red: UInt32(rgba.red), green: UInt32(rgba.green), blue: UInt32(rgba.blue), alpha: UInt32(rgba.alpha))
    }
}

extension RGBA where Channel == UInt64 {
    public init(_ rgba: RGBA<Int>) {
        self.init(red: UInt64(rgba.red), green: UInt64(rgba.green), blue: UInt64(rgba.blue), alpha: UInt64(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int8>) {
        self.init(red: UInt64(rgba.red), green: UInt64(rgba.green), blue: UInt64(rgba.blue), alpha: UInt64(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int16>) {
        self.init(red: UInt64(rgba.red), green: UInt64(rgba.green), blue: UInt64(rgba.blue), alpha: UInt64(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int32>) {
        self.init(red: UInt64(rgba.red), green: UInt64(rgba.green), blue: UInt64(rgba.blue), alpha: UInt64(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int64>) {
        self.init(red: UInt64(rgba.red), green: UInt64(rgba.green), blue: UInt64(rgba.blue), alpha: UInt64(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt>) {
        self.init(red: UInt64(rgba.red), green: UInt64(rgba.green), blue: UInt64(rgba.blue), alpha: UInt64(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt8>) {
        self.init(red: UInt64(rgba.red), green: UInt64(rgba.green), blue: UInt64(rgba.blue), alpha: UInt64(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt16>) {
        self.init(red: UInt64(rgba.red), green: UInt64(rgba.green), blue: UInt64(rgba.blue), alpha: UInt64(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt32>) {
        self.init(red: UInt64(rgba.red), green: UInt64(rgba.green), blue: UInt64(rgba.blue), alpha: UInt64(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt64>) {
        self.init(red: UInt64(rgba.red), green: UInt64(rgba.green), blue: UInt64(rgba.blue), alpha: UInt64(rgba.alpha))
    }

    public init(_ rgba: RGBA<Float>) {
        self.init(red: UInt64(rgba.red), green: UInt64(rgba.green), blue: UInt64(rgba.blue), alpha: UInt64(rgba.alpha))
    }

    public init(_ rgba: RGBA<Double>) {
        self.init(red: UInt64(rgba.red), green: UInt64(rgba.green), blue: UInt64(rgba.blue), alpha: UInt64(rgba.alpha))
    }
}

extension RGBA where Channel == Float {
    public init(_ rgba: RGBA<Int>) {
        self.init(red: Float(rgba.red), green: Float(rgba.green), blue: Float(rgba.blue), alpha: Float(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int8>) {
        self.init(red: Float(rgba.red), green: Float(rgba.green), blue: Float(rgba.blue), alpha: Float(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int16>) {
        self.init(red: Float(rgba.red), green: Float(rgba.green), blue: Float(rgba.blue), alpha: Float(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int32>) {
        self.init(red: Float(rgba.red), green: Float(rgba.green), blue: Float(rgba.blue), alpha: Float(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int64>) {
        self.init(red: Float(rgba.red), green: Float(rgba.green), blue: Float(rgba.blue), alpha: Float(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt>) {
        self.init(red: Float(rgba.red), green: Float(rgba.green), blue: Float(rgba.blue), alpha: Float(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt8>) {
        self.init(red: Float(rgba.red), green: Float(rgba.green), blue: Float(rgba.blue), alpha: Float(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt16>) {
        self.init(red: Float(rgba.red), green: Float(rgba.green), blue: Float(rgba.blue), alpha: Float(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt32>) {
        self.init(red: Float(rgba.red), green: Float(rgba.green), blue: Float(rgba.blue), alpha: Float(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt64>) {
        self.init(red: Float(rgba.red), green: Float(rgba.green), blue: Float(rgba.blue), alpha: Float(rgba.alpha))
    }

    public init(_ rgba: RGBA<Float>) {
        self.init(red: Float(rgba.red), green: Float(rgba.green), blue: Float(rgba.blue), alpha: Float(rgba.alpha))
    }

    public init(_ rgba: RGBA<Double>) {
        self.init(red: Float(rgba.red), green: Float(rgba.green), blue: Float(rgba.blue), alpha: Float(rgba.alpha))
    }
}

extension RGBA where Channel == Double {
    public init(_ rgba: RGBA<Int>) {
        self.init(red: Double(rgba.red), green: Double(rgba.green), blue: Double(rgba.blue), alpha: Double(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int8>) {
        self.init(red: Double(rgba.red), green: Double(rgba.green), blue: Double(rgba.blue), alpha: Double(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int16>) {
        self.init(red: Double(rgba.red), green: Double(rgba.green), blue: Double(rgba.blue), alpha: Double(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int32>) {
        self.init(red: Double(rgba.red), green: Double(rgba.green), blue: Double(rgba.blue), alpha: Double(rgba.alpha))
    }

    public init(_ rgba: RGBA<Int64>) {
        self.init(red: Double(rgba.red), green: Double(rgba.green), blue: Double(rgba.blue), alpha: Double(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt>) {
        self.init(red: Double(rgba.red), green: Double(rgba.green), blue: Double(rgba.blue), alpha: Double(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt8>) {
        self.init(red: Double(rgba.red), green: Double(rgba.green), blue: Double(rgba.blue), alpha: Double(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt16>) {
        self.init(red: Double(rgba.red), green: Double(rgba.green), blue: Double(rgba.blue), alpha: Double(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt32>) {
        self.init(red: Double(rgba.red), green: Double(rgba.green), blue: Double(rgba.blue), alpha: Double(rgba.alpha))
    }

    public init(_ rgba: RGBA<UInt64>) {
        self.init(red: Double(rgba.red), green: Double(rgba.green), blue: Double(rgba.blue), alpha: Double(rgba.alpha))
    }

    public init(_ rgba: RGBA<Float>) {
        self.init(red: Double(rgba.red), green: Double(rgba.green), blue: Double(rgba.blue), alpha: Double(rgba.alpha))
    }

    public init(_ rgba: RGBA<Double>) {
        self.init(red: Double(rgba.red), green: Double(rgba.green), blue: Double(rgba.blue), alpha: Double(rgba.alpha))
    }
}
