import Foundation

extension ImageProtocol {
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        precondition(angle % 90 == 0, "`angle` must be a multiple of 90: \(angle)")
        return rotated(byRightAngleInDegrees: angle)
    }
    
    private func rotated(byRightAngleInDegrees angle: Int) -> Image<Pixel> {
        assert(angle % 90 == 0, "`angle` must be a multiple of 90: \(angle)")
        
        switch (angle / 90) % 4 {
        case 0:
            if let zelf = self as? Image<Pixel> {
                return zelf
            } else {
                return Image(self)
            }
        case 1, -3:
            var pixels = [Pixel]()
            
            for y in xRange {
                for x in yRange.reversed() {
                    pixels.append(self[y, x])
                }
            }
            
            return Image(width: height, height: width, pixels: pixels)
        case 2, -2:
            var pixels = [Pixel]()
            
            for y in yRange.reversed() {
                for x in xRange.reversed() {
                    pixels.append(self[x, y])
                }
            }
            
            return Image(width: width, height: height, pixels: pixels)
        case 3, -1:
            var pixels = [Pixel]()
            
            for y in xRange.reversed() {
                for x in yRange {
                    pixels.append(self[y, x])
                }
            }
            
            return Image(width: height, height: width, pixels: pixels)
        default:
            fatalError("Never reaches here.")
        }
    }
    
    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[Int(round($0)), Int(round($1)), extrapolation: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    private func rotatedImageWith(
        angle: Double,
        pixelAt: (Double, Double) -> Pixel
    ) -> Image<Pixel> {
        let s = sin(angle)
        let c = cos(angle)
        
        let xRange = self.xRange
        let yRange = self.yRange
        
        let ox0 = Double(xRange.lowerBound)
        let oy0 = Double(yRange.lowerBound)
        
        let w0 = xRange.count
        let h0 = yRange.count
        
        let hw0 = Double(w0) / 2
        let hh0 = Double(h0) / 2
        
        let hw9d = Swift.max(abs(hw0 * c - hh0 * s), abs(hw0 * c - (-hh0) * s))
        let hh9d = Swift.max(abs(hw0 * s + hh0 * c), abs(hw0 * s + (-hh0) * c))
        
        let w9 = Int(round(hw9d * 2))
        let h9 = Int(round(hh9d * 2))
        
        let hw9 = Double(w9) / 2
        let hh9 = Double(h9) / 2
        
        return Image<Pixel>(width: w9, height: h9, pixelAt: { x9, y9 in
            let x2 = Double(x9) - (hw9 - 0.5)
            let y2 = Double(y9) - (hh9 - 0.5)
            
            let x1 = x2 * c - y2 * (-s)
            let y1 = x2 * (-s) + y2 * c
            
            let x0 = x1 + (hw0 - 0.5)
            let y0 = y1 + (hh0 - 0.5)

            return pixelAt(x0 + ox0, y0 + oy0)
        })
    }
}

extension ImageProtocol where Pixel : _Numeric {
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }
    
    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolation: .bilinear, extrapolation: .constant(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }
    
    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolation: .bilinear, extrapolation: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }
    
    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolation: interpolationMethod, extrapolation: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == Bool { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }
    
    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[Int(round($0)), Int(round($1)), extrapolation: .constant(false)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }
}
