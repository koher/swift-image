extension ImageProtocol where Pixel : _NumericPixel {
    @inlinable
    public func convoluted<Kernel: ImageProtocol>(
        with kernel: Kernel,
        extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel> = .edge
    ) -> Image<Pixel> where Kernel.Pixel == Int {
        switch extrapolationMethod {
        case .constant(let value):
            return _convoluted(with: kernel) { x, y in
                extrapolatedPixelByFillingAt(x: x, y: y, by: value)
            }
        case .edge:
            return _convoluted(with: kernel) { x, y in
                extrapolatedPixelByEdgeAt(x: x, y: y, xRange: ClosedRange(xRange), yRange: ClosedRange(yRange))
            }
        case .repeat:
            return _convoluted(with: kernel) { x, y in
                extrapolatedPixelByRepeatAt(x: x, y: y, minX: xRange.lowerBound, minY: yRange.lowerBound, width: width, height: height)
            }
        case .reflection:
            let doubleWidth = width * 2
            let doubleHeight = height * 2
            return _convoluted(with: kernel) { x, y in
                extrapolatedPixelByReflectionAt(
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

    @inlinable
    public func convoluted<Kernel: ImageProtocol>(
        with kernel: Kernel,
        extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel> = .edge
    ) -> Image<Pixel> where Kernel.Pixel == Float {
        switch extrapolationMethod {
        case .constant(let value):
            return _convoluted(with: kernel) { x, y in
                extrapolatedPixelByFillingAt(x: x, y: y, by: value)
            }
        case .edge:
            return _convoluted(with: kernel) { x, y in
                extrapolatedPixelByEdgeAt(x: x, y: y, xRange: ClosedRange(xRange), yRange: ClosedRange(yRange))
            }
        case .repeat:
            return _convoluted(with: kernel) { x, y in
                extrapolatedPixelByRepeatAt(x: x, y: y, minX: xRange.lowerBound, minY: yRange.lowerBound, width: width, height: height)
            }
        case .reflection:
            let doubleWidth = width * 2
            let doubleHeight = height * 2
            return _convoluted(with: kernel) { x, y in
                extrapolatedPixelByReflectionAt(
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

    @inlinable
    public func convoluted<Kernel: ImageProtocol>(
        with kernel: Kernel,
        extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel> = .edge
    ) -> Image<Pixel> where Kernel.Pixel == Double {
        switch extrapolationMethod {
        case .constant(let value):
            return _convoluted(with: kernel) { x, y in
                extrapolatedPixelByFillingAt(x: x, y: y, by: value)
            }
        case .edge:
            return _convoluted(with: kernel) { x, y in
                extrapolatedPixelByEdgeAt(x: x, y: y, xRange: ClosedRange(xRange), yRange: ClosedRange(yRange))
            }
        case .repeat:
            return _convoluted(with: kernel) { x, y in
                extrapolatedPixelByRepeatAt(x: x, y: y, minX: xRange.lowerBound, minY: yRange.lowerBound, width: width, height: height)
            }
        case .reflection:
            let doubleWidth = width * 2
            let doubleHeight = height * 2
            return _convoluted(with: kernel) { x, y in
                extrapolatedPixelByReflectionAt(
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

    @usableFromInline
    internal func _convoluted<Kernel: ImageProtocol>(
        with kernel: Kernel,
        pixelAt: (Int, Int) -> Pixel
    ) -> Image<Pixel> where Kernel.Pixel == Int {
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
                var weightedValues: [Pixel.IntType] = []
                for ky in kyRange {
                    for kx in kxRange {
                        let dx = (kx - kxRange.lowerBound) - hw
                        let dy = (ky - kyRange.lowerBound) - hh
                        let summablePixel = pixelAt(x + dx, y + dy).summableI
                        let weight = kernel[kx, ky]
                        weightedValues.append(Pixel.productI(summablePixel, weight))
                    }
                }
                pixels.append(Pixel.init(summableI: weightedValues.reduce(Pixel.summableIZero) { Pixel.IntType._sum($0, $1) }))
            }
        }
        
        return Image<Pixel>(width: width, height: height, pixels: pixels)
    }

    @usableFromInline
    internal func _convoluted<Kernel: ImageProtocol>(
        with kernel: Kernel,
        pixelAt: (Int, Int) -> Pixel
    ) -> Image<Pixel> where Kernel.Pixel == Float {
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
                var weightedValues: [Pixel.FloatType] = []
                for ky in kyRange {
                    for kx in kxRange {
                        let dx = (kx - kxRange.lowerBound) - hw
                        let dy = (ky - kyRange.lowerBound) - hh
                        let summablePixel = pixelAt(x + dx, y + dy).summableF
                        let weight = kernel[kx, ky]
                        weightedValues.append(Pixel.productF(summablePixel, weight))
                    }
                }
                pixels.append(Pixel.init(summableF: weightedValues.reduce(Pixel.summableFZero) { Pixel.FloatType._sum($0, $1) }))
            }
        }
        
        return Image<Pixel>(width: width, height: height, pixels: pixels)
    }

    @usableFromInline
    internal func _convoluted<Kernel: ImageProtocol>(
        with kernel: Kernel,
        pixelAt: (Int, Int) -> Pixel
    ) -> Image<Pixel> where Kernel.Pixel == Double {
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
                var weightedValues: [Pixel.DoubleType] = []
                for ky in kyRange {
                    for kx in kxRange {
                        let dx = (kx - kxRange.lowerBound) - hw
                        let dy = (ky - kyRange.lowerBound) - hh
                        let summablePixel = pixelAt(x + dx, y + dy).summableD
                        let weight = kernel[kx, ky]
                        weightedValues.append(Pixel.productD(summablePixel, weight))
                    }
                }
                pixels.append(Pixel.init(summableD: weightedValues.reduce(Pixel.summableDZero) { Pixel.DoubleType._sum($0, $1) }))
            }
        }
        
        return Image<Pixel>(width: width, height: height, pixels: pixels)
    }
}
