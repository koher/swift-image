internal func getValidCount(range: Range<Int>, maxCount: Int) -> Int {
    return max(min(range.endIndex, maxCount) - max(range.startIndex, 0), 0)
}

internal func generate2d(xs: Range<Int>, _ ys: Range<Int>) -> Generator2d {
    return Generator2d(xRange: xs, yRange: ys)
}

internal struct Generator2d: GeneratorType {
    typealias Element = (Int, Int)
    
    private let xRange: Range<Int>
    private let yRange: Range<Int>
    
    private var x: Int
    private var y: Int
    
    init(xRange: Range<Int>, yRange: Range<Int>) {
        self.xRange = xRange
        self.yRange = yRange
        
        self.x = xRange.startIndex
        self.y = yRange.startIndex
    }
    
    mutating func next() -> (Int, Int)? {
        if x == xRange.endIndex {
            x = 0
            y += 1
        }
        
        guard y < yRange.endIndex else { return nil }
        defer { x += 1 }
        
        return (x, y)
    }
}