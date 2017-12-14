import Foundation

extension ImageProtocol {
    internal func rotatedImageWith(
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
