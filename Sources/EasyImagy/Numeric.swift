import Foundation

public protocol _Summable {
    static func _sum(_ lhs: Self, _ rhs: Self) -> Self
}

extension Int : _Summable { public static func _sum(_ lhs: Int, _ rhs: Int) -> Int { return lhs + rhs } }
extension Int64 : _Summable { public static func _sum(_ lhs: Int64, _ rhs: Int64) -> Int64 { return lhs + rhs } }
extension Float : _Summable { public static func _sum(_ lhs: Float, _ rhs: Float) -> Float { return lhs + rhs } }
extension Double : _Summable { public static func _sum(_ lhs: Double, _ rhs: Double) -> Double { return lhs + rhs } }
extension RGBA : _Summable where Channel : _Summable {
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func _sum(_ lhs: RGBA<Channel>, _ rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA<Channel>(
            red  : Channel._sum(lhs.red  , rhs.red),
            green: Channel._sum(lhs.green, rhs.green),
            blue : Channel._sum(lhs.blue , rhs.blue),
            alpha: Channel._sum(lhs.alpha, rhs.alpha)
        )
    }
}

public protocol _Numeric {
    associatedtype IntType    : _Summable
    associatedtype FloatType  : _Summable
    associatedtype DoubleType : _Summable

    init(summableI: IntType)
    init(summableF: FloatType)
    init(summableD: DoubleType)
    var summableI: IntType { get }
    var summableF: FloatType { get }
    var summableD: DoubleType { get }
    static var selfZero: Self { get }
    static var summableIZero: IntType { get }
    static var summableFZero: FloatType { get }
    static var summableDZero: DoubleType { get }
    static func productI(_ lhs: IntType, _ rhs: Int) -> IntType
    static func productF(_ lhs: FloatType, _ rhs: Float) -> FloatType
    static func productD(_ lhs: DoubleType, _ rhs: Double) -> DoubleType
    static func quotientI(_ lhs: IntType, _ rhs: Int) -> IntType
    static func quotientF(_ lhs: FloatType, _ rhs: Float) -> FloatType
    static func quotientD(_ lhs: DoubleType, _ rhs: Double) -> DoubleType
}

extension RGBA : _Numeric where Channel : _Numeric {
    public typealias IntType = RGBA<Channel.IntType>
    public typealias FloatType = RGBA<Channel.FloatType>
    public typealias DoubleType = RGBA<Channel.DoubleType>
    
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public init(summableI: RGBA<Channel.IntType>) {
        self = RGBA<Channel>(red: Channel.init(summableI: summableI.red), green: Channel.init(summableI: summableI.green), blue: Channel.init(summableI: summableI.blue), alpha: Channel.init(summableI: summableI.alpha))
    }
    
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public init(summableF: RGBA<Channel.FloatType>) {
        self = RGBA<Channel>(red: Channel.init(summableF: summableF.red), green: Channel.init(summableF: summableF.green), blue: Channel.init(summableF: summableF.blue), alpha: Channel.init(summableF: summableF.alpha))
    }
    
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public init(summableD: RGBA<Channel.DoubleType>) {
        self = RGBA<Channel>(red: Channel.init(summableD: summableD.red), green: Channel.init(summableD: summableD.green), blue: Channel.init(summableD: summableD.blue), alpha: Channel.init(summableD: summableD.alpha))
    }
    
    public var summableI: RGBA<Channel.IntType> {
        return RGBA<Channel.IntType>(red: red.summableI, green: green.summableI, blue: blue.summableI, alpha: alpha.summableI)
    }
    
    public var summableF: RGBA<Channel.FloatType> {
        return RGBA<Channel.FloatType>(red: red.summableF, green: green.summableF, blue: blue.summableF, alpha: alpha.summableF)
    }
    
    public var summableD: RGBA<Channel.DoubleType> {
        return RGBA<Channel.DoubleType>(red: red.summableD, green: green.summableD, blue: blue.summableD, alpha: alpha.summableD)
    }
    
    public static var selfZero: RGBA<Channel> {
        return RGBA<Channel>(red: Channel.selfZero, green: Channel.selfZero, blue: Channel.selfZero, alpha: Channel.selfZero)
    }
    
    public static var summableIZero: RGBA<Channel.IntType> {
        let zero = Channel.summableIZero
        return RGBA<Channel.IntType>(red: zero, green: zero, blue: zero, alpha: zero)
    }
    
    public static var summableFZero: RGBA<Channel.FloatType> {
        let zero = Channel.summableFZero
        return RGBA<Channel.FloatType>(red: zero, green: zero, blue: zero, alpha: zero)
    }
    
    public static var summableDZero: RGBA<Channel.DoubleType> {
        let zero = Channel.summableDZero
        return RGBA<Channel.DoubleType>(red: zero, green: zero, blue: zero, alpha: zero)
    }
    
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func productI(_ lhs: RGBA<Channel.IntType>, _ rhs: Int) -> RGBA<Channel.IntType> {
        return RGBA<Channel.IntType>(red: Channel.productI(lhs.red, rhs), green: Channel.productI(lhs.green, rhs), blue: Channel.productI(lhs.blue, rhs), alpha: Channel.productI(lhs.alpha, rhs))
    }
    
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func productF(_ lhs: RGBA<Channel.FloatType>, _ rhs: Float) -> RGBA<Channel.FloatType> {
        return RGBA<Channel.FloatType>(red: Channel.productF(lhs.red, rhs), green: Channel.productF(lhs.green, rhs), blue: Channel.productF(lhs.blue, rhs), alpha: Channel.productF(lhs.alpha, rhs))
    }
    
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func productD(_ lhs: RGBA<Channel.DoubleType>, _ rhs: Double) -> RGBA<Channel.DoubleType> {
        return RGBA<Channel.DoubleType>(red: Channel.productD(lhs.red, rhs), green: Channel.productD(lhs.green, rhs), blue: Channel.productD(lhs.blue, rhs), alpha: Channel.productD(lhs.alpha, rhs))
    }
    
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func quotientI(_ lhs: RGBA<Channel.IntType>, _ rhs: Int) -> RGBA<Channel.IntType> {
        return RGBA<Channel.IntType>(red: Channel.quotientI(lhs.red, rhs), green: Channel.quotientI(lhs.green, rhs), blue: Channel.quotientI(lhs.blue, rhs), alpha: Channel.quotientI(lhs.alpha, rhs))
    }
    
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func quotientF(_ lhs: RGBA<Channel.FloatType>, _ rhs: Float) -> RGBA<Channel.FloatType> {
        return RGBA<Channel.FloatType>(red: Channel.quotientF(lhs.red, rhs), green: Channel.quotientF(lhs.green, rhs), blue: Channel.quotientF(lhs.blue, rhs), alpha: Channel.quotientF(lhs.alpha, rhs))
    }
    
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func quotientD(_ lhs: RGBA<Channel.DoubleType>, _ rhs: Double) -> RGBA<Channel.DoubleType> {
        return RGBA<Channel.DoubleType>(red: Channel.quotientD(lhs.red, rhs), green: Channel.quotientD(lhs.green, rhs), blue: Channel.quotientD(lhs.blue, rhs), alpha: Channel.quotientD(lhs.alpha, rhs))
    }
}

extension UInt8 : _Numeric {
    public init(summableI: Int) {
        self = UInt8(summableI)
    }

    public init(summableF: Float) {
        self = UInt8(summableF)
    }

    public init(summableD: Double) {
        self = UInt8(summableD)
    }
    
    public var summableI: Int {
        return Int(self)
    }
    
    public var summableF: Float {
        return Float(self)
    }
    
    public var summableD: Double {
        return Double(self)
    }

    public static var selfZero: UInt8 {
        return 0
    }

    
    public static var summableIZero: Int {
        return 0
        
    }
    
    public static var summableFZero: Float {
        return 0
        
    }
    
    public static var summableDZero: Double {
        return 0
        
    }
    
    public static func productI(_ lhs: Int, _ rhs: Int) -> Int {
        return lhs * rhs
    }
    
    public static func productF(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs * rhs
    }
    
    public static func productD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
    
    public static func quotientI(_ lhs: Int, _ rhs: Int) -> Int {
        return lhs / rhs
    }
    
    public static func quotientF(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs / rhs
    }
    
    public static func quotientD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs / rhs
    }
}

extension UInt16 : _Numeric {
    public init(summableI: Int) {
        self = UInt16(summableI)
    }

    public init(summableF: Float) {
        self = UInt16(summableF)
    }

    public init(summableD: Double) {
        self = UInt16(summableD)
    }
    
    public var summableI: Int {
        return Int(self)
    }
    
    public var summableF: Float {
        return Float(self)
    }
    
    public var summableD: Double {
        return Double(self)
    }

    public static var selfZero: UInt16 {
        return 0
    }

    
    public static var summableIZero: Int {
        return 0
        
    }
    
    public static var summableFZero: Float {
        return 0
        
    }
    
    public static var summableDZero: Double {
        return 0
        
    }
    
    public static func productI(_ lhs: Int, _ rhs: Int) -> Int {
        return lhs * rhs
    }
    
    public static func productF(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs * rhs
    }
    
    public static func productD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
    
    public static func quotientI(_ lhs: Int, _ rhs: Int) -> Int {
        return lhs / rhs
    }
    
    public static func quotientF(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs / rhs
    }
    
    public static func quotientD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs / rhs
    }
}

extension UInt32 : _Numeric {
    public init(summableI: Int64) {
        self = UInt32(summableI)
    }

    public init(summableF: Float) {
        self = UInt32(summableF)
    }

    public init(summableD: Double) {
        self = UInt32(summableD)
    }
    
    public var summableI: Int64 {
        return Int64(self)
    }
    
    public var summableF: Float {
        return Float(self)
    }
    
    public var summableD: Double {
        return Double(self)
    }

    public static var selfZero: UInt32 {
        return 0
    }

    
    public static var summableIZero: Int64 {
        return 0
        
    }
    
    public static var summableFZero: Float {
        return 0
        
    }
    
    public static var summableDZero: Double {
        return 0
        
    }
    
    public static func productI(_ lhs: Int64, _ rhs: Int) -> Int64 {
        return lhs * Int64(rhs)
    }
    
    public static func productF(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs * rhs
    }
    
    public static func productD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
    
    public static func quotientI(_ lhs: Int64, _ rhs: Int) -> Int64 {
        return lhs / Int64(rhs)
    }
    
    public static func quotientF(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs / rhs
    }
    
    public static func quotientD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs / rhs
    }
}

extension Int : _Numeric {
    public init(summableI: Int) {
        self = summableI
    }

    public init(summableF: Float) {
        self = Int(summableF)
    }

    public init(summableD: Double) {
        self = Int(summableD)
    }
    
    public var summableI: Int {
        return self
    }
    
    public var summableF: Float {
        return Float(self)
    }
    
    public var summableD: Double {
        return Double(self)
    }

    public static var selfZero: Int {
        return 0
    }

    
    public static var summableIZero: Int {
        return 0
        
    }
    
    public static var summableFZero: Float {
        return 0
        
    }
    
    public static var summableDZero: Double {
        return 0
        
    }
    
    public static func productI(_ lhs: Int, _ rhs: Int) -> Int {
        return lhs * rhs
    }
    
    public static func productF(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs * rhs
    }
    
    public static func productD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
    
    public static func quotientI(_ lhs: Int, _ rhs: Int) -> Int {
        return lhs / rhs
    }
    
    public static func quotientF(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs / rhs
    }
    
    public static func quotientD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs / rhs
    }
}

extension Float : _Numeric {
    public init(summableI: Float) {
        self = summableI
    }

    public init(summableF: Float) {
        self = summableF
    }

    public init(summableD: Double) {
        self = Float(summableD)
    }
    
    public var summableI: Float {
        return self
    }
    
    public var summableF: Float {
        return self
    }
    
    public var summableD: Double {
        return Double(self)
    }

    public static var selfZero: Float {
        return 0
    }

    
    public static var summableIZero: Float {
        return 0
        
    }
    
    public static var summableFZero: Float {
        return 0
        
    }
    
    public static var summableDZero: Double {
        return 0
        
    }
    
    public static func productI(_ lhs: Float, _ rhs: Int) -> Float {
        return lhs * Float(rhs)
    }
    
    public static func productF(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs * rhs
    }
    
    public static func productD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
    
    public static func quotientI(_ lhs: Float, _ rhs: Int) -> Float {
        return lhs / Float(rhs)
    }
    
    public static func quotientF(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs / rhs
    }
    
    public static func quotientD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs / rhs
    }
}

extension Double : _Numeric {
    public init(summableI: Double) {
        self = summableI
    }

    public init(summableF: Double) {
        self = summableF
    }

    public init(summableD: Double) {
        self = summableD
    }
    
    public var summableI: Double {
        return self
    }
    
    public var summableF: Double {
        return self
    }
    
    public var summableD: Double {
        return self
    }

    public static var selfZero: Double {
        return 0
    }

    
    public static var summableIZero: Double {
        return 0
        
    }
    
    public static var summableFZero: Double {
        return 0
        
    }
    
    public static var summableDZero: Double {
        return 0
        
    }
    
    public static func productI(_ lhs: Double, _ rhs: Int) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func productF(_ lhs: Double, _ rhs: Float) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func productD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
    
    public static func quotientI(_ lhs: Double, _ rhs: Int) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func quotientF(_ lhs: Double, _ rhs: Float) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func quotientD(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs / rhs
    }
}
