extension ImageSlice {    
    internal init(image: Image<Pixel>, xRange: CountableRange<Int>, yRange: CountableRange<Int>) {
        precondition((0..<image.width).isSuperset(of: xRange), "`xRange` is out of bounds: \(xRange)")
        precondition((0..<image.height).isSuperset(of: yRange), "`yRange` is out of bounds: \(yRange)")
        self.image = image
        self.xRange = xRange
        self.yRange = yRange
    }
}
