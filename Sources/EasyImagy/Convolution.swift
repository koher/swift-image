extension Image {
    internal func convoluted<W, Summable>(
        with kernel: Image<W>,
        extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>,
        toSummable: (Pixel) -> Summable,
        product: (Summable, W) -> Summable,
        zero: Summable,
        sum: (Summable, Summable) -> Summable,
        toOriginal: (Summable) -> Pixel
    ) -> Image<Pixel> {
        switch extrapolationMethod {
        case .filling(let value):
            return _convoluted(with: kernel, toSummable: toSummable, product: product, zero: zero, sum: sum, toOriginal: toOriginal) { x, y in
                extrapolatedPixelByFillingAt(x: x, y: y, by: value)
            }
        case .edging:
            return _convoluted(with: kernel, toSummable: toSummable, product: product, zero: zero, sum: sum, toOriginal: toOriginal) { x, y in
                extrapolatedPixelByEdgingAt(x: x, y: y, xRange: ClosedRange(self.xRange), yRange: ClosedRange(self.yRange))
            }
        case .repeating:
            return _convoluted(with: kernel, toSummable: toSummable, product: product, zero: zero, sum: sum, toOriginal: toOriginal) { x, y in
                extrapolatedPixelByRepeatingAt(x: x, y: y)
            }
        case .mirroring:
            let doubleWidth = width * 2
            let doubleHeight = height * 2
            return _convoluted(with: kernel, toSummable: toSummable, product: product, zero: zero, sum: sum, toOriginal: toOriginal) { x, y in
                extrapolatedPixelByMirroringAt(
                    x: x,
                    y: y,
                    doubleWidth: doubleWidth,
                    doubleHeight: doubleHeight,
                    doubleWidthMinusOne: doubleWidth - 1,
                    doubleHeightMinusOne: doubleHeight - 1
                )
            }
        }
    }
    
    private func _convoluted<W, Summable>(
        with kernel: Image<W>,
        toSummable: (Pixel) -> Summable,
        product: (Summable, W) -> Summable,
        zero: Summable,
        sum: (Summable, Summable) -> Summable,
        toOriginal: (Summable) -> Pixel,
        pixelAt: (Int, Int) -> Pixel
    ) -> Image<Pixel> {
        precondition(kernel.width % 2 == 1, "The width of the `kernel` must be odd: \(kernel.width)")
        precondition(kernel.height % 2 == 1, "The height of the `kernel` must be odd: \(kernel.height)")
        
        let hw = kernel.width / 2  // halfWidth
        let hh = kernel.height / 2 // halfHeight
        
        var pixels: [Pixel] = []
        pixels.reserveCapacity(count)
        
        for y in 0..<height {
            for x in 0..<width {
                var weightedValues: [Summable] = []
                for fy in 0..<kernel.height {
                    for fx in 0..<kernel.width {
                        let dx = fx - hw
                        let dy = fy - hh
                        let summablePixel = toSummable(pixelAt(x + dx, y + dy))
                        let weight = kernel[fx, fy]
                        weightedValues.append(product(summablePixel, weight))
                    }
                }
                pixels.append(toOriginal(weightedValues.reduce(zero) { sum($0, $1) }))
            }
        }
        
        return Image<Pixel>(width: width, height: height, pixels: pixels)
    }
}
