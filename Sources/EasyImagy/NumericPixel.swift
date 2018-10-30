import Foundation

public protocol _Summable {
    static func _ez_sum(_ lhs: Self, _ rhs: Self) -> Self
}

extension Int : _Summable { public static func _ez_sum(_ lhs: Int, _ rhs: Int) -> Int { return lhs + rhs } }
extension Int64 : _Summable { public static func _ez_sum(_ lhs: Int64, _ rhs: Int64) -> Int64 { return lhs + rhs } }
extension Float : _Summable { public static func _ez_sum(_ lhs: Float, _ rhs: Float) -> Float { return lhs + rhs } }
extension Double : _Summable { public static func _ez_sum(_ lhs: Double, _ rhs: Double) -> Double { return lhs + rhs } }
extension RGBA : _Summable where Channel : _Summable {
    @inlinable
    public static func _ez_sum(_ lhs: RGBA<Channel>, _ rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA<Channel>(
            red  : Channel._ez_sum(lhs.red  , rhs.red),
            green: Channel._ez_sum(lhs.green, rhs.green),
            blue : Channel._ez_sum(lhs.blue , rhs.blue),
            alpha: Channel._ez_sum(lhs.alpha, rhs.alpha)
        )
    }
}

public protocol _NumericPixel {
    associatedtype IntType    : _Summable
    associatedtype FloatType  : _Summable
    associatedtype DoubleType : _Summable

    init(_ez_summableInt: IntType)
    init(_ez_summableFloat: FloatType)
    init(_ez_summableDouble: DoubleType)
    var _ez_summableInt: IntType { get }
    var _ez_summableFloat: FloatType { get }
    var _ez_summableDouble: DoubleType { get }
    static var _ez_zero: Self { get }
    static var _ez_summableIntZero: IntType { get }
    static var _ez_summableFloatZero: FloatType { get }
    static var _ez_summableDoubleZero: DoubleType { get }
    static func _ez_productInt(_ lhs: IntType, _ rhs: Int) -> IntType
    static func _ez_productFloat(_ lhs: FloatType, _ rhs: Float) -> FloatType
    static func _ez_productDouble(_ lhs: DoubleType, _ rhs: Double) -> DoubleType
    static func _ez_quotientInt(_ lhs: IntType, _ rhs: Int) -> IntType
    static func _ez_quotientFloat(_ lhs: FloatType, _ rhs: Float) -> FloatType
    static func _ez_quotientDouble(_ lhs: DoubleType, _ rhs: Double) -> DoubleType
}

extension RGBA : _NumericPixel where Channel : _NumericPixel {
    public typealias IntType = RGBA<Channel.IntType>
    public typealias FloatType = RGBA<Channel.FloatType>
    public typealias DoubleType = RGBA<Channel.DoubleType>
    
    @inlinable
    public init(_ez_summableInt: RGBA<Channel.IntType>) {
        self = RGBA<Channel>(red: Channel.init(_ez_summableInt: _ez_summableInt.red), green: Channel.init(_ez_summableInt: _ez_summableInt.green), blue: Channel.init(_ez_summableInt: _ez_summableInt.blue), alpha: Channel.init(_ez_summableInt: _ez_summableInt.alpha))
    }
    
    @inlinable
    public init(_ez_summableFloat: RGBA<Channel.FloatType>) {
        self = RGBA<Channel>(red: Channel.init(_ez_summableFloat: _ez_summableFloat.red), green: Channel.init(_ez_summableFloat: _ez_summableFloat.green), blue: Channel.init(_ez_summableFloat: _ez_summableFloat.blue), alpha: Channel.init(_ez_summableFloat: _ez_summableFloat.alpha))
    }
    
    @inlinable
    public init(_ez_summableDouble: RGBA<Channel.DoubleType>) {
        self = RGBA<Channel>(red: Channel.init(_ez_summableDouble: _ez_summableDouble.red), green: Channel.init(_ez_summableDouble: _ez_summableDouble.green), blue: Channel.init(_ez_summableDouble: _ez_summableDouble.blue), alpha: Channel.init(_ez_summableDouble: _ez_summableDouble.alpha))
    }
    
    public var _ez_summableInt: RGBA<Channel.IntType> {
        return RGBA<Channel.IntType>(red: red._ez_summableInt, green: green._ez_summableInt, blue: blue._ez_summableInt, alpha: alpha._ez_summableInt)
    }
    
    public var _ez_summableFloat: RGBA<Channel.FloatType> {
        return RGBA<Channel.FloatType>(red: red._ez_summableFloat, green: green._ez_summableFloat, blue: blue._ez_summableFloat, alpha: alpha._ez_summableFloat)
    }
    
    public var _ez_summableDouble: RGBA<Channel.DoubleType> {
        return RGBA<Channel.DoubleType>(red: red._ez_summableDouble, green: green._ez_summableDouble, blue: blue._ez_summableDouble, alpha: alpha._ez_summableDouble)
    }
    
    public static var _ez_zero: RGBA<Channel> {
        return RGBA<Channel>(red: Channel._ez_zero, green: Channel._ez_zero, blue: Channel._ez_zero, alpha: Channel._ez_zero)
    }
    
    public static var _ez_summableIntZero: RGBA<Channel.IntType> {
        let zero = Channel._ez_summableIntZero
        return RGBA<Channel.IntType>(red: zero, green: zero, blue: zero, alpha: zero)
    }
    
    public static var _ez_summableFloatZero: RGBA<Channel.FloatType> {
        let zero = Channel._ez_summableFloatZero
        return RGBA<Channel.FloatType>(red: zero, green: zero, blue: zero, alpha: zero)
    }
    
    public static var _ez_summableDoubleZero: RGBA<Channel.DoubleType> {
        let zero = Channel._ez_summableDoubleZero
        return RGBA<Channel.DoubleType>(red: zero, green: zero, blue: zero, alpha: zero)
    }
    
    @inlinable
    public static func _ez_productInt(_ lhs: RGBA<Channel.IntType>, _ rhs: Int) -> RGBA<Channel.IntType> {
        return RGBA<Channel.IntType>(red: Channel._ez_productInt(lhs.red, rhs), green: Channel._ez_productInt(lhs.green, rhs), blue: Channel._ez_productInt(lhs.blue, rhs), alpha: Channel._ez_productInt(lhs.alpha, rhs))
    }
    
    @inlinable
    public static func _ez_productFloat(_ lhs: RGBA<Channel.FloatType>, _ rhs: Float) -> RGBA<Channel.FloatType> {
        return RGBA<Channel.FloatType>(red: Channel._ez_productFloat(lhs.red, rhs), green: Channel._ez_productFloat(lhs.green, rhs), blue: Channel._ez_productFloat(lhs.blue, rhs), alpha: Channel._ez_productFloat(lhs.alpha, rhs))
    }
    
    @inlinable
    public static func _ez_productDouble(_ lhs: RGBA<Channel.DoubleType>, _ rhs: Double) -> RGBA<Channel.DoubleType> {
        return RGBA<Channel.DoubleType>(red: Channel._ez_productDouble(lhs.red, rhs), green: Channel._ez_productDouble(lhs.green, rhs), blue: Channel._ez_productDouble(lhs.blue, rhs), alpha: Channel._ez_productDouble(lhs.alpha, rhs))
    }
    
    @inlinable
    public static func _ez_quotientInt(_ lhs: RGBA<Channel.IntType>, _ rhs: Int) -> RGBA<Channel.IntType> {
        return RGBA<Channel.IntType>(red: Channel._ez_quotientInt(lhs.red, rhs), green: Channel._ez_quotientInt(lhs.green, rhs), blue: Channel._ez_quotientInt(lhs.blue, rhs), alpha: Channel._ez_quotientInt(lhs.alpha, rhs))
    }
    
    @inlinable
    public static func _ez_quotientFloat(_ lhs: RGBA<Channel.FloatType>, _ rhs: Float) -> RGBA<Channel.FloatType> {
        return RGBA<Channel.FloatType>(red: Channel._ez_quotientFloat(lhs.red, rhs), green: Channel._ez_quotientFloat(lhs.green, rhs), blue: Channel._ez_quotientFloat(lhs.blue, rhs), alpha: Channel._ez_quotientFloat(lhs.alpha, rhs))
    }
    
    @inlinable
    public static func _ez_quotientDouble(_ lhs: RGBA<Channel.DoubleType>, _ rhs: Double) -> RGBA<Channel.DoubleType> {
        return RGBA<Channel.DoubleType>(red: Channel._ez_quotientDouble(lhs.red, rhs), green: Channel._ez_quotientDouble(lhs.green, rhs), blue: Channel._ez_quotientDouble(lhs.blue, rhs), alpha: Channel._ez_quotientDouble(lhs.alpha, rhs))
    }
}

extension UInt8 : _NumericPixel {
    public init(_ez_summableInt: Int) {
        self = UInt8(_ez_summableInt)
    }

    public init(_ez_summableFloat: Float) {
        self = UInt8(_ez_summableFloat)
    }

    public init(_ez_summableDouble: Double) {
        self = UInt8(_ez_summableDouble)
    }
    
    public var _ez_summableInt: Int {
        return Int(self)
    }
    
    public var _ez_summableFloat: Float {
        return Float(self)
    }
    
    public var _ez_summableDouble: Double {
        return Double(self)
    }

    public static var _ez_zero: UInt8 {
        return 0
    }

    
    public static var _ez_summableIntZero: Int {
        return 0
        
    }
    
    public static var _ez_summableFloatZero: Float {
        return 0
        
    }
    
    public static var _ez_summableDoubleZero: Double {
        return 0
        
    }
    
    public static func _ez_productInt(_ lhs: Int, _ rhs: Int) -> Int {
        return lhs * rhs
    }
    
    public static func _ez_productFloat(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs * rhs
    }
    
    public static func _ez_productDouble(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
    
    public static func _ez_quotientInt(_ lhs: Int, _ rhs: Int) -> Int {
        return lhs / rhs
    }
    
    public static func _ez_quotientFloat(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs / rhs
    }
    
    public static func _ez_quotientDouble(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs / rhs
    }
}

extension UInt16 : _NumericPixel {
    public init(_ez_summableInt: Int) {
        self = UInt16(_ez_summableInt)
    }

    public init(_ez_summableFloat: Float) {
        self = UInt16(_ez_summableFloat)
    }

    public init(_ez_summableDouble: Double) {
        self = UInt16(_ez_summableDouble)
    }
    
    public var _ez_summableInt: Int {
        return Int(self)
    }
    
    public var _ez_summableFloat: Float {
        return Float(self)
    }
    
    public var _ez_summableDouble: Double {
        return Double(self)
    }

    public static var _ez_zero: UInt16 {
        return 0
    }

    
    public static var _ez_summableIntZero: Int {
        return 0
        
    }
    
    public static var _ez_summableFloatZero: Float {
        return 0
        
    }
    
    public static var _ez_summableDoubleZero: Double {
        return 0
        
    }
    
    public static func _ez_productInt(_ lhs: Int, _ rhs: Int) -> Int {
        return lhs * rhs
    }
    
    public static func _ez_productFloat(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs * rhs
    }
    
    public static func _ez_productDouble(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
    
    public static func _ez_quotientInt(_ lhs: Int, _ rhs: Int) -> Int {
        return lhs / rhs
    }
    
    public static func _ez_quotientFloat(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs / rhs
    }
    
    public static func _ez_quotientDouble(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs / rhs
    }
}

extension Int : _NumericPixel {
    public init(_ez_summableInt: Int) {
        self = _ez_summableInt
    }

    public init(_ez_summableFloat: Float) {
        self = Int(_ez_summableFloat)
    }

    public init(_ez_summableDouble: Double) {
        self = Int(_ez_summableDouble)
    }
    
    public var _ez_summableInt: Int {
        return self
    }
    
    public var _ez_summableFloat: Float {
        return Float(self)
    }
    
    public var _ez_summableDouble: Double {
        return Double(self)
    }

    public static var _ez_zero: Int {
        return 0
    }

    
    public static var _ez_summableIntZero: Int {
        return 0
        
    }
    
    public static var _ez_summableFloatZero: Float {
        return 0
        
    }
    
    public static var _ez_summableDoubleZero: Double {
        return 0
        
    }
    
    public static func _ez_productInt(_ lhs: Int, _ rhs: Int) -> Int {
        return lhs * rhs
    }
    
    public static func _ez_productFloat(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs * rhs
    }
    
    public static func _ez_productDouble(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
    
    public static func _ez_quotientInt(_ lhs: Int, _ rhs: Int) -> Int {
        return lhs / rhs
    }
    
    public static func _ez_quotientFloat(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs / rhs
    }
    
    public static func _ez_quotientDouble(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs / rhs
    }
}

extension Float : _NumericPixel {
    public init(_ez_summableInt: Float) {
        self = _ez_summableInt
    }

    public init(_ez_summableFloat: Float) {
        self = _ez_summableFloat
    }

    public init(_ez_summableDouble: Double) {
        self = Float(_ez_summableDouble)
    }
    
    public var _ez_summableInt: Float {
        return self
    }
    
    public var _ez_summableFloat: Float {
        return self
    }
    
    public var _ez_summableDouble: Double {
        return Double(self)
    }

    public static var _ez_zero: Float {
        return 0
    }

    
    public static var _ez_summableIntZero: Float {
        return 0
        
    }
    
    public static var _ez_summableFloatZero: Float {
        return 0
        
    }
    
    public static var _ez_summableDoubleZero: Double {
        return 0
        
    }
    
    public static func _ez_productInt(_ lhs: Float, _ rhs: Int) -> Float {
        return lhs * Float(rhs)
    }
    
    public static func _ez_productFloat(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs * rhs
    }
    
    public static func _ez_productDouble(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
    
    public static func _ez_quotientInt(_ lhs: Float, _ rhs: Int) -> Float {
        return lhs / Float(rhs)
    }
    
    public static func _ez_quotientFloat(_ lhs: Float, _ rhs: Float) -> Float {
        return lhs / rhs
    }
    
    public static func _ez_quotientDouble(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs / rhs
    }
}

extension Double : _NumericPixel {
    public init(_ez_summableInt: Double) {
        self = _ez_summableInt
    }

    public init(_ez_summableFloat: Double) {
        self = _ez_summableFloat
    }

    public init(_ez_summableDouble: Double) {
        self = _ez_summableDouble
    }
    
    public var _ez_summableInt: Double {
        return self
    }
    
    public var _ez_summableFloat: Double {
        return self
    }
    
    public var _ez_summableDouble: Double {
        return self
    }

    public static var _ez_zero: Double {
        return 0
    }

    
    public static var _ez_summableIntZero: Double {
        return 0
        
    }
    
    public static var _ez_summableFloatZero: Double {
        return 0
        
    }
    
    public static var _ez_summableDoubleZero: Double {
        return 0
        
    }
    
    public static func _ez_productInt(_ lhs: Double, _ rhs: Int) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func _ez_productFloat(_ lhs: Double, _ rhs: Float) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func _ez_productDouble(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs * rhs
    }
    
    public static func _ez_quotientInt(_ lhs: Double, _ rhs: Int) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func _ez_quotientFloat(_ lhs: Double, _ rhs: Float) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func _ez_quotientDouble(_ lhs: Double, _ rhs: Double) -> Double {
        return lhs / rhs
    }
}
