private func offset(_ range: CountableRange<Int>, _ offset: Int) -> CountableRange<Int> {
    return (range.lowerBound + offset) ..< (range.upperBound + offset)
}

internal struct ExtrapolatedImage<Pixel> : ImageProtocol {
    private var image: AnyImage<Pixel>
    public let xRange: CountableRange<Int>
    public let yRange: CountableRange<Int>
    private let extrapolationMethod: ExtrapolationMethod<Pixel>
    private var offsetX: Int
    private var offsetY: Int

    internal init(image: AnyImage<Pixel>, xRange: CountableRange<Int>, yRange: CountableRange<Int>, extrapolationMethod: ExtrapolationMethod<Pixel>, offsetX: Int = 0, offsetY: Int = 0) {
        self.image = image
        self.xRange = xRange
        self.yRange = yRange
        self.extrapolationMethod = extrapolationMethod
        self.offsetX = offsetX
        self.offsetY = offsetY
    }
    
    public subscript(x: Int, y: Int) -> Pixel {
        get {
            return image[x + offsetX, y + offsetY, extrapolatedBy: extrapolationMethod]
        }
        
        set {
            assert(xRange.contains(x), "`x` is out of bounds: \(x)")
            assert(yRange.contains(y), "`y` is out of bounds: \(y)")
            if !image.xRange.contains(x) || !image.yRange.contains(y) {
                var pixels = [Iterator.Element]()
                for y in yRange {
                    for x in xRange {
                        pixels.append(self[x, y])
                    }
                }
                image = AnyImage<Pixel>(Image<Pixel>(width: xRange.count, height: yRange.count, pixels: pixels))
                offsetX = -xRange.lowerBound
                offsetY = -yRange.lowerBound
            }
            image[x + offsetX, y + offsetY] = newValue
        }
    }
    
    public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return ImageSlice<Pixel>(image: AnyImage<Pixel>(self), xRange: xRange, yRange: yRange)
    }
    
    public func makeIterator() -> AnyIterator<Pixel> {
        fatalError("This method is never called.")
    }
}
