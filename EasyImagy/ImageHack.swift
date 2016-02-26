extension Image where Pixel: RGBAType {
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

extension Image where Pixel: UInt8Type {
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

extension Image where Pixel: IntType {
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

extension Image where Pixel: FloatType {
    public func map(transform: Float -> Float) -> Image<Float> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: Float -> Double) -> Image<Double> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: DoubleType {
    public func map(transform: Double -> Double) -> Image<Double> {
        guard let zelf = self as? Image<Double> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: RGBAType {
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

extension Image where Pixel: UInt8Type {
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

extension Image where Pixel: IntType {
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

extension Image where Pixel: FloatType {
    public func map(transform: (x: Int, y: Int, pixel: Float) -> Float) -> Image<Float> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: Float) -> Double) -> Image<Double> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: DoubleType {
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

private func mean(weightedPixels: [(weight: Int, value: RGBA)]) -> RGBA {
    var weightSum = 0
    var sum = GenericRGBA<Int>(red: 0, green: 0, blue: 0, alpha: 0)
    for (weight, pixel) in weightedPixels {
        sum = sum + GenericRGBA<Int>(red: pixel.redInt, green: pixel.greenInt, blue: pixel.blueInt, alpha: pixel.alphaInt).mul(weight)
        weightSum += weight
    }
    
    guard weightSum > 0 else { fatalError() }
    
    let result = sum.div(weightSum)
    return RGBA(red: result.red, green: result.green, blue: result.blue, alpha: result.alpha)
}

private func mean(weightedPixels: [(weight: Int, value: UInt8)]) -> UInt8 {
    var weightSum = 0
    var sum = 0
    for (weight, value) in weightedPixels {
        sum += weight * Int(value)
        weightSum += weight
    }
    
    guard weightSum > 0 else { fatalError() }
    
    return UInt8(sum / weightSum)
}

private protocol NumericType {
    func +(lhs: Self, rhs: Self) -> Self
    
    func mul(x: Int) -> Self
    func div(x: Int) -> Self
}
extension Int: NumericType {
    func mul(x: Int) -> Int { return self * x }
    func div(x: Int) -> Int { return self / x }
}
extension Float: NumericType {
    func mul(x: Int) -> Float { return self * Float(x) }
    func div(x: Int) -> Float { return self / Float(x) }
}
extension Double: NumericType {
    func mul(x: Int) -> Double { return self * Double(x) }
    func div(x: Int) -> Double { return self / Double(x) }
}

private struct GenericRGBA<T: NumericType>: NumericType {
    var red: T
    var green: T
    var blue: T
    var alpha: T

    func mul(x: Int) -> GenericRGBA<T> { return GenericRGBA<T>(red: red.mul(x), green: green.mul(x), blue: blue.mul(x), alpha: alpha.mul(x)) }
    func div(x: Int) -> GenericRGBA<T> { return GenericRGBA<T>(red: red.div(x), green: green.div(x), blue: blue.div(x), alpha: alpha.div(x)) }
}

private func +<T: NumericType>(lhs: GenericRGBA<T>, rhs: GenericRGBA<T>) -> GenericRGBA<T> {
    return GenericRGBA<T>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
}

public protocol UInt8Type {}
extension UInt8: UInt8Type {}

public protocol IntType {}
extension Int: IntType {}

public protocol FloatType {}
extension Float: FloatType {}

public protocol DoubleType {}
extension Double: DoubleType {}