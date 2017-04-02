public struct ImageSlice<Pixel> {
    internal let image: Image<Pixel>
    internal let xRange: CountableRange<Int>
    internal let yRange: CountableRange<Int>
    
    public init(image: Image<Pixel>, xRange: CountableRange<Int>, yRange: CountableRange<Int>) {
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
    
    public var validCount: Int {
        return getValidCount(xRange, maxCount: image.width) * getValidCount(yRange, maxCount: image.height)
    }
}

extension ImageSlice { // Subscripts (Index)
    public subscript(x: Int, y: Int) -> Pixel {
        return image[x, y]
    }
}

// Does not support combinations of range types like `xRange: Range<Int>, yRange: ClosedRange<Int>` currently
extension ImageSlice { // Subscripts (Range)
    public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return image[xRange, yRange]
    }
    
    public subscript(xRange: CountableClosedRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return image[xRange, yRange]
    }
    
    public subscript(xRange: Range<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return image[xRange, yRange]
    }
    
    public subscript(xRange: ClosedRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return image[xRange, yRange]
    }
    
    public subscript(xRange: CountableRange<Int>?, yRange: CountableRange<Int>?) -> ImageSlice<Pixel> {
        return image[xRange ?? self.xRange, yRange ?? self.yRange]
    }
    
    public subscript(xRange: CountableClosedRange<Int>?, yRange: CountableClosedRange<Int>?) -> ImageSlice<Pixel> {
        return image[xRange.map { CountableRange($0) } ?? self.xRange, yRange.map { CountableRange($0) } ?? self.yRange]
    }
    
    public subscript(xRange: Range<Int>?, yRange: Range<Int>?) -> ImageSlice<Pixel> {
        return image[xRange.map { CountableRange($0) } ?? self.xRange, yRange.map { CountableRange($0) } ?? self.yRange]
    }
    
    public subscript(xRange: ClosedRange<Int>?, yRange: ClosedRange<Int>?) -> ImageSlice<Pixel> {
        return image[xRange.map { CountableRange($0) } ?? self.xRange, yRange.map { CountableRange($0) } ?? self.yRange]
    }
}

extension ImageSlice { // safe get
    public func pixel(_ x: Int, _ y: Int) -> Pixel? {
        return image.pixel(x, y)
    }
}

extension ImageSlice: Sequence {
    public func makeIterator() -> PixelGenerator<Pixel> {
        return PixelGenerator(image: image, xRange: validRange(xRange, maxValue: image.width), yRange: validRange(yRange, maxValue: image.height))
    }
}

private func validRange(_ range: CountableRange<Int>, maxValue: Int) -> CountableRange<Int> {
    return max(0, range.lowerBound)..<min(maxValue, range.upperBound)
}

public struct PixelGenerator<Pixel>: IteratorProtocol {
    public typealias Element = Pixel
    
    fileprivate let image: Image<Pixel>
    
    fileprivate let xRange: CountableRange<Int>
    fileprivate let yRange: CountableRange<Int>
    
    fileprivate var x: Int
    fileprivate var y: Int
    
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
