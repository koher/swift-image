extension ImageProtocol {
    internal func resizedTo<Summable>(
        width: Int,
        height: Int,
        isAntialiased: Bool,
        toSummable: (Pixel) -> Summable,
        zero: Summable,
        sum: (Summable, Summable) -> Summable,
        quotient: (Summable, Int) -> Pixel,
        pixelAt: (Double, Double) -> Pixel,
        extrapolatedPixelAt: (Double, Double) -> Pixel
    ) -> Image<Pixel> {
        if width == 0 || height == 0 {
            return Image<Pixel>(width: width, height: height, pixels: [])
        }
        
        let xRange = self.xRange
        let yRange = self.yRange

        if width == xRange.count && height == yRange.count {
            if let image = self as? Image<Pixel> {
                return image
            } else {
                return Image<Pixel>(self)
            }
        }
        
        let isTargetWidthLarger = width >= xRange.count
        let isTargetHeightLarger = height >= yRange.count
        
        if !isAntialiased || (isTargetWidthLarger && isTargetHeightLarger) {
            return resizedByInterpolationTo(width: width, height: height, pixelAt: extrapolatedPixelAt)
        }
        
        let targetWidth = isTargetWidthLarger ? width : (xRange.count / width) * width
        let targetHeight = isTargetHeightLarger ? height : (yRange.count / height) * height
        
        let multiple: Image<Pixel>
        if width < xRange.count && height < yRange.count {
            multiple = resizedByInterpolationTo(width: targetWidth, height: targetHeight, pixelAt: pixelAt)
        } else {
            multiple = resizedByInterpolationTo(width: targetWidth, height: targetHeight, pixelAt: extrapolatedPixelAt)
        }
        return multiple.resizedByMeanTo(
            width: width,
            height: height,
            toSummable: toSummable,
            zero: zero,
            sum: sum,
            quotient: quotient
        )
    }
    
    private func resizedByInterpolationTo(width: Int, height: Int, pixelAt: (Double, Double) -> Pixel) -> Image<Pixel> {
        let sx = Double(xRange.count) / Double(width)
        let sy = Double(yRange.count) / Double(height)
        return Image<Pixel>(width: width, height: height, pixelAt: { x, y in
            print(((Double(x) + 0.5) * sx - 0.5, (Double(y) + 0.5) * sy - 0.5))
            let pixel = pixelAt((Double(x) + 0.5) * sx - 0.5, (Double(y) + 0.5) * sy - 0.5)
            print(pixel)
            return pixel
        })
    }
    
    private func resizedByMeanTo<Summable>(
        width: Int,
        height: Int,
        toSummable: (Pixel) -> Summable,
        zero: Summable,
        sum: (Summable, Summable) -> Summable,
        quotient: (Summable, Int) -> Pixel
    ) -> Image<Pixel> {
        let xRange = self.xRange
        let yRange = self.yRange
        
        assert(width <= xRange.count && xRange.count % width == 0)
        assert(height <= yRange.count && yRange.count % height == 0)
        
        let sx = xRange.count / width
        let sy = yRange.count / height
        let n = sx * sy
        
        var pixels = [Pixel]()
        for y in 0..<height {
            let by = y * sy
            for x in 0..<width {
                let bx = x * sx
                
                var pixel = zero
                for dy in 0..<sy {
                    for dx in 0..<sx {
                        pixel = sum(pixel, toSummable(self[bx + dx, by + dy]))
                    }
                }
                pixels.append(quotient(pixel, n))
            }
        }
        
        return Image<Pixel>(width: width, height: height, pixels: pixels)
    }
}
