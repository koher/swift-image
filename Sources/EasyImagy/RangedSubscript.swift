extension Image {
    public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return ImageSlice(image: self, xRange: xRange, yRange: yRange)
    }

    public subscript(xRange: CountableRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }
}

extension ImageSlice {
    public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: CountableRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableRange<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: Range<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeFrom<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeThrough<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: PartialRangeUpTo<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: CountablePartialRangeFrom<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: Range<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: PartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: PartialRangeThrough<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: PartialRangeUpTo<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: CountablePartialRangeFrom<Int>) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }
}
