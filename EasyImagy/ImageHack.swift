extension Image where Pixel: RGBAType { // map
    public func map(_ transform: (RGBA) -> RGBA) -> Image<RGBA> {
        let zelf = self as! Image<RGBA>
        return zelf._map(transform)
    }

    public func map(_ transform: (RGBA) -> UInt8) -> Image<UInt8> {
        let zelf = self as! Image<RGBA>
        return zelf._map(transform)
    }

    public func map(_ transform: (RGBA) -> Int) -> Image<Int> {
        let zelf = self as! Image<RGBA>
        return zelf._map(transform)
    }

    public func map(_ transform: (RGBA) -> Float) -> Image<Float> {
        let zelf = self as! Image<RGBA>
        return zelf._map(transform)
    }

    public func map(_ transform: (RGBA) -> Double) -> Image<Double> {
        let zelf = self as! Image<RGBA>
        return zelf._map(transform)
    }
}

extension Image where Pixel: UInt8Type { // map
    public func map(_ transform: (UInt8) -> UInt8) -> Image<UInt8> {
        let zelf = self as! Image<UInt8>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (UInt8) -> Int) -> Image<Int> {
        let zelf = self as! Image<UInt8>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (UInt8) -> Float) -> Image<Float> {
        let zelf = self as! Image<UInt8>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (UInt8) -> Double) -> Image<Double> {
        let zelf = self as! Image<UInt8>
        return zelf._map(transform)
    }
}

extension Image where Pixel: IntType { // map
    public func map(_ transform: (Int) -> Int) -> Image<Int> {
        let zelf = self as! Image<Int>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (Int) -> Float) -> Image<Float> {
        let zelf = self as! Image<Int>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (Int) -> Double) -> Image<Double> {
        let zelf = self as! Image<Int>
        return zelf._map(transform)
    }
}

extension Image where Pixel: FloatType { // map
    public func map(_ transform: (Float) -> Float) -> Image<Float> {
        let zelf = self as! Image<Float>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (Float) -> Double) -> Image<Double> {
        let zelf = self as! Image<Float>
        return zelf._map(transform)
    }
}

extension Image where Pixel: DoubleType { // map
    public func map(_ transform: (Double) -> Double) -> Image<Double> {
        let zelf = self as! Image<Double>
        return zelf._map(transform)
    }
}

extension Image where Pixel: RGBAType { // map with indices
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: RGBA) -> RGBA) -> Image<RGBA> {
        let zelf = self as! Image<RGBA>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: RGBA) -> UInt8) -> Image<UInt8> {
        let zelf = self as! Image<RGBA>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: RGBA) -> Int) -> Image<Int> {
        let zelf = self as! Image<RGBA>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: RGBA) -> Float) -> Image<Float> {
        let zelf = self as! Image<RGBA>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: RGBA) -> Double) -> Image<Double> {
        let zelf = self as! Image<RGBA>
        return zelf._map(transform)
    }
}

extension Image where Pixel: UInt8Type { // map with indices
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: UInt8) -> UInt8) -> Image<UInt8> {
        let zelf = self as! Image<UInt8>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: UInt8) -> Int) -> Image<Int> {
        let zelf = self as! Image<UInt8>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: UInt8) -> Float) -> Image<Float> {
        let zelf = self as! Image<UInt8>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: UInt8) -> Double) -> Image<Double> {
        let zelf = self as! Image<UInt8>
        return zelf._map(transform)
    }
}

extension Image where Pixel: IntType { // map with indices
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: Int) -> Int) -> Image<Int> {
        let zelf = self as! Image<Int>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: Int) -> Float) -> Image<Float> {
        let zelf = self as! Image<Int>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: Int) -> Double) -> Image<Double> {
        let zelf = self as! Image<Int>
        return zelf._map(transform)
    }
}

extension Image where Pixel: FloatType { // map with indices
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: Float) -> Float) -> Image<Float> {
        let zelf = self as! Image<Float>
        return zelf._map(transform)
    }
    
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: Float) -> Double) -> Image<Double> {
        let zelf = self as! Image<Float>
        return zelf._map(transform)
    }
}

extension Image where Pixel: DoubleType { // map with indices
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: Double) -> Double) -> Image<Double> {
        let zelf = self as! Image<Double>
        return zelf._map(transform)
    }
}

extension Image where Pixel: RGBAType { // Convolution
    public func convoluted(_ kernel: Image<Int>) -> Image<RGBA> {
        let zelf = self as! Image<RGBA>
        return zelf._convoluted(kernel, weightedSum: weightedSum)
    }
    
    public func convoluted(_ kernel: Image<Float>) -> Image<RGBA> {
        let zelf = self as! Image<RGBA>
        return zelf._convoluted(kernel, weightedSum: weightedSum)
    }
    
    public func convoluted(_ kernel: Image<Double>) -> Image<RGBA> {
        let zelf = self as! Image<RGBA>
        return zelf._convoluted(kernel, weightedSum: weightedSum)
    }
}

extension Image where Pixel: UInt8Type { // Convolution
    public func convoluted(_ kernel: Image<Int>) -> Image<UInt8> {
        let zelf = self as! Image<UInt8>
        return zelf._convoluted(kernel, weightedSum: weightedSum)
    }
    
    public func convoluted(_ kernel: Image<Float>) -> Image<UInt8> {
        let zelf = self as! Image<UInt8>
        return zelf._convoluted(kernel, weightedSum: weightedSum)
    }

    public func convoluted(_ kernel: Image<Double>) -> Image<UInt8> {
        let zelf = self as! Image<UInt8>
        return zelf._convoluted(kernel, weightedSum: weightedSum)
    }
}

extension Image where Pixel: IntType { // Convolution
    public func convoluted(_ kernel: Image<Int>) -> Image<Int> {
        let zelf = self as! Image<Int>
        return zelf._convoluted(kernel, weightedSum: weightedSum)
    }
    
    public func convoluted(_ kernel: Image<Float>) -> Image<Int> {
        let zelf = self as! Image<Int>
        return zelf._convoluted(kernel, weightedSum: weightedSum)
    }
    
    public func convoluted(_ kernel: Image<Double>) -> Image<Int> {
        let zelf = self as! Image<Int>
        return zelf._convoluted(kernel, weightedSum: weightedSum)
    }
}

extension Image where Pixel: FloatType { // Convolution
    public func convoluted(_ kernel: Image<Int>) -> Image<Float> {
        let zelf = self as! Image<Float>
        return zelf._convoluted(kernel, weightedSum: weightedSum)
    }

    public func convoluted(_ kernel: Image<Float>) -> Image<Float> {
        let zelf = self as! Image<Float>
        return zelf._convoluted(kernel, weightedSum: weightedSum)
    }

    public func convoluted(_ kernel: Image<Double>) -> Image<Float> {
        let zelf = self as! Image<Float>
        return zelf._convoluted(kernel, weightedSum: weightedSum)
    }
}

extension Image where Pixel: DoubleType { // Convolution
    public func convoluted(_ kernel: Image<Int>) -> Image<Double> {
        let zelf = self as! Image<Double>
        return zelf._convoluted(kernel, weightedSum: weightedSum)
    }

    public func convoluted(_ kernel: Image<Float>) -> Image<Double> {
        let zelf = self as! Image<Double>
        return zelf._convoluted(kernel, weightedSum: weightedSum)
    }

    public func convoluted(_ kernel: Image<Double>) -> Image<Double> {
        let zelf = self as! Image<Double>
        return zelf._convoluted(kernel, weightedSum: weightedSum)
    }
}

extension Image where Pixel: RGBAType { // Interpolation, Transformation
    public subscript(x: Float, y: Float) -> RGBA {
        let zelf = self as! Image<RGBA>
        return zelf._interpolate(x: x, y: y)
    }
    
    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<RGBA> {
        let zelf = self as! Image<RGBA>
        return zelf._transformed(width: width, height: height, transform: transform)
    }
}

extension Image where Pixel: UInt8Type { // Interpolation, Transformation
    public subscript(x: Float, y: Float) -> UInt8 {
        let zelf = self as! Image<UInt8>
        return zelf._interpolate(x: x, y: y)
    }
    
    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<UInt8> {
        let zelf = self as! Image<UInt8>
        return zelf._transformed(width: width, height: height, transform: transform)
    }
}

extension Image where Pixel: IntType { // Interpolation, Transformation
    public subscript(x: Float, y: Float) -> Int {
        let zelf = self as! Image<Int>
        return zelf._interpolate(x: x, y: y)
    }
    
    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<Int> {
        let zelf = self as! Image<Int>
        return zelf._transformed(width: width, height: height, transform: transform)
    }
}

extension Image where Pixel: FloatType { // Interpolation, Transformation
    public subscript(x: Float, y: Float) -> Float {
        let zelf = self as! Image<Float>
        return zelf._interpolate(x: x, y: y)
    }
    
    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<Float> {
        let zelf = self as! Image<Float>
        return zelf._transformed(width: width, height: height, transform: transform)
    }
}

extension Image where Pixel: DoubleType { // Interpolation, Transformation
    public subscript(x: Float, y: Float) -> Double {
        let zelf = self as! Image<Double>
        return zelf._interpolate(x: x, y: y)
    }
    
    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<Double> {
        let zelf = self as! Image<Double>
        return zelf._transformed(width: width, height: height, transform: transform)
    }
}

extension Image where Pixel: PixelType { // Interpolation, Transformation
    fileprivate func _interpolate(x: Float, y: Float) -> Pixel {
        let width = self.width
        let height = self.height
        
        var x0 = Int(floor(x))
        var y0 = Int(floor(y))
        var x1 = x0 + 1
        var y1 = y0 + 1
        
        if x1 <= 0 {
            x0 = 0
            
            if x1 < 0 {
                x1 = 0
            }
        } else if x0 >= width - 1 {
            if x0 >= width {
                x0 = width - 1
            }
            
            x1 = width - 1
        }
        
        if y1 <= 0 {
            y0 = 0
            
            if y1 < 0 {
                y1 = 0
            }
        } else if y0 >= height - 1 {
            if y0 >= height {
                y0 = height - 1
            }
            
            y1 = height - 1
        }
        
        let v00 = self[x0, y0]
        let v01 = self[x1, y0]
        let v10 = self[x0, y1]
        let v11 = self[x1, y1]
        
        let wx = x - Float(x0)
        let wy = y - Float(y0)
        let w00 = (1.0 - wx) * (1.0 - wy)
        let w01 = wx * (1.0 - wy)
        let w10 = (1.0 - wx) * wy
        let w11 = wx * wy
        
        return Pixel(summableF: Pixel.mulF(v00.summableF, w00) + Pixel.mulF(v01.summableF, w01) + Pixel.mulF(v10.summableF, w10) + Pixel.mulF(v11.summableF, w11))
    }
    
    fileprivate func _transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<Pixel> {
        guard width >= 0 else { fatalError("`width` must be greater than or equal to 0: \(width)") }
        guard height >= 0 else { fatalError("`width` must be greater than or equal to 0: \(height)") }

        var pixels: [Pixel] = []
        pixels.reserveCapacity(width * height)
        for y in 0..<height {
            for x in 0..<width {
                let transformed = transform(Float(x), Float(y))
                pixels.append(_interpolate(x: transformed.0, y: transformed.1))
            }
        }
        
        return Image<Pixel>(width: width, height: height, pixels: pixels)
    }
}

private func weightedSum<P: PixelType>(_ weightedPixels: [(weight: Int, value: P)]) -> P {
    var sum = P.summableIZero
    for (weight, pixel) in weightedPixels {
        sum = sum + P.mulI(pixel.summableI, weight)
    }
    
    return P(summableI: sum)
}

private func weightedSum<P: PixelType>(_ weightedPixels: [(weight: Float, value: P)]) -> P {
    var sum = P.summableFZero
    for (weight, pixel) in weightedPixels {
        sum = sum + P.mulF(pixel.summableF, weight)
    }
    
    return P(summableF: sum)
}

private func weightedSum<P: PixelType>(_ weightedPixels: [(weight: Double, value: P)]) -> P {
    var sum = P.summableDZero
    for (weight, pixel) in weightedPixels {
        sum = sum + P.mulD(pixel.summableD, weight)
    }
    
    return P(summableD: sum)
}

private protocol NumericType {
    static func +(lhs: Self, rhs: Self) -> Self
}
extension Int: NumericType {}
extension Float: NumericType {}
extension Double: NumericType {}

private struct GenericRGBA<T: NumericType>: NumericType {
    var red: T
    var green: T
    var blue: T
    var alpha: T
}

private func +<T: NumericType>(lhs: GenericRGBA<T>, rhs: GenericRGBA<T>) -> GenericRGBA<T> {
    return GenericRGBA<T>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
}

private protocol PixelType {
    associatedtype SummableI: NumericType
    associatedtype SummableF: NumericType
    associatedtype SummableD: NumericType
    
    init(summableI: SummableI)
    init(summableF: SummableF)
    init(summableD: SummableD)
    
    var summableI: SummableI { get }
    var summableF: SummableF { get }
    var summableD: SummableD { get }
    
    static var summableIZero: SummableI { get }
    static var summableFZero: SummableF { get }
    static var summableDZero: SummableD { get }
    
    static func mulI(_ lhs: SummableI, _ rhs: Int) -> SummableI
    static func mulF(_ lhs: SummableF, _ rhs: Float) -> SummableF
    static func mulD(_ lhs: SummableD, _ rhs: Double) -> SummableD
    
    static func divI(_ lhs: SummableI, _ rhs: Int) -> SummableI
    static func divF(_ lhs: SummableF, _ rhs: Float) -> SummableF
    static func divD(_ lhs: SummableD, _ rhs: Double) -> SummableD
}

extension RGBA: PixelType {
    fileprivate typealias SummableI = GenericRGBA<Int>
    fileprivate typealias SummableF = GenericRGBA<Float>
    fileprivate typealias SummableD = GenericRGBA<Double>

    fileprivate init(summableI: GenericRGBA<Int>) {
        self.init(red: clamp(summableI.red, lower: Int(UInt8.min), upper: Int(UInt8.max)), green: clamp(summableI.green, lower: Int(UInt8.min), upper: Int(UInt8.max)), blue: clamp(summableI.blue, lower: Int(UInt8.min), upper: Int(UInt8.max)), alpha: clamp(summableI.alpha, lower: Int(UInt8.min), upper: Int(UInt8.max)))
    }
    
    fileprivate init(summableF: GenericRGBA<Float>) {
        self.init(red: UInt8(clamp(summableF.red, lower: Float(UInt8.min), upper: Float(UInt8.max))), green: UInt8(clamp(summableF.green, lower: Float(UInt8.min), upper: Float(UInt8.max))), blue: UInt8(clamp(summableF.blue, lower: Float(UInt8.min), upper: Float(UInt8.max))), alpha: UInt8(clamp(summableF.alpha, lower: Float(UInt8.min), upper: Float(UInt8.max))))
    }
    
    fileprivate init(summableD: GenericRGBA<Double>) {
        self.init(red: UInt8(clamp(summableD.red, lower: Double(UInt8.min), upper: Double(UInt8.max))), green: UInt8(clamp(summableD.green, lower: Double(UInt8.min), upper: Double(UInt8.max))), blue: UInt8(clamp(summableD.blue, lower: Double(UInt8.min), upper: Double(UInt8.max))), alpha: UInt8(clamp(summableD.alpha, lower: Double(UInt8.min), upper: Double(UInt8.max))))
    }
    
    fileprivate var summableI: GenericRGBA<Int> {
        return GenericRGBA<Int>(red: redInt, green: greenInt, blue: blueInt, alpha: alphaInt)
    }
    
    fileprivate var summableF: GenericRGBA<Float> {
        return GenericRGBA<Float>(red: Float(red), green: Float(green), blue: Float(blue), alpha: Float(alpha))
    }
    
    fileprivate var summableD: GenericRGBA<Double> {
        return GenericRGBA<Double>(red: Double(red), green: Double(green), blue: Double(blue), alpha: Double(alpha))
    }
    
    fileprivate static var summableIZero: GenericRGBA<Int> {
        return GenericRGBA<Int>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    fileprivate static var summableFZero: GenericRGBA<Float> {
        return GenericRGBA<Float>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    fileprivate static var summableDZero: GenericRGBA<Double> {
        return GenericRGBA<Double>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    fileprivate static func mulI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return GenericRGBA<Int>(red: lhs.red * rhs, green: lhs.green * rhs, blue: lhs.blue * rhs, alpha: lhs.alpha * rhs)
    }
    
    fileprivate static func mulF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return GenericRGBA<Float>(red: lhs.red * rhs, green: lhs.green * rhs, blue: lhs.blue * rhs, alpha: lhs.alpha * rhs)
    }

    fileprivate static func mulD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return GenericRGBA<Double>(red: lhs.red * rhs, green: lhs.green * rhs, blue: lhs.blue * rhs, alpha: lhs.alpha * rhs)
    }
    
    fileprivate static func divI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return GenericRGBA<Int>(red: lhs.red / rhs, green: lhs.green / rhs, blue: lhs.blue / rhs, alpha: lhs.alpha / rhs)
    }
    
    fileprivate static func divF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return GenericRGBA<Float>(red: lhs.red / rhs, green: lhs.green / rhs, blue: lhs.blue / rhs, alpha: lhs.alpha / rhs)
    }
    
    fileprivate static func divD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return GenericRGBA<Double>(red: lhs.red / rhs, green: lhs.green / rhs, blue: lhs.blue / rhs, alpha: lhs.alpha / rhs)
    }
}

extension UInt8: PixelType {
    typealias SummableI = Int
    typealias SummableF = Float
    typealias SummableD = Double
    
    fileprivate init(summableI: Int) {
        self = UInt8(clamp(summableI, lower: Int(UInt8.min), upper: Int(UInt8.max)))
    }
    
    fileprivate init(summableF: Float) {
        self = UInt8(clamp(summableF, lower: Float(UInt8.min), upper: Float(UInt8.max)))
    }
    
    fileprivate init(summableD: Double) {
        self = UInt8(clamp(summableD, lower: Double(UInt8.min), upper: Double(UInt8.max)))
    }
    
    fileprivate var summableI: Int {
        return Int(self)
    }
    
    fileprivate var summableF: Float {
        return Float(self)
    }
    
    fileprivate var summableD: Double {
        return Double(self)
    }
    
    fileprivate static var summableIZero: Int {
        return 0
        
    }
    
    fileprivate static var summableFZero: Float {
        return 0
        
    }
    
    fileprivate static var summableDZero: Double {
        return 0
        
    }
    
    fileprivate static func mulI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * rhs
    }
    
    fileprivate static func mulF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    fileprivate static func mulD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
    
    fileprivate static func divI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * rhs
    }
    
    fileprivate static func divF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    fileprivate static func divD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}

extension Int: PixelType {
    typealias SummableI = Int
    typealias SummableF = Float
    typealias SummableD = Double
    
    fileprivate init(summableI: Int) {
        self = summableI
    }
    
    fileprivate init(summableF: Float) {
        self = Int(summableF)
    }
    
    fileprivate init(summableD: Double) {
        self = Int(summableD)
    }
    
    fileprivate var summableI: Int {
        return self
    }
    
    fileprivate var summableF: Float {
        return Float(self)
    }
    
    fileprivate var summableD: Double {
        return Double(self)
    }
    
    fileprivate static var summableIZero: Int {
        return 0
        
    }
    
    fileprivate static var summableFZero: Float {
        return 0
        
    }
    
    fileprivate static var summableDZero: Double {
        return 0
        
    }
    
    fileprivate static func mulI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * rhs
    }
    
    fileprivate static func mulF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    fileprivate static func mulD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
    
    fileprivate static func divI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * rhs
    }
    
    fileprivate static func divF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    fileprivate static func divD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}

extension Float: PixelType {
    typealias SummableI = Float
    typealias SummableF = Float
    typealias SummableD = Double
    
    fileprivate init(summableI: Float) {
        self = summableI
    }
    
    fileprivate init(summableF: Float) {
        self = summableF
    }
    
    fileprivate init(summableD: Double) {
        self = Float(summableD)
    }
    
    fileprivate var summableI: Float {
        return self
    }
    
    fileprivate var summableF: Float {
        return self
    }
    
    fileprivate var summableD: Double {
        return Double(self)
    }
    
    fileprivate static var summableIZero: Float {
        return 0
        
    }
    
    fileprivate static var summableFZero: Float {
        return 0
        
    }
    
    fileprivate static var summableDZero: Double {
        return 0
        
    }
    
    fileprivate static func mulI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * Float(rhs)
    }
    
    fileprivate static func mulF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    fileprivate static func mulD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
    
    fileprivate static func divI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * Float(rhs)
    }
    
    fileprivate static func divF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    fileprivate static func divD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}

extension Double: PixelType {
    typealias SummableI = Double
    typealias SummableF = Double
    typealias SummableD = Double
    
    fileprivate init(summableI: Double) {
        self = summableI
    }
    
    fileprivate init(summableF: Double) {
        self = summableF
    }
    
    fileprivate init(summableD: Double) {
        self = summableD
    }
    
    fileprivate var summableI: Double {
        return self
    }
    
    fileprivate var summableF: Double {
        return self
    }
    
    fileprivate var summableD: Double {
        return self
    }
    
    fileprivate static var summableIZero: Double {
        return 0
        
    }
    
    fileprivate static var summableFZero: Double {
        return 0
        
    }
    
    fileprivate static var summableDZero: Double {
        return 0
        
    }
    
    fileprivate static func mulI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * Double(rhs)
    }
    
    fileprivate static func mulF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * Double(rhs)
    }
    
    fileprivate static func mulD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
    
    fileprivate static func divI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * Double(rhs)
    }
    
    fileprivate static func divF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * Double(rhs)
    }
    
    fileprivate static func divD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}
