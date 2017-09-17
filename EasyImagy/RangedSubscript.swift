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
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: CountableRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: CountableRange<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: CountableRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: Range<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: Range<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: Range<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: Range<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: Range<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[xRange, yRange]
    }
}

extension ImageSlice {
    public subscript(xRange: UnboundedRange, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        return image[self.xRange, self.yRange]
    }

    public subscript(xRange: UnboundedRange, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[self.xRange, yRange]
    }

    public subscript(xRange: UnboundedRange, yRange: CountableClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[self.xRange, yRange]
    }

    public subscript(xRange: UnboundedRange, yRange: Range<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[self.xRange, yRange]
    }

    public subscript(xRange: UnboundedRange, yRange: ClosedRange<Int>) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        return image[self.xRange, yRange]
    }

    public subscript(xRange: CountableRange<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        return image[xRange, self.yRange]
    }

    public subscript(xRange: CountableClosedRange<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        return image[xRange, self.yRange]
    }

    public subscript(xRange: Range<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        return image[xRange, self.yRange]
    }

    public subscript(xRange: ClosedRange<Int>, yRange: UnboundedRange) -> ImageSlice<Pixel> {
        precondition(self.xRange.isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        return image[xRange, self.yRange]
    }
}
