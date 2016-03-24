public struct ImageSlice<Pixel> {
    internal let image: Image<Pixel>
    internal let xRange: Range<Int>
    internal let yRange: Range<Int>
    
    public init(image: Image<Pixel>, xRange: Range<Int>, yRange: Range<Int>) {
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

extension ImageSlice { // Subscripts (Range)
    public subscript(xRange: Range<Int>?, yRange: Range<Int>?) -> ImageSlice {
        return image[xRange ?? self.xRange, yRange ?? self.yRange]
    }
}

extension ImageSlice { // safe get
    public func pixel(x: Int, _ y: Int) -> Pixel? {
        return image.pixel(x, y)
    }
}

extension ImageSlice: SequenceType {
    public func generate() -> PixelGenerator<Pixel> {
        return PixelGenerator(image: image, xRange: validRange(xRange, maxValue: image.width), yRange: validRange(yRange, maxValue: image.height))
    }
}

private func validRange(range: Range<Int>, maxValue: Int) -> Range<Int> {
    return max(0, range.startIndex)..<min(maxValue, range.endIndex)
}

public struct PixelGenerator<Pixel>: GeneratorType {
    public typealias Element = Pixel
    
    private let image: Image<Pixel>
    
    private let xRange: Range<Int>
    private let yRange: Range<Int>
    
    private var x: Int
    private var y: Int
    
    init(image: Image<Pixel>, xRange: Range<Int>, yRange: Range<Int>) {
        self.image = image
        
        self.xRange = xRange
        self.yRange = yRange
        
        self.x = xRange.startIndex
        self.y = yRange.startIndex
    }
    
    public mutating func next() -> Pixel? {
        if x == xRange.endIndex {
            x = xRange.startIndex
            y += 1
        }
        
        guard y < yRange.endIndex else { return nil }
        defer { x += 1 }
        
        return image[x, y]
    }
}
