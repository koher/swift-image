import Foundation

internal protocol _Summable {
    static func +(lhs: Self, rhs: Self) -> Self
}
extension Int: _Summable {}
extension Float: _Summable {}
extension Double: _Summable {}

internal protocol _Multipliable {
    static func *(lhs: Self, rhs: Self) -> Self
}
extension Int: _Multipliable {}
extension Float: _Multipliable {}
extension Double: _Multipliable {}

internal func +<T: _Summable>(lhs: RGBA<T>, rhs: RGBA<T>) -> RGBA<T> {
    return RGBA<T>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
}

internal func *<T: _Multipliable>(lhs: RGBA<T>, rhs: T) -> RGBA<T> {
    return RGBA<T>(red: lhs.red * rhs, green: lhs.green * rhs, blue: lhs.blue * rhs, alpha: lhs.alpha * rhs)
}

extension RGBA where Channel == UInt8 {
    internal typealias SummableI = RGBA<Int>
    internal typealias SummableF = RGBA<Float>
    internal typealias SummableD = RGBA<Double>
    
    internal init(summableI: RGBA<Int>) {
        self.init(red: clamp(summableI.red, lower: Int(UInt8.min), upper: Int(UInt8.max)), green: clamp(summableI.green, lower: Int(UInt8.min), upper: Int(UInt8.max)), blue: clamp(summableI.blue, lower: Int(UInt8.min), upper: Int(UInt8.max)), alpha: clamp(summableI.alpha, lower: Int(UInt8.min), upper: Int(UInt8.max)))
    }
    
    internal init(summableF: RGBA<Float>) {
        self.init(red: UInt8(clamp(summableF.red, lower: Float(UInt8.min), upper: Float(UInt8.max))), green: UInt8(clamp(summableF.green, lower: Float(UInt8.min), upper: Float(UInt8.max))), blue: UInt8(clamp(summableF.blue, lower: Float(UInt8.min), upper: Float(UInt8.max))), alpha: UInt8(clamp(summableF.alpha, lower: Float(UInt8.min), upper: Float(UInt8.max))))
    }
    
    internal init(summableD: RGBA<Double>) {
        self.init(red: UInt8(clamp(summableD.red, lower: Double(UInt8.min), upper: Double(UInt8.max))), green: UInt8(clamp(summableD.green, lower: Double(UInt8.min), upper: Double(UInt8.max))), blue: UInt8(clamp(summableD.blue, lower: Double(UInt8.min), upper: Double(UInt8.max))), alpha: UInt8(clamp(summableD.alpha, lower: Double(UInt8.min), upper: Double(UInt8.max))))
    }
    
    internal var summableI: RGBA<Int> {
        return RGBA<Int>(red: redInt, green: greenInt, blue: blueInt, alpha: alphaInt)
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
    
    internal static func productI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * rhs
    }
    
    internal static func productF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    internal static func productD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}

extension UInt8 {
    internal typealias SummableI = Int
    internal typealias SummableF = Float
    internal typealias SummableD = Double
    
    internal init(summableI: Int) {
        self = UInt8(clamp(summableI, lower: Int(UInt8.min), upper: Int(UInt8.max)))
    }
    
    internal init(summableF: Float) {
        self = UInt8(clamp(summableF, lower: Float(UInt8.min), upper: Float(UInt8.max)))
    }
    
    internal init(summableD: Double) {
        self = UInt8(clamp(summableD, lower: Double(UInt8.min), upper: Double(UInt8.max)))
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
    
    internal static func productI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * rhs
    }
    
    internal static func productF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    internal static func productD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}

extension Int {
    internal typealias SummableI = Int
    internal typealias SummableF = Float
    internal typealias SummableD = Double
    
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
    
    internal static func productI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * rhs
    }
    
    internal static func productF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    internal static func productD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}

extension Float {
    internal typealias SummableI = Float
    internal typealias SummableF = Float
    internal typealias SummableD = Double
    
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
    
    internal static func productI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * Float(rhs)
    }
    
    internal static func productF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    internal static func productD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}

extension Double {
    internal typealias SummableI = Double
    internal typealias SummableF = Double
    internal typealias SummableD = Double
    
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
    
    internal static func productI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * Double(rhs)
    }
    
    internal static func productF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * Double(rhs)
    }
    
    internal static func productD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}
