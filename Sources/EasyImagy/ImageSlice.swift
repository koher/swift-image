public struct ImageSlice<Pixel> : ImageProtocol {
    private var image: AnyImage<Pixel>
    public let xRange: CountableRange<Int>
    public let yRange: CountableRange<Int>
    
    internal init<I : ImageProtocol>(image: I, xRange: CountableRange<Int>, yRange: CountableRange<Int>) where I.Pixel == Pixel {
        precondition(image.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(image.yRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        self.image = AnyImage<Pixel>(image)
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
    
    private let image: AnyImage<Pixel>
    
    private let xRange: CountableRange<Int>
    private let yRange: CountableRange<Int>
    
    private var x: Int
    private var y: Int
    
    internal init(image: AnyImage<Pixel>, xRange: CountableRange<Int>, yRange: CountableRange<Int>) {
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
