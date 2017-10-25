import Foundation

extension Image { // Interpolation, Transformation
    internal func _interpolate<Summable>(
        x: Float,
        y: Float,
        toSummable: (Pixel) -> Summable,
        product: (Summable, Float) -> Summable,
        sum: (Summable, Summable) -> Summable,
        toOriginal: (Summable) -> Pixel
    ) -> Pixel {
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
        
        return toOriginal(sum(
            sum(product(toSummable(v00), w00), product(toSummable(v01), w01)),
            sum(product(toSummable(v10), w10), product(toSummable(v11), w11))
        ))
    }
    
    internal func _transformed<Summable>(
        width: Int,
        height: Int,
        toSummable: (Pixel) -> Summable,
        product: (Summable, Float) -> Summable,
        sum: (Summable, Summable) -> Summable,
        toOriginal: (Summable) -> Pixel,
        transform: (Float, Float) -> (Float, Float)
    ) -> Image<Pixel> {
        guard width >= 0 else { fatalError("`width` must be greater than or equal to 0: \(width)") }
        guard height >= 0 else { fatalError("`width` must be greater than or equal to 0: \(height)") }
        
        var pixels: [Pixel] = []
        pixels.reserveCapacity(width * height)
        for y in 0..<height {
            for x in 0..<width {
                let transformed = transform(Float(x), Float(y))
                pixels.append(_interpolate(x: transformed.0, y: transformed.1, toSummable: toSummable, product: product, sum: sum, toOriginal: toOriginal))
            }
        }
        
        return Image<Pixel>(width: width, height: height, pixels: pixels)
    }
}

internal protocol NumericType {
    static func +(lhs: Self, rhs: Self) -> Self
}
extension Int: NumericType {}
extension Float: NumericType {}
extension Double: NumericType {}

internal struct GenericRGBA<T: NumericType>: NumericType {
    var red: T
    var green: T
    var blue: T
    var alpha: T
}

internal func +<T>(lhs: GenericRGBA<T>, rhs: GenericRGBA<T>) -> GenericRGBA<T> {
    return GenericRGBA<T>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
}

internal protocol PixelType {
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
    internal typealias SummableI = GenericRGBA<Int>
    internal typealias SummableF = GenericRGBA<Float>
    internal typealias SummableD = GenericRGBA<Double>
    
    internal init(summableI: GenericRGBA<Int>) {
        self.init(red: clamp(summableI.red, lower: Int(UInt8.min), upper: Int(UInt8.max)), green: clamp(summableI.green, lower: Int(UInt8.min), upper: Int(UInt8.max)), blue: clamp(summableI.blue, lower: Int(UInt8.min), upper: Int(UInt8.max)), alpha: clamp(summableI.alpha, lower: Int(UInt8.min), upper: Int(UInt8.max)))
    }
    
    internal init(summableF: GenericRGBA<Float>) {
        self.init(red: UInt8(clamp(summableF.red, lower: Float(UInt8.min), upper: Float(UInt8.max))), green: UInt8(clamp(summableF.green, lower: Float(UInt8.min), upper: Float(UInt8.max))), blue: UInt8(clamp(summableF.blue, lower: Float(UInt8.min), upper: Float(UInt8.max))), alpha: UInt8(clamp(summableF.alpha, lower: Float(UInt8.min), upper: Float(UInt8.max))))
    }
    
    internal init(summableD: GenericRGBA<Double>) {
        self.init(red: UInt8(clamp(summableD.red, lower: Double(UInt8.min), upper: Double(UInt8.max))), green: UInt8(clamp(summableD.green, lower: Double(UInt8.min), upper: Double(UInt8.max))), blue: UInt8(clamp(summableD.blue, lower: Double(UInt8.min), upper: Double(UInt8.max))), alpha: UInt8(clamp(summableD.alpha, lower: Double(UInt8.min), upper: Double(UInt8.max))))
    }
    
    internal var summableI: GenericRGBA<Int> {
        return GenericRGBA<Int>(red: redInt, green: greenInt, blue: blueInt, alpha: alphaInt)
    }
    
    internal var summableF: GenericRGBA<Float> {
        return GenericRGBA<Float>(red: Float(red), green: Float(green), blue: Float(blue), alpha: Float(alpha))
    }
    
    internal var summableD: GenericRGBA<Double> {
        return GenericRGBA<Double>(red: Double(red), green: Double(green), blue: Double(blue), alpha: Double(alpha))
    }
    
    internal static var summableIZero: GenericRGBA<Int> {
        return GenericRGBA<Int>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableFZero: GenericRGBA<Float> {
        return GenericRGBA<Float>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static var summableDZero: GenericRGBA<Double> {
        return GenericRGBA<Double>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    internal static func mulI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return GenericRGBA<Int>(red: lhs.red * rhs, green: lhs.green * rhs, blue: lhs.blue * rhs, alpha: lhs.alpha * rhs)
    }
    
    internal static func mulF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return GenericRGBA<Float>(red: lhs.red * rhs, green: lhs.green * rhs, blue: lhs.blue * rhs, alpha: lhs.alpha * rhs)
    }
    
    internal static func mulD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return GenericRGBA<Double>(red: lhs.red * rhs, green: lhs.green * rhs, blue: lhs.blue * rhs, alpha: lhs.alpha * rhs)
    }
    
    internal static func divI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return GenericRGBA<Int>(red: lhs.red / rhs, green: lhs.green / rhs, blue: lhs.blue / rhs, alpha: lhs.alpha / rhs)
    }
    
    internal static func divF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return GenericRGBA<Float>(red: lhs.red / rhs, green: lhs.green / rhs, blue: lhs.blue / rhs, alpha: lhs.alpha / rhs)
    }
    
    internal static func divD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return GenericRGBA<Double>(red: lhs.red / rhs, green: lhs.green / rhs, blue: lhs.blue / rhs, alpha: lhs.alpha / rhs)
    }
}

extension UInt8: PixelType {
    typealias SummableI = Int
    typealias SummableF = Float
    typealias SummableD = Double
    
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
    
    internal static func mulI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * rhs
    }
    
    internal static func mulF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    internal static func mulD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
    
    internal static func divI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * rhs
    }
    
    internal static func divF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    internal static func divD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}

extension Int: PixelType {
    typealias SummableI = Int
    typealias SummableF = Float
    typealias SummableD = Double
    
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
    
    internal static func mulI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * rhs
    }
    
    internal static func mulF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    internal static func mulD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
    
    internal static func divI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * rhs
    }
    
    internal static func divF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    internal static func divD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}

extension Float: PixelType {
    typealias SummableI = Float
    typealias SummableF = Float
    typealias SummableD = Double
    
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
    
    internal static func mulI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * Float(rhs)
    }
    
    internal static func mulF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    internal static func mulD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
    
    internal static func divI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * Float(rhs)
    }
    
    internal static func divF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    internal static func divD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}

extension Double: PixelType {
    typealias SummableI = Double
    typealias SummableF = Double
    typealias SummableD = Double
    
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
    
    internal static func mulI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * Double(rhs)
    }
    
    internal static func mulF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * Double(rhs)
    }
    
    internal static func mulD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
    
    internal static func divI(_ lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * Double(rhs)
    }
    
    internal static func divF(_ lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * Double(rhs)
    }
    
    internal static func divD(_ lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}
