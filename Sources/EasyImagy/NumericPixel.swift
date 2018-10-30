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
    associatedtype _NumericPixelSummableInt    : _Summable
    associatedtype _NumericPixelSummableFloat  : _Summable
    associatedtype _NumericPixelSummableDouble : _Summable

    init(_ez_summableInt: _NumericPixelSummableInt)
    init(_ez_summableFloat: _NumericPixelSummableFloat)
    init(_ez_summableDouble: _NumericPixelSummableDouble)
    var _ez_summableInt: _NumericPixelSummableInt { get }
    var _ez_summableFloat: _NumericPixelSummableFloat { get }
    var _ez_summableDouble: _NumericPixelSummableDouble { get }
    static var _ez_zero: Self { get }
    static var _ez_summableIntZero: _NumericPixelSummableInt { get }
    static var _ez_summableFloatZero: _NumericPixelSummableFloat { get }
    static var _ez_summableDoubleZero: _NumericPixelSummableDouble { get }
    static func _ez_productInt(_ lhs: _NumericPixelSummableInt, _ rhs: Int) -> _NumericPixelSummableInt
    static func _ez_productFloat(_ lhs: _NumericPixelSummableFloat, _ rhs: Float) -> _NumericPixelSummableFloat
    static func _ez_productDouble(_ lhs: _NumericPixelSummableDouble, _ rhs: Double) -> _NumericPixelSummableDouble
    static func _ez_quotientInt(_ lhs: _NumericPixelSummableInt, _ rhs: Int) -> _NumericPixelSummableInt
    static func _ez_quotientFloat(_ lhs: _NumericPixelSummableFloat, _ rhs: Float) -> _NumericPixelSummableFloat
    static func _ez_quotientDouble(_ lhs: _NumericPixelSummableDouble, _ rhs: Double) -> _NumericPixelSummableDouble
}

extension RGBA : _NumericPixel where Channel : _NumericPixel {
    public typealias _NumericPixelSummableInt = RGBA<Channel._NumericPixelSummableInt>
    public typealias _NumericPixelSummableFloat = RGBA<Channel._NumericPixelSummableFloat>
    public typealias _NumericPixelSummableDouble = RGBA<Channel._NumericPixelSummableDouble>
    
    @inlinable
    public init(_ez_summableInt: RGBA<Channel._NumericPixelSummableInt>) {
        self = RGBA<Channel>(red: Channel.init(_ez_summableInt: _ez_summableInt.red), green: Channel.init(_ez_summableInt: _ez_summableInt.green), blue: Channel.init(_ez_summableInt: _ez_summableInt.blue), alpha: Channel.init(_ez_summableInt: _ez_summableInt.alpha))
    }
    
    @inlinable
    public init(_ez_summableFloat: RGBA<Channel._NumericPixelSummableFloat>) {
        self = RGBA<Channel>(red: Channel.init(_ez_summableFloat: _ez_summableFloat.red), green: Channel.init(_ez_summableFloat: _ez_summableFloat.green), blue: Channel.init(_ez_summableFloat: _ez_summableFloat.blue), alpha: Channel.init(_ez_summableFloat: _ez_summableFloat.alpha))
    }
    
    @inlinable
    public init(_ez_summableDouble: RGBA<Channel._NumericPixelSummableDouble>) {
        self = RGBA<Channel>(red: Channel.init(_ez_summableDouble: _ez_summableDouble.red), green: Channel.init(_ez_summableDouble: _ez_summableDouble.green), blue: Channel.init(_ez_summableDouble: _ez_summableDouble.blue), alpha: Channel.init(_ez_summableDouble: _ez_summableDouble.alpha))
    }
    
    public var _ez_summableInt: RGBA<Channel._NumericPixelSummableInt> {
        return RGBA<Channel._NumericPixelSummableInt>(red: red._ez_summableInt, green: green._ez_summableInt, blue: blue._ez_summableInt, alpha: alpha._ez_summableInt)
    }
    
    public var _ez_summableFloat: RGBA<Channel._NumericPixelSummableFloat> {
        return RGBA<Channel._NumericPixelSummableFloat>(red: red._ez_summableFloat, green: green._ez_summableFloat, blue: blue._ez_summableFloat, alpha: alpha._ez_summableFloat)
    }
    
    public var _ez_summableDouble: RGBA<Channel._NumericPixelSummableDouble> {
        return RGBA<Channel._NumericPixelSummableDouble>(red: red._ez_summableDouble, green: green._ez_summableDouble, blue: blue._ez_summableDouble, alpha: alpha._ez_summableDouble)
    }
    
    public static var _ez_zero: RGBA<Channel> {
        return RGBA<Channel>(red: Channel._ez_zero, green: Channel._ez_zero, blue: Channel._ez_zero, alpha: Channel._ez_zero)
    }
    
    public static var _ez_summableIntZero: RGBA<Channel._NumericPixelSummableInt> {
        let zero = Channel._ez_summableIntZero
        return RGBA<Channel._NumericPixelSummableInt>(red: zero, green: zero, blue: zero, alpha: zero)
    }
    
    public static var _ez_summableFloatZero: RGBA<Channel._NumericPixelSummableFloat> {
        let zero = Channel._ez_summableFloatZero
        return RGBA<Channel._NumericPixelSummableFloat>(red: zero, green: zero, blue: zero, alpha: zero)
    }
    
    public static var _ez_summableDoubleZero: RGBA<Channel._NumericPixelSummableDouble> {
        let zero = Channel._ez_summableDoubleZero
        return RGBA<Channel._NumericPixelSummableDouble>(red: zero, green: zero, blue: zero, alpha: zero)
    }
    
    @inlinable
    public static func _ez_productInt(_ lhs: RGBA<Channel._NumericPixelSummableInt>, _ rhs: Int) -> RGBA<Channel._NumericPixelSummableInt> {
        return RGBA<Channel._NumericPixelSummableInt>(red: Channel._ez_productInt(lhs.red, rhs), green: Channel._ez_productInt(lhs.green, rhs), blue: Channel._ez_productInt(lhs.blue, rhs), alpha: Channel._ez_productInt(lhs.alpha, rhs))
    }
    
    @inlinable
    public static func _ez_productFloat(_ lhs: RGBA<Channel._NumericPixelSummableFloat>, _ rhs: Float) -> RGBA<Channel._NumericPixelSummableFloat> {
        return RGBA<Channel._NumericPixelSummableFloat>(red: Channel._ez_productFloat(lhs.red, rhs), green: Channel._ez_productFloat(lhs.green, rhs), blue: Channel._ez_productFloat(lhs.blue, rhs), alpha: Channel._ez_productFloat(lhs.alpha, rhs))
    }
    
    @inlinable
    public static func _ez_productDouble(_ lhs: RGBA<Channel._NumericPixelSummableDouble>, _ rhs: Double) -> RGBA<Channel._NumericPixelSummableDouble> {
        return RGBA<Channel._NumericPixelSummableDouble>(red: Channel._ez_productDouble(lhs.red, rhs), green: Channel._ez_productDouble(lhs.green, rhs), blue: Channel._ez_productDouble(lhs.blue, rhs), alpha: Channel._ez_productDouble(lhs.alpha, rhs))
    }
    
    @inlinable
    public static func _ez_quotientInt(_ lhs: RGBA<Channel._NumericPixelSummableInt>, _ rhs: Int) -> RGBA<Channel._NumericPixelSummableInt> {
        return RGBA<Channel._NumericPixelSummableInt>(red: Channel._ez_quotientInt(lhs.red, rhs), green: Channel._ez_quotientInt(lhs.green, rhs), blue: Channel._ez_quotientInt(lhs.blue, rhs), alpha: Channel._ez_quotientInt(lhs.alpha, rhs))
    }
    
    @inlinable
    public static func _ez_quotientFloat(_ lhs: RGBA<Channel._NumericPixelSummableFloat>, _ rhs: Float) -> RGBA<Channel._NumericPixelSummableFloat> {
        return RGBA<Channel._NumericPixelSummableFloat>(red: Channel._ez_quotientFloat(lhs.red, rhs), green: Channel._ez_quotientFloat(lhs.green, rhs), blue: Channel._ez_quotientFloat(lhs.blue, rhs), alpha: Channel._ez_quotientFloat(lhs.alpha, rhs))
    }
    
    @inlinable
    public static func _ez_quotientDouble(_ lhs: RGBA<Channel._NumericPixelSummableDouble>, _ rhs: Double) -> RGBA<Channel._NumericPixelSummableDouble> {
        return RGBA<Channel._NumericPixelSummableDouble>(red: Channel._ez_quotientDouble(lhs.red, rhs), green: Channel._ez_quotientDouble(lhs.green, rhs), blue: Channel._ez_quotientDouble(lhs.blue, rhs), alpha: Channel._ez_quotientDouble(lhs.alpha, rhs))
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
