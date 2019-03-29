public protocol _NumericPixel {
    associatedtype _ez_AdditiveInt    : AdditiveArithmetic
    associatedtype _ez_AdditiveFloat  : AdditiveArithmetic
    associatedtype _ez_AdditiveDouble : AdditiveArithmetic

    init(_ez_additiveInt: _ez_AdditiveInt)
    init(_ez_additiveFloat: _ez_AdditiveFloat)
    init(_ez_additiveDouble: _ez_AdditiveDouble)
    var _ez_additiveInt: _ez_AdditiveInt { get }
    var _ez_additiveFloat: _ez_AdditiveFloat { get }
    var _ez_additiveDouble: _ez_AdditiveDouble { get }
    static var _ez_zero: Self { get }
    static func _ez_productInt(_ lhs: _ez_AdditiveInt, _ rhs: Int) -> _ez_AdditiveInt
    static func _ez_productFloat(_ lhs: _ez_AdditiveFloat, _ rhs: Float) -> _ez_AdditiveFloat
    static func _ez_productDouble(_ lhs: _ez_AdditiveDouble, _ rhs: Double) -> _ez_AdditiveDouble
    static func _ez_quotientInt(_ lhs: _ez_AdditiveInt, _ rhs: Int) -> _ez_AdditiveInt
    static func _ez_quotientFloat(_ lhs: _ez_AdditiveFloat, _ rhs: Float) -> _ez_AdditiveFloat
    static func _ez_quotientDouble(_ lhs: _ez_AdditiveDouble, _ rhs: Double) -> _ez_AdditiveDouble
}

extension _NumericPixel where Self: AdditiveArithmetic {
    public static var _ez_zero: Self { return .zero }
}

extension RGBA : _NumericPixel where Channel : _NumericPixel {
    public typealias _ez_AdditiveInt = RGBA<Channel._ez_AdditiveInt>
    public typealias _ez_AdditiveFloat = RGBA<Channel._ez_AdditiveFloat>
    public typealias _ez_AdditiveDouble = RGBA<Channel._ez_AdditiveDouble>
    
    @inlinable
    public init(_ez_additiveInt: RGBA<Channel._ez_AdditiveInt>) {
        self = RGBA<Channel>(red: Channel.init(_ez_additiveInt: _ez_additiveInt.red), green: Channel.init(_ez_additiveInt: _ez_additiveInt.green), blue: Channel.init(_ez_additiveInt: _ez_additiveInt.blue), alpha: Channel.init(_ez_additiveInt: _ez_additiveInt.alpha))
    }
    
    @inlinable
    public init(_ez_additiveFloat: RGBA<Channel._ez_AdditiveFloat>) {
        self = RGBA<Channel>(red: Channel.init(_ez_additiveFloat: _ez_additiveFloat.red), green: Channel.init(_ez_additiveFloat: _ez_additiveFloat.green), blue: Channel.init(_ez_additiveFloat: _ez_additiveFloat.blue), alpha: Channel.init(_ez_additiveFloat: _ez_additiveFloat.alpha))
    }
    
    @inlinable
    public init(_ez_additiveDouble: RGBA<Channel._ez_AdditiveDouble>) {
        self = RGBA<Channel>(red: Channel.init(_ez_additiveDouble: _ez_additiveDouble.red), green: Channel.init(_ez_additiveDouble: _ez_additiveDouble.green), blue: Channel.init(_ez_additiveDouble: _ez_additiveDouble.blue), alpha: Channel.init(_ez_additiveDouble: _ez_additiveDouble.alpha))
    }
    
    public var _ez_additiveInt: RGBA<Channel._ez_AdditiveInt> {
        return RGBA<Channel._ez_AdditiveInt>(red: red._ez_additiveInt, green: green._ez_additiveInt, blue: blue._ez_additiveInt, alpha: alpha._ez_additiveInt)
    }
    
    public var _ez_additiveFloat: RGBA<Channel._ez_AdditiveFloat> {
        return RGBA<Channel._ez_AdditiveFloat>(red: red._ez_additiveFloat, green: green._ez_additiveFloat, blue: blue._ez_additiveFloat, alpha: alpha._ez_additiveFloat)
    }
    
    public var _ez_additiveDouble: RGBA<Channel._ez_AdditiveDouble> {
        return RGBA<Channel._ez_AdditiveDouble>(red: red._ez_additiveDouble, green: green._ez_additiveDouble, blue: blue._ez_additiveDouble, alpha: alpha._ez_additiveDouble)
    }
    
    public static var _ez_zero: RGBA<Channel> {
        return RGBA<Channel>(red: Channel._ez_zero, green: Channel._ez_zero, blue: Channel._ez_zero, alpha: Channel._ez_zero)
    }
    
    @inlinable
    public static func _ez_productInt(_ lhs: RGBA<Channel._ez_AdditiveInt>, _ rhs: Int) -> RGBA<Channel._ez_AdditiveInt> {
        return RGBA<Channel._ez_AdditiveInt>(red: Channel._ez_productInt(lhs.red, rhs), green: Channel._ez_productInt(lhs.green, rhs), blue: Channel._ez_productInt(lhs.blue, rhs), alpha: Channel._ez_productInt(lhs.alpha, rhs))
    }
    
    @inlinable
    public static func _ez_productFloat(_ lhs: RGBA<Channel._ez_AdditiveFloat>, _ rhs: Float) -> RGBA<Channel._ez_AdditiveFloat> {
        return RGBA<Channel._ez_AdditiveFloat>(red: Channel._ez_productFloat(lhs.red, rhs), green: Channel._ez_productFloat(lhs.green, rhs), blue: Channel._ez_productFloat(lhs.blue, rhs), alpha: Channel._ez_productFloat(lhs.alpha, rhs))
    }
    
    @inlinable
    public static func _ez_productDouble(_ lhs: RGBA<Channel._ez_AdditiveDouble>, _ rhs: Double) -> RGBA<Channel._ez_AdditiveDouble> {
        return RGBA<Channel._ez_AdditiveDouble>(red: Channel._ez_productDouble(lhs.red, rhs), green: Channel._ez_productDouble(lhs.green, rhs), blue: Channel._ez_productDouble(lhs.blue, rhs), alpha: Channel._ez_productDouble(lhs.alpha, rhs))
    }
    
    @inlinable
    public static func _ez_quotientInt(_ lhs: RGBA<Channel._ez_AdditiveInt>, _ rhs: Int) -> RGBA<Channel._ez_AdditiveInt> {
        return RGBA<Channel._ez_AdditiveInt>(red: Channel._ez_quotientInt(lhs.red, rhs), green: Channel._ez_quotientInt(lhs.green, rhs), blue: Channel._ez_quotientInt(lhs.blue, rhs), alpha: Channel._ez_quotientInt(lhs.alpha, rhs))
    }
    
    @inlinable
    public static func _ez_quotientFloat(_ lhs: RGBA<Channel._ez_AdditiveFloat>, _ rhs: Float) -> RGBA<Channel._ez_AdditiveFloat> {
        return RGBA<Channel._ez_AdditiveFloat>(red: Channel._ez_quotientFloat(lhs.red, rhs), green: Channel._ez_quotientFloat(lhs.green, rhs), blue: Channel._ez_quotientFloat(lhs.blue, rhs), alpha: Channel._ez_quotientFloat(lhs.alpha, rhs))
    }
    
    @inlinable
    public static func _ez_quotientDouble(_ lhs: RGBA<Channel._ez_AdditiveDouble>, _ rhs: Double) -> RGBA<Channel._ez_AdditiveDouble> {
        return RGBA<Channel._ez_AdditiveDouble>(red: Channel._ez_quotientDouble(lhs.red, rhs), green: Channel._ez_quotientDouble(lhs.green, rhs), blue: Channel._ez_quotientDouble(lhs.blue, rhs), alpha: Channel._ez_quotientDouble(lhs.alpha, rhs))
    }
}

extension UInt8 : _NumericPixel {
    public init(_ez_additiveInt: Int) {
        self = UInt8(_ez_additiveInt)
    }

    public init(_ez_additiveFloat: Float) {
        self = UInt8(_ez_additiveFloat)
    }

    public init(_ez_additiveDouble: Double) {
        self = UInt8(_ez_additiveDouble)
    }
    
    public var _ez_additiveInt: Int {
        return Int(self)
    }
    
    public var _ez_additiveFloat: Float {
        return Float(self)
    }
    
    public var _ez_additiveDouble: Double {
        return Double(self)
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
    public init(_ez_additiveInt: Int) {
        self = UInt16(_ez_additiveInt)
    }

    public init(_ez_additiveFloat: Float) {
        self = UInt16(_ez_additiveFloat)
    }

    public init(_ez_additiveDouble: Double) {
        self = UInt16(_ez_additiveDouble)
    }
    
    public var _ez_additiveInt: Int {
        return Int(self)
    }
    
    public var _ez_additiveFloat: Float {
        return Float(self)
    }
    
    public var _ez_additiveDouble: Double {
        return Double(self)
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
    public init(_ez_additiveInt: Int) {
        self = _ez_additiveInt
    }

    public init(_ez_additiveFloat: Float) {
        self = Int(_ez_additiveFloat)
    }

    public init(_ez_additiveDouble: Double) {
        self = Int(_ez_additiveDouble)
    }
    
    public var _ez_additiveInt: Int {
        return self
    }
    
    public var _ez_additiveFloat: Float {
        return Float(self)
    }
    
    public var _ez_additiveDouble: Double {
        return Double(self)
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
    public init(_ez_additiveInt: Float) {
        self = _ez_additiveInt
    }

    public init(_ez_additiveFloat: Float) {
        self = _ez_additiveFloat
    }

    public init(_ez_additiveDouble: Double) {
        self = Float(_ez_additiveDouble)
    }
    
    public var _ez_additiveInt: Float {
        return self
    }
    
    public var _ez_additiveFloat: Float {
        return self
    }
    
    public var _ez_additiveDouble: Double {
        return Double(self)
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
    public init(_ez_additiveInt: Double) {
        self = _ez_additiveInt
    }

    public init(_ez_additiveFloat: Double) {
        self = _ez_additiveFloat
    }

    public init(_ez_additiveDouble: Double) {
        self = _ez_additiveDouble
    }
    
    public var _ez_additiveInt: Double {
        return self
    }
    
    public var _ez_additiveFloat: Double {
        return self
    }
    
    public var _ez_additiveDouble: Double {
        return self
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
