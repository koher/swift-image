import Foundation

public enum InterpolationMethod {
    case nearestNeighbor
    case bilinear
    // case bicubic // Unimplemented yet
}

extension Image {
    internal func interpolatedPixelByNearestNeighbor(x: Float, y: Float, pixelAt: (Int, Int) -> Pixel) -> Pixel {
        let xi = Int(round(x))
        let yi = Int(round(y))
        return pixelAt(xi, yi)
    }
    
    internal func interpolatedPixelByBilinear<Summable>(
        x: Float,
        y: Float,
        toSummable: (Pixel) -> Summable,
        product: (Summable, Float) -> Summable,
        sum: (Summable, Summable) -> Summable,
        toOriginal: (Summable) -> Pixel,
        pixelAt: (Int, Int) -> Pixel
    ) -> Pixel {
        let x0 = Int(floor(x))
        let y0 = Int(floor(y))
        let x1 = Int(ceil(x))
        let y1 = Int(ceil(y))
        
        let v00 = pixelAt(x0, y0)
        let v01 = pixelAt(x1, y0)
        let v10 = pixelAt(x0, y1)
        let v11 = pixelAt(x1, y1)
        
        let wx = x - Float(x0)
        let wy = y - Float(y0)
        let w00 = (1.0 - wx) * (1.0 - wy)
        let w01 = wx * (1.0 - wy)
        let w10 = (1.0 - wx) * wy
        let w11 = wx * wy
        
        return toOriginal(sum(
            sum(product(toSummable(v00), w00), product(toSummable(v01), w01)),
            sum(product(toSummable(v10), w10), product(toSummable(v11), w11))
        ))
    }
}
