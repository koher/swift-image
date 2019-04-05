public struct ImageSlice<Pixel> : ImageProtocol {
    public typealias SubImage = ImageSlice<Pixel>
    public typealias Element = Pixel // FIXME: Remove this line in the future. Swift 4.1 needs it to build `ImageSlice`.

    @usableFromInline
    internal var image: Image<Pixel>
    public let xRange: Range<Int>
    public let yRange: Range<Int>
    
    internal init(image: Image<Pixel>, xRange: Range<Int>, yRange: Range<Int>) {
        precondition(image.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(image.yRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        self.image = image
        self.xRange = xRange
        self.yRange = yRange
    }

    public init(width: Int, height: Int, pixels: [Pixel]) {
        self.init(image: Image<Pixel>(width: width, height: height, pixels: pixels), xRange: 0..<width, yRange: 0..<height)
    }
    
    public subscript(x: Int, y: Int) -> Pixel {
        get {
            precondition(xRange.contains(x), "`x` is out of bounds: \(x)")
            precondition(yRange.contains(y), "`y` is out of bounds: \(y)")
            return image[x, y]
        }
        
        set {
            precondition(xRange.contains(x), "`x` is out of bounds: \(x)")
            precondition(yRange.contains(y), "`y` is out of bounds: \(y)")
            image[x, y] = newValue
        }
    }
    
    public subscript(xRange: Range<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.yRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }
}

extension ImageSlice {
    public init(_ image: Image<Pixel>) {
        self.init(image: image, xRange: image.xRange, yRange: image.yRange)
    }
}
