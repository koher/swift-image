// Workaround until Swift 4
public typealias UnboundedRange = (Int, Int) -> CountableClosedRange<Int>

extension CountableRange {
    internal func contains(_ range: CountableRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }

    internal func contains(_ range: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }

    internal func contains(_ range: Range<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }

    internal func contains(_ range: ClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }
}

extension CountableClosedRange {
    internal func contains(_ range: CountableRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound.advanced(by: 1)
    }

    internal func contains(_ range: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }

    internal func contains(_ range: Range<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound.advanced(by: 1)
    }

    internal func contains(_ range: ClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }
}

extension Range where Bound: Strideable, Bound.Stride: SignedInteger {
    internal func contains(_ range: CountableRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }

    internal func contains(_ range: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }
}

extension Range {
    internal func contains(_ range: Range<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }

    internal func contains(_ range: ClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }
}

extension ClosedRange where Bound: Strideable, Bound.Stride: SignedInteger {
    internal func contains(_ range: CountableRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound.advanced(by: 1)
    }

    internal func contains(_ range: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }

    internal func contains(_ range: Range<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound.advanced(by: 1)
    }
}

extension ClosedRange {
    internal func contains(_ range: Range<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }

    internal func contains(_ range: ClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }
}

extension Image {
    public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return ImageSlice(image: self, xRange: xRange, yRange: yRange)
    }

    public subscript(xRange: CountableRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[CountableRange(xRange), CountableRange(yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[CountableRange(xRange), CountableRange(yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[CountableRange(xRange), CountableRange(yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[CountableRange(xRange), CountableRange(yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[CountableRange(xRange), CountableRange(yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[CountableRange(xRange), CountableRange(yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[CountableRange(xRange), CountableRange(yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[CountableRange(xRange), CountableRange(yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[CountableRange(xRange), CountableRange(yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[CountableRange(xRange), CountableRange(yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[CountableRange(xRange), CountableRange(yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[CountableRange(xRange), CountableRange(yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[CountableRange(xRange), CountableRange(yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[CountableRange(xRange), CountableRange(yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[CountableRange(xRange), CountableRange(yRange)]
    }
}

extension Image {
    public subscript(xRange: UnboundedRange, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[0..<width, 0..<height]
    }

    public subscript(xRange: UnboundedRange, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[0..<width, yRange]
    }

    public subscript(xRange: UnboundedRange, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[0..<width, yRange]
    }

    public subscript(xRange: UnboundedRange, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[0..<width, yRange]
    }

    public subscript(xRange: UnboundedRange, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[0..<width, yRange]
    }

    public subscript(xRange: CountableRange<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[xRange, 0..<height]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[xRange, 0..<height]
    }

    public subscript(xRange: Range<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[xRange, 0..<height]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[xRange, 0..<height]
    }
}

extension ImageSlice {
    public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: CountableRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: CountableRange<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: CountableRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: Range<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: Range<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: Range<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: Range<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }
}

extension ImageSlice {
    public subscript(xRange: UnboundedRange, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return image[self.xRange, self.yRange]
    }

    public subscript(xRange: UnboundedRange, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[self.xRange, yRange]
    }

    public subscript(xRange: UnboundedRange, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[self.xRange, yRange]
    }

    public subscript(xRange: UnboundedRange, yRange: Range<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[self.xRange, yRange]
    }

    public subscript(xRange: UnboundedRange, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(yRange), "`yRange` is out of bounds: \(yRange)")
        return image[self.xRange, yRange]
    }

    public subscript(xRange: CountableRange<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        return image[xRange, self.yRange]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        return image[xRange, self.yRange]
    }

    public subscript(xRange: Range<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        return image[xRange, self.yRange]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        precondition(self.xRange.contains(xRange), "`xRange` is out of bounds: \(xRange)")
        return image[xRange, self.yRange]
    }
}
