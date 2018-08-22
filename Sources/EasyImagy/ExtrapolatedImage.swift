internal struct ExtrapolatedImage<Pixels : ImageProtocol> : ImageProtocol {
    public typealias SubImage = AnyImage<Pixels.Pixel>
    public typealias Element = Pixels.Pixel // FIXME: Remove this line in the future. Swift 4.1 needs it to build `ExtrapolatedImage`.

    private var image: Pixels
    private let extrapolationMethod: ExtrapolationMethod<Pixels.Pixel>
    
    public let xRange: CountableRange<Int> = .min ..< .max
    public let yRange: CountableRange<Int> = .min ..< .max
    
    private var pixels: [Coordinate: Pixel]
    
    internal init(image: Pixels, extrapolationMethod: ExtrapolationMethod<Pixels.Pixel>) {
        self.image = image
        self.extrapolationMethod = extrapolationMethod
        self.pixels = [:]
    }
    
    public subscript(x: Int, y: Int) -> Pixels.Pixel {
        get {
            return pixels[Coordinate(x: x, y: y)] ?? image[x, y, extrapolation: extrapolationMethod]
        }
        set {
            pixels[Coordinate(x: x, y: y)] = newValue
        }
    }
    
    public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> AnyImage<Pixels.Pixel> {
        return AnyImage<Pixels.Pixel>(self, xRange: xRange, yRange: yRange)
    }
}

private struct Coordinate : Hashable {
    var x: Int
    var y: Int
}
