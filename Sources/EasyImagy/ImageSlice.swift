public struct ImageSlice<Pixel> : ImageProtocol {
    internal var image: Image<Pixel>
    internal let xRange: CountableRange<Int>
    internal let yRange: CountableRange<Int>
    
    public init(image: Image<Pixel>, xRange: CountableRange<Int>, yRange: CountableRange<Int>) {
        precondition((0..<image.width).isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition((0..<image.height).isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        self.image = image
        self.xRange = xRange
        self.yRange = yRange
    }
    
    public var width: Int {
        return xRange.count
    }
    
    public var height: Int {
        return yRange.count
    }

    public var pixels: [Pixel] {
        return map { $0 }
    }
}

extension ImageSlice {
    public var count: Int {
        return width * height
    }
}

extension ImageSlice {
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
}

extension ImageSlice { // safe get
    public func pixelAt(x: Int, y: Int) -> Pixel? {
        guard xRange.contains(x) else { return nil }
        guard yRange.contains(y) else { return nil }
        return image[x, y]
    }
}

extension ImageSlice {
    public func makeIterator() -> PixelGenerator<Pixel> {
        return PixelGenerator(image: image, xRange: validRange(xRange, maxValue: image.width), yRange: validRange(yRange, maxValue: image.height))
    }
}

private func validRange(_ range: CountableRange<Int>, maxValue: Int) -> CountableRange<Int> {
    return max(0, range.lowerBound)..<min(maxValue, range.upperBound)
}

public struct PixelGenerator<Pixel>: IteratorProtocol {
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
