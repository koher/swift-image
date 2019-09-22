public struct ImageIterator<Pixels : ImageProtocol> : IteratorProtocol {
    public typealias Element = Pixels.Element
    
    private let image: Pixels
    
    private var x: Int
    private var y: Int
    
    internal init(_ image: Pixels) {
        self.image = image
        
        self.x = image.xRange.lowerBound
        self.y = image.yRange.lowerBound
    }
    
    public mutating func next() -> Element? {
        if x == image.xRange.upperBound {
            x = image.xRange.lowerBound
            y += 1
        }
        
        guard y < image.yRange.upperBound else { return nil }
        defer { x += 1 }
        
        return image[x, y]
    }
}
