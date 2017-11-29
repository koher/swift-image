extension Image where Pixel == RGBA<UInt8> { // Convolution
    public func convoluted(by kernel: Image<Int>) -> Image<RGBA<UInt8>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(by kernel: Image<Float>) -> Image<RGBA<UInt8>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(by kernel: Image<Double>) -> Image<RGBA<UInt8>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == RGBA<UInt16> { // Convolution
    public func convoluted(by kernel: Image<Int>) -> Image<RGBA<UInt16>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(by kernel: Image<Float>) -> Image<RGBA<UInt16>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(by kernel: Image<Double>) -> Image<RGBA<UInt16>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == RGBA<UInt32> { // Convolution
    public func convoluted(by kernel: Image<Int>) -> Image<RGBA<UInt32>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(by kernel: Image<Float>) -> Image<RGBA<UInt32>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(by kernel: Image<Double>) -> Image<RGBA<UInt32>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == RGBA<Int> { // Convolution
    public func convoluted(by kernel: Image<Int>) -> Image<RGBA<Int>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(by kernel: Image<Float>) -> Image<RGBA<Int>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(by kernel: Image<Double>) -> Image<RGBA<Int>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == RGBA<Float> { // Convolution
    public func convoluted(by kernel: Image<Int>) -> Image<RGBA<Float>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(by kernel: Image<Float>) -> Image<RGBA<Float>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(by kernel: Image<Double>) -> Image<RGBA<Float>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == RGBA<Double> { // Convolution
    public func convoluted(by kernel: Image<Int>) -> Image<RGBA<Double>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(by kernel: Image<Float>) -> Image<RGBA<Double>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(by kernel: Image<Double>) -> Image<RGBA<Double>> {
        return self._convoluted(by: kernel, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == UInt8 { // Convolution
    public func convoluted(by kernel: Image<Int>) -> Image<UInt8> {
        return self._convoluted(by: kernel, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(by kernel: Image<Float>) -> Image<UInt8> {
        return self._convoluted(by: kernel, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(by kernel: Image<Double>) -> Image<UInt8> {
        return self._convoluted(by: kernel, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == UInt16 { // Convolution
    public func convoluted(by kernel: Image<Int>) -> Image<UInt16> {
        return self._convoluted(by: kernel, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(by kernel: Image<Float>) -> Image<UInt16> {
        return self._convoluted(by: kernel, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(by kernel: Image<Double>) -> Image<UInt16> {
        return self._convoluted(by: kernel, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == UInt32 { // Convolution
    public func convoluted(by kernel: Image<Int>) -> Image<UInt32> {
        return self._convoluted(by: kernel, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(by kernel: Image<Float>) -> Image<UInt32> {
        return self._convoluted(by: kernel, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(by kernel: Image<Double>) -> Image<UInt32> {
        return self._convoluted(by: kernel, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == Int { // Convolution
    public func convoluted(by kernel: Image<Int>) -> Image<Int> {
        return self._convoluted(by: kernel, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(by kernel: Image<Float>) -> Image<Int> {
        return self._convoluted(by: kernel, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(by kernel: Image<Double>) -> Image<Int> {
        return self._convoluted(by: kernel, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == Float { // Convolution
    public func convoluted(by kernel: Image<Int>) -> Image<Float> {
        return self._convoluted(by: kernel, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(by kernel: Image<Float>) -> Image<Float> {
        return self._convoluted(by: kernel, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(by kernel: Image<Double>) -> Image<Float> {
        return self._convoluted(by: kernel, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == Double { // Convolution
    public func convoluted(by kernel: Image<Int>) -> Image<Double> {
        return self._convoluted(by: kernel, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(by kernel: Image<Float>) -> Image<Double> {
        return self._convoluted(by: kernel, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(by kernel: Image<Double>) -> Image<Double> {
        return self._convoluted(by: kernel, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == RGBA<UInt8> { // Interpolation, Transformation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> RGBA<UInt8> {
        return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<UInt8> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighborWithPreconditions(x: x, y: y)
            case .bilinear:
                return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
        }
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<RGBA<UInt8>> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == RGBA<UInt16> { // Interpolation, Transformation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> RGBA<UInt16> {
        return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<UInt16> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighborWithPreconditions(x: x, y: y)
            case .bilinear:
                return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
        }
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<RGBA<UInt16>> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == RGBA<UInt32> { // Interpolation, Transformation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> RGBA<UInt32> {
        return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<UInt32> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighborWithPreconditions(x: x, y: y)
            case .bilinear:
                return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
        }
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<RGBA<UInt32>> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == RGBA<Int> { // Interpolation, Transformation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> RGBA<Int> {
        return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<Int> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighborWithPreconditions(x: x, y: y)
            case .bilinear:
                return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
        }
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<RGBA<Int>> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == RGBA<Float> { // Interpolation, Transformation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> RGBA<Float> {
        return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<Float> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighborWithPreconditions(x: x, y: y)
            case .bilinear:
                return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
        }
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<RGBA<Float>> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == RGBA<Double> { // Interpolation, Transformation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> RGBA<Double> {
        return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<Double> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighborWithPreconditions(x: x, y: y)
            case .bilinear:
                return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
        }
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<RGBA<Double>> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == UInt8 { // Interpolation, Transformation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> UInt8 {
        return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> UInt8 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighborWithPreconditions(x: x, y: y)
            case .bilinear:
                return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
        }
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<UInt8> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == UInt16 { // Interpolation, Transformation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> UInt16 {
        return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> UInt16 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighborWithPreconditions(x: x, y: y)
            case .bilinear:
                return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
        }
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<UInt16> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == UInt32 { // Interpolation, Transformation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> UInt32 {
        return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> UInt32 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighborWithPreconditions(x: x, y: y)
            case .bilinear:
                return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
        }
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<UInt32> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == Int { // Interpolation, Transformation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> Int {
        return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> Int {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighborWithPreconditions(x: x, y: y)
            case .bilinear:
                return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
        }
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<Int> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == Float { // Interpolation, Transformation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> Float {
        return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> Float {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighborWithPreconditions(x: x, y: y)
            case .bilinear:
                return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
        }
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<Float> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == Double { // Interpolation, Transformation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> Double {
        return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> Double {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighborWithPreconditions(x: x, y: y)
            case .bilinear:
                return interpolatedPixelByBilinearWithPreconditions(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
        }
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<Double> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == RGBA<Int> {
    public static func +(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == RGBA<Int8> {
    public static func +(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == RGBA<Int16> {
    public static func +(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == RGBA<Int32> {
    public static func +(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == RGBA<Int64> {
    public static func +(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == RGBA<UInt> {
    public static func +(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == RGBA<UInt8> {
    public static func +(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == RGBA<UInt16> {
    public static func +(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == RGBA<UInt32> {
    public static func +(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == RGBA<UInt64> {
    public static func +(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == RGBA<Float> {
    public static func +(lhs: Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) -> Image<RGBA<Float>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<Float>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) -> Image<RGBA<Float>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<Float>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) -> Image<RGBA<Float>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<Float>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) -> Image<RGBA<Float>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<Float>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == RGBA<Double> {
    public static func +(lhs: Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) -> Image<RGBA<Double>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<Double>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) -> Image<RGBA<Double>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<Double>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) -> Image<RGBA<Double>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<Double>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) -> Image<RGBA<Double>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<Double>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == RGBA<Bool> {
    public static func &&(lhs: Image<RGBA<Bool>>, rhs: Image<RGBA<Bool>>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 && $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ||(lhs: Image<RGBA<Bool>>, rhs: Image<RGBA<Bool>>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 || $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }
}

extension Image where Pixel == Int {
    public static func +(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Int>, rhs: Image<Int>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Int>, rhs: Image<Int>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Int>, rhs: Image<Int>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Int>, rhs: Image<Int>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Int>, rhs: Image<Int>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Int>, rhs: Image<Int>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Int>, rhs: Image<Int>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Int>, rhs: Image<Int>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == Int8 {
    public static func +(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == Int16 {
    public static func +(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == Int32 {
    public static func +(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == Int64 {
    public static func +(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == UInt {
    public static func +(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == UInt8 {
    public static func +(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == UInt16 {
    public static func +(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == UInt32 {
    public static func +(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == UInt64 {
    public static func +(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`% cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == Float {
    public static func +(lhs: Image<Float>, rhs: Image<Float>) -> Image<Float> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<Float>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Float>, rhs: Image<Float>) -> Image<Float> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<Float>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Float>, rhs: Image<Float>) -> Image<Float> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<Float>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Float>, rhs: Image<Float>) -> Image<Float> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<Float>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Float>, rhs: Image<Float>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Float>, rhs: Image<Float>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Float>, rhs: Image<Float>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Float>, rhs: Image<Float>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == Double {
    public static func +(lhs: Image<Double>, rhs: Image<Double>) -> Image<Double> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<Double>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Double>, rhs: Image<Double>) -> Image<Double> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`- cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<Double>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Double>, rhs: Image<Double>) -> Image<Double> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`* cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<Double>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Double>, rhs: Image<Double>) -> Image<Double> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/ cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<Double>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Double>, rhs: Image<Double>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Double>, rhs: Image<Double>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Double>, rhs: Image<Double>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Double>, rhs: Image<Double>) {
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }
}

extension Image where Pixel == Bool {
    public static func &&(lhs: Image<Bool>, rhs: Image<Bool>) -> Image<Bool> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&& cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 && $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ||(lhs: Image<Bool>, rhs: Image<Bool>) -> Image<Bool> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|| cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 || $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }
}
