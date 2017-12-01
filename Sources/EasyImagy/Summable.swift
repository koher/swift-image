import Foundation

internal protocol _Summable {
    static func +(lhs: Self, rhs: Self) -> Self
}
extension Int: _Summable {}
extension Int64: _Summable {}
extension Float: _Summable {}
extension Double: _Summable {}
extension Float80: _Summable {}

internal protocol _Multipliable {
    static func *(lhs: Self, rhs: Self) -> Self
}
extension Int: _Multipliable {}
extension Int64: _Multipliable {}
extension Float: _Multipliable {}
extension Double: _Multipliable {}
extension Float80: _Multipliable {}

internal func *<T: _Multipliable>(lhs: RGBA<T>, rhs: T) -> RGBA<T> {
    return RGBA<T>(red: lhs.red * rhs, green: lhs.green * rhs, blue: lhs.blue * rhs, alpha: lhs.alpha * rhs)
}

extension RGBA where Channel == UInt8 {
    internal init(summableI: RGBA<Int>) {
        self = RGBA<UInt8>(summableI)
    }

    internal init(summableF: RGBA<Float>) {
        self = RGBA<UInt8>(summableF)
    }

    internal init(summableD: RGBA<Double>) {
        self = RGBA<UInt8>(summableD)
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
        self = RGBA<UInt16>(summableI)
    }

    internal init(summableF: RGBA<Float>) {
        self = RGBA<UInt16>(summableF)
    }

    internal init(summableD: RGBA<Double>) {
        self = RGBA<UInt16>(summableD)
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
        self = RGBA<UInt32>(summableI)
    }

    internal init(summableF: RGBA<Float>) {
        self = RGBA<UInt32>(summableF)
    }

    internal init(summableD: RGBA<Double>) {
        self = RGBA<UInt32>(summableD)
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
        self = summableI
    }

    internal init(summableF: RGBA<Float>) {
        self = RGBA<Int>(summableF)
    }

    internal init(summableD: RGBA<Double>) {
        self = RGBA<Int>(summableD)
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
        self = summableI
    }

    internal init(summableF: RGBA<Float>) {
        self = summableF
    }

    internal init(summableD: RGBA<Double>) {
        self = RGBA<Float>(summableD)
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
        self = summableI
    }

    internal init(summableF: RGBA<Double>) {
        self = summableF
    }

    internal init(summableD: RGBA<Double>) {
        self = summableD
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

extension RGBA where Channel == Float80 {
    internal init(summableI: RGBA<Float80>) {
        self = summableI
    }

    internal init(summableF: RGBA<Float80>) {
        self = summableF
    }

    internal init(summableD: RGBA<Float80>) {
        self = summableD
    }
    
    internal var summableI: RGBA<Float80> {
        return self
    }
    
    internal var summableF: RGBA<Float80> {
        return self
    }
    
    internal var summableD: RGBA<Float80> {
        return self
    }
    
    internal static var summableIZero: RGBA<Float80> {
        return RGBA<Float80>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableFZero: RGBA<Float80> {
        return RGBA<Float80>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableDZero: RGBA<Float80> {
        return RGBA<Float80>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static func productI(_ lhs: RGBA<Float80>, _ rhs: Int) -> RGBA<Float80> {
        return lhs * Float80(rhs)
    }
    
    internal static func productF(_ lhs: RGBA<Float80>, _ rhs: Float) -> RGBA<Float80> {
        return lhs * Float80(rhs)
    }
    
    internal static func productD(_ lhs: RGBA<Float80>, _ rhs: Double) -> RGBA<Float80> {
        return lhs * Float80(rhs)
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
        self = summableI
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
        self = summableI
    }

    internal init(summableF: Float) {
        self = summableF
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
        self = summableI
    }

    internal init(summableF: Double) {
        self = summableF
    }

    internal init(summableD: Double) {
        self = summableD
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

extension Float80 {
    internal init(summableI: Float80) {
        self = summableI
    }

    internal init(summableF: Float80) {
        self = summableF
    }

    internal init(summableD: Float80) {
        self = summableD
    }
    
    internal var summableI: Float80 {
        return self
    }
    
    internal var summableF: Float80 {
        return self
    }
    
    internal var summableD: Float80 {
        return self
    }
    
    internal static var summableIZero: Float80 {
        return 0
        
    }
    
    internal static var summableFZero: Float80 {
        return 0
        
    }
    
    internal static var summableDZero: Float80 {
        return 0
        
    }
    
    internal static func productI(_ lhs: Float80, _ rhs: Int) -> Float80 {
        return lhs * Float80(rhs)
    }
    
    internal static func productF(_ lhs: Float80, _ rhs: Float) -> Float80 {
        return lhs * Float80(rhs)
    }
    
    internal static func productD(_ lhs: Float80, _ rhs: Double) -> Float80 {
        return lhs * Float80(rhs)
    }
}
