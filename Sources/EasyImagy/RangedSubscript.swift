extension Image {
    public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return ImageSlice(image: self, xRange: xRange, yRange: yRange)
    }

    public subscript<R1: RangeExpression, R2: RangeExpression>(xRange: R1, yRange: R2) -> ImageSlice<Pixel> where R1.Bound == Int, R2.Bound == Int {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript<R1: RangeExpression>(xRange: R1, yRange: UnboundedRange) -> ImageSlice<Pixel> where R1.Bound == Int {
        return self[countableRange(from: xRange, relativeTo: self.xRange), self.yRange]
    }

    public subscript<R2: RangeExpression>(xRange: UnboundedRange, yRange: R2) -> ImageSlice<Pixel> where R2.Bound == Int {
        return self[self.xRange, countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[self.xRange, self.yRange]
    }
}

extension ImageSlice {
    public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript<R1: RangeExpression, R2: RangeExpression>(xRange: R1, yRange: R2) -> ImageSlice<Pixel> where R1.Bound == Int, R2.Bound == Int {
        return self[countableRange(from: xRange, relativeTo: self.xRange), countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript<R1: RangeExpression>(xRange: R1, yRange: UnboundedRange) -> ImageSlice<Pixel> where R1.Bound == Int {
        return self[countableRange(from: xRange, relativeTo: self.xRange), self.yRange]
    }

    public subscript<R2: RangeExpression>(xRange: UnboundedRange, yRange: R2) -> ImageSlice<Pixel> where R2.Bound == Int {
        return self[self.xRange, countableRange(from: yRange, relativeTo: self.yRange)]
    }

    public subscript(xRange: UnboundedRange, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return self[self.xRange, self.yRange]
    }
}
