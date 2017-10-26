import Foundation

internal protocol _Summable {
    static func +(lhs: Self, rhs: Self) -> Self
}
extension Int: _Summable {}
extension Int64: _Summable {}
extension Float: _Summable {}
extension Double: _Summable {}

internal protocol _Multipliable {
    static func *(lhs: Self, rhs: Self) -> Self
}
extension Int: _Multipliable {}
extension Int64: _Multipliable {}
extension Float: _Multipliable {}
extension Double: _Multipliable {}

internal func +<T: _Summable>(lhs: RGBA<T>, rhs: RGBA<T>) -> RGBA<T> {
    return RGBA<T>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
}

internal func *<T: _Multipliable>(lhs: RGBA<T>, rhs: T) -> RGBA<T> {
    return RGBA<T>(red: lhs.red * rhs, green: lhs.green * rhs, blue: lhs.blue * rhs, alpha: lhs.alpha * rhs)
}

extension RGBA where Channel == UInt8 {
    internal init(summableI: RGBA<Int>) {
        self.init(
            red: UInt8(clamp(summableI.red, lower: 0, upper: Int(UInt8.max))),
            green: UInt8(clamp(summableI.green, lower: 0, upper: Int(UInt8.max))),
            blue: UInt8(clamp(summableI.blue, lower: 0, upper: Int(UInt8.max))),
            alpha: UInt8(clamp(summableI.alpha, lower: 0, upper: Int(UInt8.max)))
        )
    }

    internal init(summableF: RGBA<Float>) {
        self.init(
            red: UInt8(clamp(summableF.red, lower: 0, upper: Float(UInt8.max))),
            green: UInt8(clamp(summableF.green, lower: 0, upper: Float(UInt8.max))),
            blue: UInt8(clamp(summableF.blue, lower: 0, upper: Float(UInt8.max))),
            alpha: UInt8(clamp(summableF.alpha, lower: 0, upper: Float(UInt8.max)))
        )
    }

    internal init(summableD: RGBA<Double>) {
        self.init(
            red: UInt8(clamp(summableD.red, lower: 0, upper: Double(UInt8.max))),
            green: UInt8(clamp(summableD.green, lower: 0, upper: Double(UInt8.max))),
            blue: UInt8(clamp(summableD.blue, lower: 0, upper: Double(UInt8.max))),
            alpha: UInt8(clamp(summableD.alpha, lower: 0, upper: Double(UInt8.max)))
        )
    }
    
    internal var summableI: RGBA<Int> {
        return RGBA<Int>(red: Int(red), green: Int(green), blue: Int(blue), alpha: Int(alpha))
    }
    
    internal var summableF: RGBA<Float> {
        return RGBA<Float>(red: Float(red), green: Float(green), blue: Float(blue), alpha: Float(alpha))
    }
    
    internal var summableD: RGBA<Double> {
        return RGBA<Double>(red: Double(red), green: Double(green), blue: Double(blue), alpha: Double(alpha))
    }
    
    internal static var summableIZero: RGBA<Int> {
        return RGBA<Int>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableFZero: RGBA<Float> {
        return RGBA<Float>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableDZero: RGBA<Double> {
        return RGBA<Double>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static func productI(_ lhs: RGBA<Int>, _ rhs: Int) -> RGBA<Int> {
        return lhs * rhs
    }
    
    internal static func productF(_ lhs: RGBA<Float>, _ rhs: Float) -> RGBA<Float> {
        return lhs * rhs
    }
    
    internal static func productD(_ lhs: RGBA<Double>, _ rhs: Double) -> RGBA<Double> {
        return lhs * rhs
    }
}

extension RGBA where Channel == UInt16 {
    internal init(summableI: RGBA<Int>) {
        self.init(
            red: UInt16(clamp(summableI.red, lower: 0, upper: Int(UInt16.max))),
            green: UInt16(clamp(summableI.green, lower: 0, upper: Int(UInt16.max))),
            blue: UInt16(clamp(summableI.blue, lower: 0, upper: Int(UInt16.max))),
            alpha: UInt16(clamp(summableI.alpha, lower: 0, upper: Int(UInt16.max)))
        )
    }

    internal init(summableF: RGBA<Float>) {
        self.init(
            red: UInt16(clamp(summableF.red, lower: 0, upper: Float(UInt16.max))),
            green: UInt16(clamp(summableF.green, lower: 0, upper: Float(UInt16.max))),
            blue: UInt16(clamp(summableF.blue, lower: 0, upper: Float(UInt16.max))),
            alpha: UInt16(clamp(summableF.alpha, lower: 0, upper: Float(UInt16.max)))
        )
    }

    internal init(summableD: RGBA<Double>) {
        self.init(
            red: UInt16(clamp(summableD.red, lower: 0, upper: Double(UInt16.max))),
            green: UInt16(clamp(summableD.green, lower: 0, upper: Double(UInt16.max))),
            blue: UInt16(clamp(summableD.blue, lower: 0, upper: Double(UInt16.max))),
            alpha: UInt16(clamp(summableD.alpha, lower: 0, upper: Double(UInt16.max)))
        )
    }
    
    internal var summableI: RGBA<Int> {
        return RGBA<Int>(red: Int(red), green: Int(green), blue: Int(blue), alpha: Int(alpha))
    }
    
    internal var summableF: RGBA<Float> {
        return RGBA<Float>(red: Float(red), green: Float(green), blue: Float(blue), alpha: Float(alpha))
    }
    
    internal var summableD: RGBA<Double> {
        return RGBA<Double>(red: Double(red), green: Double(green), blue: Double(blue), alpha: Double(alpha))
    }
    
    internal static var summableIZero: RGBA<Int> {
        return RGBA<Int>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableFZero: RGBA<Float> {
        return RGBA<Float>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableDZero: RGBA<Double> {
        return RGBA<Double>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static func productI(_ lhs: RGBA<Int>, _ rhs: Int) -> RGBA<Int> {
        return lhs * rhs
    }
    
    internal static func productF(_ lhs: RGBA<Float>, _ rhs: Float) -> RGBA<Float> {
        return lhs * rhs
    }
    
    internal static func productD(_ lhs: RGBA<Double>, _ rhs: Double) -> RGBA<Double> {
        return lhs * rhs
    }
}

extension RGBA where Channel == UInt32 {
    internal init(summableI: RGBA<Int64>) {
        self.init(
            red: UInt32(clamp(summableI.red, lower: 0, upper: Int64(UInt32.max))),
            green: UInt32(clamp(summableI.green, lower: 0, upper: Int64(UInt32.max))),
            blue: UInt32(clamp(summableI.blue, lower: 0, upper: Int64(UInt32.max))),
            alpha: UInt32(clamp(summableI.alpha, lower: 0, upper: Int64(UInt32.max)))
        )
    }

    internal init(summableF: RGBA<Float>) {
        self.init(
            red: UInt32(clamp(summableF.red, lower: 0, upper: Float(UInt32.max))),
            green: UInt32(clamp(summableF.green, lower: 0, upper: Float(UInt32.max))),
            blue: UInt32(clamp(summableF.blue, lower: 0, upper: Float(UInt32.max))),
            alpha: UInt32(clamp(summableF.alpha, lower: 0, upper: Float(UInt32.max)))
        )
    }

    internal init(summableD: RGBA<Double>) {
        self.init(
            red: UInt32(clamp(summableD.red, lower: 0, upper: Double(UInt32.max))),
            green: UInt32(clamp(summableD.green, lower: 0, upper: Double(UInt32.max))),
            blue: UInt32(clamp(summableD.blue, lower: 0, upper: Double(UInt32.max))),
            alpha: UInt32(clamp(summableD.alpha, lower: 0, upper: Double(UInt32.max)))
        )
    }
    
    internal var summableI: RGBA<Int64> {
        return RGBA<Int64>(red: Int64(red), green: Int64(green), blue: Int64(blue), alpha: Int64(alpha))
    }
    
    internal var summableF: RGBA<Float> {
        return RGBA<Float>(red: Float(red), green: Float(green), blue: Float(blue), alpha: Float(alpha))
    }
    
    internal var summableD: RGBA<Double> {
        return RGBA<Double>(red: Double(red), green: Double(green), blue: Double(blue), alpha: Double(alpha))
    }
    
    internal static var summableIZero: RGBA<Int64> {
        return RGBA<Int64>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableFZero: RGBA<Float> {
        return RGBA<Float>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableDZero: RGBA<Double> {
        return RGBA<Double>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static func productI(_ lhs: RGBA<Int64>, _ rhs: Int) -> RGBA<Int64> {
        return lhs * Int64(rhs)
    }
    
    internal static func productF(_ lhs: RGBA<Float>, _ rhs: Float) -> RGBA<Float> {
        return lhs * rhs
    }
    
    internal static func productD(_ lhs: RGBA<Double>, _ rhs: Double) -> RGBA<Double> {
        return lhs * rhs
    }
}

extension RGBA where Channel == Int {
    internal init(summableI: RGBA<Int>) {
        self.init(
            red: Int(clamp(summableI.red, lower: 0, upper: Int(255))),
            green: Int(clamp(summableI.green, lower: 0, upper: Int(255))),
            blue: Int(clamp(summableI.blue, lower: 0, upper: Int(255))),
            alpha: Int(clamp(summableI.alpha, lower: 0, upper: Int(255)))
        )
    }

    internal init(summableF: RGBA<Float>) {
        self.init(
            red: Int(clamp(summableF.red, lower: 0, upper: Float(255))),
            green: Int(clamp(summableF.green, lower: 0, upper: Float(255))),
            blue: Int(clamp(summableF.blue, lower: 0, upper: Float(255))),
            alpha: Int(clamp(summableF.alpha, lower: 0, upper: Float(255)))
        )
    }

    internal init(summableD: RGBA<Double>) {
        self.init(
            red: Int(clamp(summableD.red, lower: 0, upper: Double(255))),
            green: Int(clamp(summableD.green, lower: 0, upper: Double(255))),
            blue: Int(clamp(summableD.blue, lower: 0, upper: Double(255))),
            alpha: Int(clamp(summableD.alpha, lower: 0, upper: Double(255)))
        )
    }
    
    internal var summableI: RGBA<Int> {
        return self
    }
    
    internal var summableF: RGBA<Float> {
        return RGBA<Float>(red: Float(red), green: Float(green), blue: Float(blue), alpha: Float(alpha))
    }
    
    internal var summableD: RGBA<Double> {
        return RGBA<Double>(red: Double(red), green: Double(green), blue: Double(blue), alpha: Double(alpha))
    }
    
    internal static var summableIZero: RGBA<Int> {
        return RGBA<Int>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableFZero: RGBA<Float> {
        return RGBA<Float>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableDZero: RGBA<Double> {
        return RGBA<Double>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static func productI(_ lhs: RGBA<Int>, _ rhs: Int) -> RGBA<Int> {
        return lhs * rhs
    }
    
    internal static func productF(_ lhs: RGBA<Float>, _ rhs: Float) -> RGBA<Float> {
        return lhs * rhs
    }
    
    internal static func productD(_ lhs: RGBA<Double>, _ rhs: Double) -> RGBA<Double> {
        return lhs * rhs
    }
}

extension RGBA where Channel == Float {
    internal init(summableI: RGBA<Float>) {
        self.init(
            red: Float(clamp(summableI.red, lower: 0, upper: Float(1))),
            green: Float(clamp(summableI.green, lower: 0, upper: Float(1))),
            blue: Float(clamp(summableI.blue, lower: 0, upper: Float(1))),
            alpha: Float(clamp(summableI.alpha, lower: 0, upper: Float(1)))
        )
    }

    internal init(summableF: RGBA<Float>) {
        self.init(
            red: Float(clamp(summableF.red, lower: 0, upper: Float(1))),
            green: Float(clamp(summableF.green, lower: 0, upper: Float(1))),
            blue: Float(clamp(summableF.blue, lower: 0, upper: Float(1))),
            alpha: Float(clamp(summableF.alpha, lower: 0, upper: Float(1)))
        )
    }

    internal init(summableD: RGBA<Double>) {
        self.init(
            red: Float(clamp(summableD.red, lower: 0, upper: Double(1))),
            green: Float(clamp(summableD.green, lower: 0, upper: Double(1))),
            blue: Float(clamp(summableD.blue, lower: 0, upper: Double(1))),
            alpha: Float(clamp(summableD.alpha, lower: 0, upper: Double(1)))
        )
    }
    
    internal var summableI: RGBA<Float> {
        return self
    }
    
    internal var summableF: RGBA<Float> {
        return self
    }
    
    internal var summableD: RGBA<Double> {
        return RGBA<Double>(red: Double(red), green: Double(green), blue: Double(blue), alpha: Double(alpha))
    }
    
    internal static var summableIZero: RGBA<Float> {
        return RGBA<Float>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableFZero: RGBA<Float> {
        return RGBA<Float>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableDZero: RGBA<Double> {
        return RGBA<Double>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static func productI(_ lhs: RGBA<Float>, _ rhs: Int) -> RGBA<Float> {
        return lhs * Float(rhs)
    }
    
    internal static func productF(_ lhs: RGBA<Float>, _ rhs: Float) -> RGBA<Float> {
        return lhs * rhs
    }
    
    internal static func productD(_ lhs: RGBA<Double>, _ rhs: Double) -> RGBA<Double> {
        return lhs * rhs
    }
}

extension RGBA where Channel == Double {
    internal init(summableI: RGBA<Double>) {
        self.init(
            red: Double(clamp(summableI.red, lower: 0, upper: Double(1))),
            green: Double(clamp(summableI.green, lower: 0, upper: Double(1))),
            blue: Double(clamp(summableI.blue, lower: 0, upper: Double(1))),
            alpha: Double(clamp(summableI.alpha, lower: 0, upper: Double(1)))
        )
    }

    internal init(summableF: RGBA<Double>) {
        self.init(
            red: Double(clamp(summableF.red, lower: 0, upper: Double(1))),
            green: Double(clamp(summableF.green, lower: 0, upper: Double(1))),
            blue: Double(clamp(summableF.blue, lower: 0, upper: Double(1))),
            alpha: Double(clamp(summableF.alpha, lower: 0, upper: Double(1)))
        )
    }

    internal init(summableD: RGBA<Double>) {
        self.init(
            red: Double(clamp(summableD.red, lower: 0, upper: Double(1))),
            green: Double(clamp(summableD.green, lower: 0, upper: Double(1))),
            blue: Double(clamp(summableD.blue, lower: 0, upper: Double(1))),
            alpha: Double(clamp(summableD.alpha, lower: 0, upper: Double(1)))
        )
    }
    
    internal var summableI: RGBA<Double> {
        return self
    }
    
    internal var summableF: RGBA<Double> {
        return self
    }
    
    internal var summableD: RGBA<Double> {
        return self
    }
    
    internal static var summableIZero: RGBA<Double> {
        return RGBA<Double>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableFZero: RGBA<Double> {
        return RGBA<Double>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableDZero: RGBA<Double> {
        return RGBA<Double>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static func productI(_ lhs: RGBA<Double>, _ rhs: Int) -> RGBA<Double> {
        return lhs * Double(rhs)
    }
    
    internal static func productF(_ lhs: RGBA<Double>, _ rhs: Float) -> RGBA<Double> {
        return lhs * Double(rhs)
    }
    
    internal static func productD(_ lhs: RGBA<Double>, _ rhs: Double) -> RGBA<Double> {
        return lhs * rhs
    }
}

extension UInt8 {
    internal init(summableI: Int) {
        self = UInt8(clamp(summableI, lower: 0, upper: Int(UInt8.max)))
    }

    internal init(summableF: Float) {
        self = UInt8(clamp(summableF, lower: 0, upper: Float(UInt8.max)))
    }

    internal init(summableD: Double) {
        self = UInt8(clamp(summableD, lower: 0, upper: Double(UInt8.max)))
    }
    
    internal var summableI: Int {
        return Int(self)
    }
    
    internal var summableF: Float {
        return Float(self)
    }
    
    internal var summableD: Double {
        return Double(self)
    }
    
    internal static var summableIZero: Int {
        return 0
        
    }
    
    internal static var summableFZero: Float {
        return 0
        
    }
    
    internal static var summableDZero: Double {
        return 0
        
    }
    
    internal static func productI(_ lhs: Int, _ rhs: Int) -> Int {
        return lhs * rhs
    }
    
    internal static func productF(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs * rhs
    }
    
    internal static func productD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
}

extension UInt16 {
    internal init(summableI: Int) {
        self = UInt16(clamp(summableI, lower: 0, upper: Int(UInt16.max)))
    }

    internal init(summableF: Float) {
        self = UInt16(clamp(summableF, lower: 0, upper: Float(UInt16.max)))
    }

    internal init(summableD: Double) {
        self = UInt16(clamp(summableD, lower: 0, upper: Double(UInt16.max)))
    }
    
    internal var summableI: Int {
        return Int(self)
    }
    
    internal var summableF: Float {
        return Float(self)
    }
    
    internal var summableD: Double {
        return Double(self)
    }
    
    internal static var summableIZero: Int {
        return 0
        
    }
    
    internal static var summableFZero: Float {
        return 0
        
    }
    
    internal static var summableDZero: Double {
        return 0
        
    }
    
    internal static func productI(_ lhs: Int, _ rhs: Int) -> Int {
        return lhs * rhs
    }
    
    internal static func productF(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs * rhs
    }
    
    internal static func productD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
}

extension UInt32 {
    internal init(summableI: Int64) {
        self = UInt32(clamp(summableI, lower: 0, upper: Int64(UInt32.max)))
    }

    internal init(summableF: Float) {
        self = UInt32(clamp(summableF, lower: 0, upper: Float(UInt32.max)))
    }

    internal init(summableD: Double) {
        self = UInt32(clamp(summableD, lower: 0, upper: Double(UInt32.max)))
    }
    
    internal var summableI: Int64 {
        return Int64(self)
    }
    
    internal var summableF: Float {
        return Float(self)
    }
    
    internal var summableD: Double {
        return Double(self)
    }
    
    internal static var summableIZero: Int64 {
        return 0
        
    }
    
    internal static var summableFZero: Float {
        return 0
        
    }
    
    internal static var summableDZero: Double {
        return 0
        
    }
    
    internal static func productI(_ lhs: Int64, _ rhs: Int) -> Int64 {
        return lhs * Int64(rhs)
    }
    
    internal static func productF(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs * rhs
    }
    
    internal static func productD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
}

extension Int {
    internal init(summableI: Int) {
        self = Int(clamp(summableI, lower: 0, upper: Int(255)))
    }

    internal init(summableF: Float) {
        self = Int(clamp(summableF, lower: 0, upper: Float(255)))
    }

    internal init(summableD: Double) {
        self = Int(clamp(summableD, lower: 0, upper: Double(255)))
    }
    
    internal var summableI: Int {
        return self
    }
    
    internal var summableF: Float {
        return Float(self)
    }
    
    internal var summableD: Double {
        return Double(self)
    }
    
    internal static var summableIZero: Int {
        return 0
        
    }
    
    internal static var summableFZero: Float {
        return 0
        
    }
    
    internal static var summableDZero: Double {
        return 0
        
    }
    
    internal static func productI(_ lhs: Int, _ rhs: Int) -> Int {
        return lhs * rhs
    }
    
    internal static func productF(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs * rhs
    }
    
    internal static func productD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
}

extension Float {
    internal init(summableI: Float) {
        self = Float(clamp(summableI, lower: 0, upper: Float(1)))
    }

    internal init(summableF: Float) {
        self = Float(clamp(summableF, lower: 0, upper: Float(1)))
    }

    internal init(summableD: Double) {
        self = Float(clamp(summableD, lower: 0, upper: Double(1)))
    }
    
    internal var summableI: Float {
        return self
    }
    
    internal var summableF: Float {
        return self
    }
    
    internal var summableD: Double {
        return Double(self)
    }
    
    internal static var summableIZero: Float {
        return 0
        
    }
    
    internal static var summableFZero: Float {
        return 0
        
    }
    
    internal static var summableDZero: Double {
        return 0
        
    }
    
    internal static func productI(_ lhs: Float, _ rhs: Int) -> Float {
        return lhs * Float(rhs)
    }
    
    internal static func productF(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs * rhs
    }
    
    internal static func productD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
}

extension Double {
    internal init(summableI: Double) {
        self = Double(clamp(summableI, lower: 0, upper: Double(1)))
    }

    internal init(summableF: Double) {
        self = Double(clamp(summableF, lower: 0, upper: Double(1)))
    }

    internal init(summableD: Double) {
        self = Double(clamp(summableD, lower: 0, upper: Double(1)))
    }
    
    internal var summableI: Double {
        return self
    }
    
    internal var summableF: Double {
        return self
    }
    
    internal var summableD: Double {
        return self
    }
    
    internal static var summableIZero: Double {
        return 0
        
    }
    
    internal static var summableFZero: Double {
        return 0
        
    }
    
    internal static var summableDZero: Double {
        return 0
        
    }
    
    internal static func productI(_ lhs: Double, _ rhs: Int) -> Double {
        return lhs * Double(rhs)
    }
    
    internal static func productF(_ lhs: Double, _ rhs: Float) -> Double {
        return lhs * Double(rhs)
    }
    
    internal static func productD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
}
