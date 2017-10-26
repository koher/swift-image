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
            red: UInt8(summableI.red),
            green: UInt8(summableI.green),
            blue: UInt8(summableI.blue),
            alpha: UInt8(summableI.alpha)
        )
    }

    internal init(summableF: RGBA<Float>) {
        self.init(
            red: UInt8(summableF.red),
            green: UInt8(summableF.green),
            blue: UInt8(summableF.blue),
            alpha: UInt8(summableF.alpha)
        )
    }

    internal init(summableD: RGBA<Double>) {
        self.init(
            red: UInt8(summableD.red),
            green: UInt8(summableD.green),
            blue: UInt8(summableD.blue),
            alpha: UInt8(summableD.alpha)
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
            red: UInt16(summableI.red),
            green: UInt16(summableI.green),
            blue: UInt16(summableI.blue),
            alpha: UInt16(summableI.alpha)
        )
    }

    internal init(summableF: RGBA<Float>) {
        self.init(
            red: UInt16(summableF.red),
            green: UInt16(summableF.green),
            blue: UInt16(summableF.blue),
            alpha: UInt16(summableF.alpha)
        )
    }

    internal init(summableD: RGBA<Double>) {
        self.init(
            red: UInt16(summableD.red),
            green: UInt16(summableD.green),
            blue: UInt16(summableD.blue),
            alpha: UInt16(summableD.alpha)
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
            red: UInt32(summableI.red),
            green: UInt32(summableI.green),
            blue: UInt32(summableI.blue),
            alpha: UInt32(summableI.alpha)
        )
    }

    internal init(summableF: RGBA<Float>) {
        self.init(
            red: UInt32(summableF.red),
            green: UInt32(summableF.green),
            blue: UInt32(summableF.blue),
            alpha: UInt32(summableF.alpha)
        )
    }

    internal init(summableD: RGBA<Double>) {
        self.init(
            red: UInt32(summableD.red),
            green: UInt32(summableD.green),
            blue: UInt32(summableD.blue),
            alpha: UInt32(summableD.alpha)
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
            red: Int(summableI.red),
            green: Int(summableI.green),
            blue: Int(summableI.blue),
            alpha: Int(summableI.alpha)
        )
    }

    internal init(summableF: RGBA<Float>) {
        self.init(
            red: Int(summableF.red),
            green: Int(summableF.green),
            blue: Int(summableF.blue),
            alpha: Int(summableF.alpha)
        )
    }

    internal init(summableD: RGBA<Double>) {
        self.init(
            red: Int(summableD.red),
            green: Int(summableD.green),
            blue: Int(summableD.blue),
            alpha: Int(summableD.alpha)
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
            red: Float(summableI.red),
            green: Float(summableI.green),
            blue: Float(summableI.blue),
            alpha: Float(summableI.alpha)
        )
    }

    internal init(summableF: RGBA<Float>) {
        self.init(
            red: Float(summableF.red),
            green: Float(summableF.green),
            blue: Float(summableF.blue),
            alpha: Float(summableF.alpha)
        )
    }

    internal init(summableD: RGBA<Double>) {
        self.init(
            red: Float(summableD.red),
            green: Float(summableD.green),
            blue: Float(summableD.blue),
            alpha: Float(summableD.alpha)
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
            red: Double(summableI.red),
            green: Double(summableI.green),
            blue: Double(summableI.blue),
            alpha: Double(summableI.alpha)
        )
    }

    internal init(summableF: RGBA<Double>) {
        self.init(
            red: Double(summableF.red),
            green: Double(summableF.green),
            blue: Double(summableF.blue),
            alpha: Double(summableF.alpha)
        )
    }

    internal init(summableD: RGBA<Double>) {
        self.init(
            red: Double(summableD.red),
            green: Double(summableD.green),
            blue: Double(summableD.blue),
            alpha: Double(summableD.alpha)
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
        self = UInt8(summableI)
    }

    internal init(summableF: Float) {
        self = UInt8(summableF)
    }

    internal init(summableD: Double) {
        self = UInt8(summableD)
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
        self = UInt16(summableI)
    }

    internal init(summableF: Float) {
        self = UInt16(summableF)
    }

    internal init(summableD: Double) {
        self = UInt16(summableD)
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
        self = UInt32(summableI)
    }

    internal init(summableF: Float) {
        self = UInt32(summableF)
    }

    internal init(summableD: Double) {
        self = UInt32(summableD)
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
        self = Int(summableI)
    }

    internal init(summableF: Float) {
        self = Int(summableF)
    }

    internal init(summableD: Double) {
        self = Int(summableD)
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
        self = Float(summableI)
    }

    internal init(summableF: Float) {
        self = Float(summableF)
    }

    internal init(summableD: Double) {
        self = Float(summableD)
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
        self = Double(summableI)
    }

    internal init(summableF: Double) {
        self = Double(summableF)
    }

    internal init(summableD: Double) {
        self = Double(summableD)
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
