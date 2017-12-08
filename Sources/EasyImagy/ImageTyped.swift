extension Image where Pixel == RGBA<UInt8> { // Convolution
    public func convoluted(with kernel: Image<Int>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt8>> = .edging) -> Image<RGBA<UInt8>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(with kernel: Image<Float>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt8>> = .edging) -> Image<RGBA<UInt8>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(with kernel: Image<Double>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt8>> = .edging) -> Image<RGBA<UInt8>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == RGBA<UInt16> { // Convolution
    public func convoluted(with kernel: Image<Int>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt16>> = .edging) -> Image<RGBA<UInt16>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(with kernel: Image<Float>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt16>> = .edging) -> Image<RGBA<UInt16>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(with kernel: Image<Double>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt16>> = .edging) -> Image<RGBA<UInt16>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == RGBA<UInt32> { // Convolution
    public func convoluted(with kernel: Image<Int>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt32>> = .edging) -> Image<RGBA<UInt32>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(with kernel: Image<Float>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt32>> = .edging) -> Image<RGBA<UInt32>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(with kernel: Image<Double>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<UInt32>> = .edging) -> Image<RGBA<UInt32>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == RGBA<Int> { // Convolution
    public func convoluted(with kernel: Image<Int>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Int>> = .edging) -> Image<RGBA<Int>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(with kernel: Image<Float>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Int>> = .edging) -> Image<RGBA<Int>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(with kernel: Image<Double>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Int>> = .edging) -> Image<RGBA<Int>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == RGBA<Float> { // Convolution
    public func convoluted(with kernel: Image<Int>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Float>> = .edging) -> Image<RGBA<Float>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(with kernel: Image<Float>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Float>> = .edging) -> Image<RGBA<Float>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(with kernel: Image<Double>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Float>> = .edging) -> Image<RGBA<Float>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == RGBA<Double> { // Convolution
    public func convoluted(with kernel: Image<Int>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Double>> = .edging) -> Image<RGBA<Double>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(with kernel: Image<Float>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Double>> = .edging) -> Image<RGBA<Double>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(with kernel: Image<Double>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Double>> = .edging) -> Image<RGBA<Double>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == RGBA<Float80> { // Convolution
    public func convoluted(with kernel: Image<Int>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Float80>> = .edging) -> Image<RGBA<Float80>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(with kernel: Image<Float>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Float80>> = .edging) -> Image<RGBA<Float80>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(with kernel: Image<Double>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<RGBA<Float80>> = .edging) -> Image<RGBA<Float80>> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == UInt8 { // Convolution
    public func convoluted(with kernel: Image<Int>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt8> = .edging) -> Image<UInt8> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(with kernel: Image<Float>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt8> = .edging) -> Image<UInt8> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(with kernel: Image<Double>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt8> = .edging) -> Image<UInt8> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == UInt16 { // Convolution
    public func convoluted(with kernel: Image<Int>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt16> = .edging) -> Image<UInt16> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(with kernel: Image<Float>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt16> = .edging) -> Image<UInt16> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(with kernel: Image<Double>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt16> = .edging) -> Image<UInt16> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == UInt32 { // Convolution
    public func convoluted(with kernel: Image<Int>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt32> = .edging) -> Image<UInt32> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(with kernel: Image<Float>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt32> = .edging) -> Image<UInt32> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(with kernel: Image<Double>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<UInt32> = .edging) -> Image<UInt32> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == Int { // Convolution
    public func convoluted(with kernel: Image<Int>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Int> = .edging) -> Image<Int> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(with kernel: Image<Float>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Int> = .edging) -> Image<Int> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(with kernel: Image<Double>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Int> = .edging) -> Image<Int> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == Float { // Convolution
    public func convoluted(with kernel: Image<Int>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Float> = .edging) -> Image<Float> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(with kernel: Image<Float>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Float> = .edging) -> Image<Float> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(with kernel: Image<Double>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Float> = .edging) -> Image<Float> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == Double { // Convolution
    public func convoluted(with kernel: Image<Int>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Double> = .edging) -> Image<Double> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(with kernel: Image<Float>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Double> = .edging) -> Image<Double> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(with kernel: Image<Double>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Double> = .edging) -> Image<Double> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension Image where Pixel == Float80 { // Convolution
    public func convoluted(with kernel: Image<Int>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Float80> = .edging) -> Image<Float80> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableI }, product: Pixel.productI, zero: Pixel.summableIZero, sum: +, toOriginal: Pixel.init(summableI:))
    }

    public func convoluted(with kernel: Image<Float>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Float80> = .edging) -> Image<Float80> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableF }, product: Pixel.productF, zero: Pixel.summableFZero, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func convoluted(with kernel: Image<Double>, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Float80> = .edging) -> Image<Float80> {
        return self.convoluted(with: kernel, extrapolatedBy: extrapolationMethod, toSummable: { $0.summableD }, product: Pixel.productD, zero: Pixel.summableDZero, sum: +, toOriginal: Pixel.init(summableD:))
    }
}

extension ImageProtocol where Element == RGBA<UInt8> { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> RGBA<UInt8> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<UInt8> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<UInt8> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == RGBA<UInt16> { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> RGBA<UInt16> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<UInt16> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<UInt16> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == RGBA<UInt32> { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> RGBA<UInt32> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<UInt32> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<UInt32> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == RGBA<Int> { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> RGBA<Int> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<Int> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<Int> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == RGBA<Float> { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> RGBA<Float> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<Float> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<Float> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == RGBA<Double> { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> RGBA<Double> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<Double> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<Double> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == RGBA<Float80> { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> RGBA<Float80> {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> RGBA<Float80> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> RGBA<Float80> {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == UInt8 { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> UInt8 {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> UInt8 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> UInt8 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == UInt16 { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> UInt16 {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> UInt16 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> UInt16 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == UInt32 { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> UInt32 {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> UInt32 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> UInt32 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == Int { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> Int {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> Int {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Int {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == Float { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> Float {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> Float {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Float {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == Double { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> Double {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> Double {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Double {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}

extension ImageProtocol where Element == Float80 { // Interpolation
    // Not implemented by default parameter values to improve performance especially when this `subscript` is called repeatedly
    public subscript(x: Float, y: Float) -> Float80 {
        return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
    }

    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod) -> Float80 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1] }
        }
    }
    
    public subscript(x: Float, y: Float, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Float80 {
        switch interpolationMethod {
            case .nearestNeighbor:
                return interpolatedPixelByNearestNeighbor(x: x, y: y) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
            case .bilinear:
                return interpolatedPixelByBilinear(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:)) { self[$0, $1, extrapolatedBy: extrapolationMethod] }
        }
    }
}
