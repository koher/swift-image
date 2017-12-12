extension ImageProtocol {
    internal func convoluted<W, Summable, Kernel: ImageProtocol>(
        with kernel: Kernel,
        extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>,
        toSummable: (Pixel) -> Summable,
        product: (Summable, W) -> Summable,
        zero: Summable,
        sum: (Summable, Summable) -> Summable,
        toOriginal: (Summable) -> Pixel
    ) -> Image<Pixel> where Kernel.Pixel == W {
        switch extrapolationMethod {
        case .filling(let value):
            return _convoluted(with: kernel, toSummable: toSummable, product: product, zero: zero, sum: sum, toOriginal: toOriginal) { x, y in
                extrapolatedPixelByFillingAt(x: x, y: y, by: value)
            }
        case .edging:
            return _convoluted(with: kernel, toSummable: toSummable, product: product, zero: zero, sum: sum, toOriginal: toOriginal) { x, y in
                extrapolatedPixelByEdgingAt(x: x, y: y, xRange: ClosedRange(xRange), yRange: ClosedRange(yRange))
            }
        case .repeating:
            return _convoluted(with: kernel, toSummable: toSummable, product: product, zero: zero, sum: sum, toOriginal: toOriginal) { x, y in
                extrapolatedPixelByRepeatingAt(x: x, y: y, minX: xRange.lowerBound, minY: yRange.lowerBound, width: width, height: height)
            }
        case .mirroring:
            let doubleWidth = width * 2
            let doubleHeight = height * 2
            return _convoluted(with: kernel, toSummable: toSummable, product: product, zero: zero, sum: sum, toOriginal: toOriginal) { x, y in
                extrapolatedPixelByMirroringAt(
                    x: x,
                    y: y,
                    minX: xRange.lowerBound,
                    minY: yRange.lowerBound,
                    doubleWidth: doubleWidth,
                    doubleHeight: doubleHeight,
                    doubleWidthMinusOne: doubleWidth - 1,
                    doubleHeightMinusOne: doubleHeight - 1
                )
            }
        }
    }
    
    private func _convoluted<W, Summable, Kernel: ImageProtocol>(
        with kernel: Kernel,
        toSummable: (Pixel) -> Summable,
        product: (Summable, W) -> Summable,
        zero: Summable,
        sum: (Summable, Summable) -> Summable,
        toOriginal: (Summable) -> Pixel,
        pixelAt: (Int, Int) -> Pixel
    ) -> Image<Pixel> where Kernel.Pixel == W {
        precondition(kernel.width % 2 == 1, "The width of the `kernel` must be odd: \(kernel.width)")
        precondition(kernel.height % 2 == 1, "The height of the `kernel` must be odd: \(kernel.height)")

        let xRange = self.xRange
        let yRange = self.yRange
        
        let kxRange = kernel.xRange
        let kyRange = kernel.yRange
        
        let hw = kxRange.count / 2  // halfWidth
        let hh = kyRange.count / 2 // halfHeight
        
        var pixels: [Pixel] = []
        pixels.reserveCapacity(count)
        
        for y in yRange {
            for x in xRange {
                var weightedValues: [Summable] = []
                for ky in kyRange {
                    for kx in kxRange {
                        let dx = (kx - kxRange.lowerBound) - hw
                        let dy = (ky - kyRange.lowerBound) - hh
                        let summablePixel = toSummable(pixelAt(x + dx, y + dy))
                        let weight = kernel[kx, ky]
                        weightedValues.append(product(summablePixel, weight))
                    }
                }
                pixels.append(toOriginal(weightedValues.reduce(zero) { sum($0, $1) }))
            }
        }
        
        return Image<Pixel>(width: width, height: height, pixels: pixels)
    }
}
