public protocol UInt8Type {}
extension UInt8: UInt8Type {}

public protocol IntType {}
extension Int: IntType {}

public protocol FloatType {}
extension Float: FloatType {}

public protocol DoubleType {}
extension Double: DoubleType {}

extension Image where Pixel: RGBAType { // map
    public func map(transform: RGBA -> RGBA) -> Image<RGBA> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }

    public func map(transform: RGBA -> UInt8) -> Image<UInt8> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }

    public func map(transform: RGBA -> Int) -> Image<Int> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }

    public func map(transform: RGBA -> Float) -> Image<Float> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }

    public func map(transform: RGBA -> Double) -> Image<Double> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: UInt8Type { // map
    public func map(transform: UInt8 -> UInt8) -> Image<UInt8> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: UInt8 -> Int) -> Image<Int> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: UInt8 -> Float) -> Image<Float> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: UInt8 -> Double) -> Image<Double> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: IntType { // map
    public func map(transform: Int -> Int) -> Image<Int> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: Int -> Float) -> Image<Float> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: Int -> Double) -> Image<Double> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: FloatType { // map
    public func map(transform: Float -> Float) -> Image<Float> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: Float -> Double) -> Image<Double> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: DoubleType { // map
    public func map(transform: Double -> Double) -> Image<Double> {
        guard let zelf = self as? Image<Double> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: RGBAType { // map with indices
    public func map(transform: (x: Int, y: Int, pixel: RGBA) -> RGBA) -> Image<RGBA> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: RGBA) -> UInt8) -> Image<UInt8> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: RGBA) -> Int) -> Image<Int> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: RGBA) -> Float) -> Image<Float> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: RGBA) -> Double) -> Image<Double> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: UInt8Type { // map with indices
    public func map(transform: (x: Int, y: Int, pixel: UInt8) -> UInt8) -> Image<UInt8> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: UInt8) -> Int) -> Image<Int> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: UInt8) -> Float) -> Image<Float> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: UInt8) -> Double) -> Image<Double> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: IntType { // map with indices
    public func map(transform: (x: Int, y: Int, pixel: Int) -> Int) -> Image<Int> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: Int) -> Float) -> Image<Float> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: Int) -> Double) -> Image<Double> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: FloatType { // map with indices
    public func map(transform: (x: Int, y: Int, pixel: Float) -> Float) -> Image<Float> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: Float) -> Double) -> Image<Double> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: DoubleType { // map with indices
    public func map(transform: (x: Int, y: Int, pixel: Double) -> Double) -> Image<Double> {
        guard let zelf = self as? Image<Double> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: RGBAType { // Convolution
    public func convoluted(filter: Image<Int>) -> Image<RGBA> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }
}

extension Image where Pixel: UInt8Type { // Convolution
    public func convoluted(filter: Image<Int>) -> Image<UInt8> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }
}

extension Image where Pixel: IntType { // Convolution
    public func convoluted(filter: Image<Int>) -> Image<Int> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }
}

extension Image where Pixel: FloatType { // Convolution
    public func convoluted(filter: Image<Int>) -> Image<Float> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }
}

extension Image where Pixel: DoubleType { // Convolution
    public func convoluted(filter: Image<Int>) -> Image<Double> {
        guard let zelf = self as? Image<Double> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }
}

private func mean<P: PixelType>(weightedPixels: [(weight: Int, value: P)]) -> P {
    var weightSum = 0
    var sum = P.summableIZero
    for (weight, pixel) in weightedPixels {
        sum = sum + pixel.summableI * weight
        weightSum += weight
    }
    
    guard weightSum > 0 else { fatalError() }
    
    return P(summableI: sum / weightSum)
}

private protocol NumericType {
    func +(lhs: Self, rhs: Self) -> Self
    
    func *(lhs: Self, rhs: Int) -> Self
    func /(lhs: Self, rhs: Int) -> Self
}
extension Int: NumericType {}
extension Float: NumericType {}
private func *(lhs: Float, rhs: Int) -> Float { return lhs * Float(rhs) }
private func /(lhs: Float, rhs: Int) -> Float { return lhs / Float(rhs) }
extension Double: NumericType {}
private func *(lhs: Double, rhs: Int) -> Double { return lhs * Double(rhs) }
private func /(lhs: Double, rhs: Int) -> Double { return lhs / Double(rhs) }

private struct GenericRGBA<T: NumericType>: NumericType {
    var red: T
    var green: T
    var blue: T
    var alpha: T
}
private func *<T: NumericType>(lhs: GenericRGBA<T>, rhs: Int) -> GenericRGBA<T> { return GenericRGBA<T>(red: lhs.red * rhs, green: lhs.green * rhs, blue: lhs.blue * rhs, alpha: lhs.alpha * rhs) }
private func /<T: NumericType>(lhs: GenericRGBA<T>, rhs: Int) -> GenericRGBA<T> { return GenericRGBA<T>(red: lhs.red / rhs, green: lhs.green / rhs, blue: lhs.blue / rhs, alpha: lhs.alpha / rhs) }

private func +<T: NumericType>(lhs: GenericRGBA<T>, rhs: GenericRGBA<T>) -> GenericRGBA<T> {
    return GenericRGBA<T>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
}

private protocol PixelType {
    typealias SummableI: NumericType
    
    init(summableI: SummableI)
    
    var summableI: SummableI { get }
    static var summableIZero: SummableI { get }
}

extension RGBA: PixelType {
    private typealias SummableI = GenericRGBA<Int>

    private init(summableI: GenericRGBA<Int>) {
        self.init(red: summableI.red, green: summableI.green, blue: summableI.blue, alpha: summableI.alpha)
    }
    
    private var summableI: GenericRGBA<Int> {
        return GenericRGBA<Int>(red: redInt, green: greenInt, blue: blueInt, alpha: alphaInt)
    }

    private static var summableIZero: GenericRGBA<Int> {
        return GenericRGBA<Int>(red: 0, green: 0, blue: 0, alpha: 0)
    }
}

extension UInt8: PixelType {
    typealias SummableI = Int
    
    private init(summableI: Int) {
        self = UInt8(summableI)
    }
    
    private var summableI: Int {
        return Int(self)
    }
    
    private static var summableIZero: Int {
        return 0
    
    }
}

extension Int: PixelType {
    typealias SummableI = Int
    
    private init(summableI: Int) {
        self = summableI
    }
    
    private var summableI: Int {
        return self
    }
    
    private static var summableIZero: Int {
        return 0
        
    }
}

extension Float: PixelType {
    typealias SummableI = Float
    
    private init(summableI: Float) {
        self = summableI
    }
    
    private var summableI: Float {
        return self
    }
    
    private static var summableIZero: Float {
        return 0
        
    }
}

extension Double: PixelType {
    typealias SummableI = Double
    
    private init(summableI: Double) {
        self = summableI
    }
    
    private var summableI: Double {
        return self
    }
    
    private static var summableIZero: Double {
        return 0
        
    }
}
