import Foundation

extension ImageProtocol {
    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        if width == 0 || height == 0 {
            return Image<Pixel>(width: width, height: height, pixels: [])
        }
        
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedByInterpolationTo(width: width, height: height) { x, y in self[Int(round(x)), Int(round(y)), extrapolation: .edge] }
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedByInterpolationTo(width: width, height: height) { x, y in self[Int(round(dox + x)), Int(round(doy + y)), extrapolation: .edge] }
        }
    }
    
    private func resizedByInterpolationTo(width: Int, height: Int, pixelAt: (Double, Double) -> Pixel) -> Image<Pixel> {
        let sx = Double(xRange.count) / Double(width)
        let sy = Double(yRange.count) / Double(height)
        return Image<Pixel>(width: width, height: height, pixelAt: { x, y in
            pixelAt((Double(x) + 0.5) * sx - 0.5, (Double(y) + 0.5) * sy - 0.5)
        })
    }
}

extension ImageProtocol where Pixel : _Numeric {
    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolation: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolation: .edge] }
            )
        }
    }
    
    public func resizedTo(width: Int, height: Int, interpolatedBy interpolationMethod: InterpolationMethod) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        let isAntialiased: Bool
        if case .nearestNeighbor = interpolationMethod {
            isAntialiased = false
        } else {
            isAntialiased = true
        }
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                pixelAt: { x, y in self[x, y, interpolation: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolation: interpolationMethod, extrapolation: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                pixelAt: { x, y in self[dox + x, doy + y, interpolation: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolation: interpolationMethod, extrapolation: .edge] }
            )
        }
    }
    
    private func resizedTo(
        width: Int,
        height: Int,
        isAntialiased: Bool,
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
            height: height
        )
    }
    
    private func resizedByMeanTo(width: Int, height: Int) -> Image<Pixel> {
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
                
                var pixel = Pixel.summableIZero
                for dy in 0..<sy {
                    for dx in 0..<sx {
                        pixel = Pixel.IntType._sum(pixel, self[bx + dx, by + dy].summableI)
                    }
                }
                pixels.append(Pixel.init(summableI: Pixel.quotientI(pixel, n)))
            }
        }
        
        return Image<Pixel>(width: width, height: height, pixels: pixels)
    }
}
