extension ImageSlice {    
    internal init<I : ImageProtocol>(image: I, xRange: CountableRange<Int>, yRange: CountableRange<Int>) where I.Pixel == Pixel {
        precondition((0..<image.width).isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition((0..<image.height).isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        self.image = AnyImage<Pixel>(image)
        self.xRange = xRange
        self.yRange = yRange
    }
}
