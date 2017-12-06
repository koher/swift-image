public struct ImageSlice<Pixel> : ImageProtocol {
    internal var image: Image<Pixel>
    public let xRange: CountableRange<Int>
    public let yRange: CountableRange<Int>
    
    public init(width: Int, height: Int, pixels: [Pixel]) {
        image = Image<Pixel>(width: width, height: height, pixels: pixels)
        xRange = image.xRange
        yRange = image.yRange
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
    
    public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }
}

extension ImageSlice {
    public init(_ image: Image<Pixel>) {
        self.init(image: image, xRange: image.xRange, yRange: image.yRange)
    }
}

extension ImageSlice {
    public func makeIterator() -> PixelIterator<Pixel> {
        return PixelIterator(image: image, xRange: xRange, yRange: yRange)
    }
}

public struct PixelIterator<Pixel>: IteratorProtocol {
    public typealias Element = Pixel
    
    private let image: Image<Pixel>
    
    private let xRange: CountableRange<Int>
    private let yRange: CountableRange<Int>
    
    private var x: Int
    private var y: Int
    
    init(image: Image<Pixel>, xRange: CountableRange<Int>, yRange: CountableRange<Int>) {
        self.image = image
        
        self.xRange = xRange
        self.yRange = yRange
        
        self.x = xRange.lowerBound
        self.y = yRange.lowerBound
    }
    
    public mutating func next() -> Pixel? {
        if x == xRange.upperBound {
            x = xRange.lowerBound
            y += 1
        }
        
        guard y < yRange.upperBound else { return nil }
        defer { x += 1 }
        
        return image[x, y]
    }
}
