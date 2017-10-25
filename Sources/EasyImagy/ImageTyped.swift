extension Image where Pixel == RGBA<UInt8> { // map
    public func map(_ transform: (RGBA<UInt8>) -> RGBA<UInt8>) -> Image<RGBA<UInt8>> {
        return self._map(transform)
    }

    public func map(_ transform: (RGBA<UInt8>) -> UInt8) -> Image<UInt8> {
        return self._map(transform)
    }

    public func map(_ transform: (RGBA<UInt8>) -> Int) -> Image<Int> {
        return self._map(transform)
    }

    public func map(_ transform: (RGBA<UInt8>) -> Float) -> Image<Float> {
        return self._map(transform)
    }

    public func map(_ transform: (RGBA<UInt8>) -> Double) -> Image<Double> {
        return self._map(transform)
    }
}

extension Image where Pixel == UInt8 { // map
    public func map(_ transform: (UInt8) -> UInt8) -> Image<UInt8> {
        return self._map(transform)
    }

    public func map(_ transform: (UInt8) -> Int) -> Image<Int> {
        return self._map(transform)
    }

    public func map(_ transform: (UInt8) -> Float) -> Image<Float> {
        return self._map(transform)
    }

    public func map(_ transform: (UInt8) -> Double) -> Image<Double> {
        return self._map(transform)
    }
}

extension Image where Pixel == Int { // map
    public func map(_ transform: (Int) -> Int) -> Image<Int> {
        return self._map(transform)
    }

    public func map(_ transform: (Int) -> Float) -> Image<Float> {
        return self._map(transform)
    }

    public func map(_ transform: (Int) -> Double) -> Image<Double> {
        return self._map(transform)
    }
}

extension Image where Pixel == Float { // map
    public func map(_ transform: (Float) -> Float) -> Image<Float> {
        return self._map(transform)
    }

    public func map(_ transform: (Float) -> Double) -> Image<Double> {
        return self._map(transform)
    }
}

extension Image where Pixel == Double { // map
    public func map(_ transform: (Double) -> Double) -> Image<Double> {
        return self._map(transform)
    }
}

extension Image where Pixel == RGBA<UInt8> { // map with indices
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: RGBA<UInt8>) -> RGBA<UInt8>) -> Image<RGBA<UInt8>> {
        return self._map(transform)
    }

    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: RGBA<UInt8>) -> UInt8) -> Image<UInt8> {
        return self._map(transform)
    }

    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: RGBA<UInt8>) -> Int) -> Image<Int> {
        return self._map(transform)
    }

    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: RGBA<UInt8>) -> Float) -> Image<Float> {
        return self._map(transform)
    }

    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: RGBA<UInt8>) -> Double) -> Image<Double> {
        return self._map(transform)
    }
}

extension Image where Pixel == UInt8 { // map with indices
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: UInt8) -> UInt8) -> Image<UInt8> {
        return self._map(transform)
    }

    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: UInt8) -> Int) -> Image<Int> {
        return self._map(transform)
    }

    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: UInt8) -> Float) -> Image<Float> {
        return self._map(transform)
    }

    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: UInt8) -> Double) -> Image<Double> {
        return self._map(transform)
    }
}

extension Image where Pixel == Int { // map with indices
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: Int) -> Int) -> Image<Int> {
        return self._map(transform)
    }

    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: Int) -> Float) -> Image<Float> {
        return self._map(transform)
    }

    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: Int) -> Double) -> Image<Double> {
        return self._map(transform)
    }
}

extension Image where Pixel == Float { // map with indices
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: Float) -> Float) -> Image<Float> {
        return self._map(transform)
    }

    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: Float) -> Double) -> Image<Double> {
        return self._map(transform)
    }
}

extension Image where Pixel == Double { // map with indices
    public func map(_ transform: (_ x: Int, _ y: Int, _ pixel: Double) -> Double) -> Image<Double> {
        return self._map(transform)
    }
}

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
    public subscript(x: Float, y: Float) -> RGBA<UInt8> {
        return self._interpolate(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<RGBA<UInt8>> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == UInt8 { // Interpolation, Transformation
    public subscript(x: Float, y: Float) -> UInt8 {
        return self._interpolate(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<UInt8> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == Int { // Interpolation, Transformation
    public subscript(x: Float, y: Float) -> Int {
        return self._interpolate(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<Int> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == Float { // Interpolation, Transformation
    public subscript(x: Float, y: Float) -> Float {
        return self._interpolate(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<Float> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}

extension Image where Pixel == Double { // Interpolation, Transformation
    public subscript(x: Float, y: Float) -> Double {
        return self._interpolate(x: x, y: y, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:))
    }

    public func transformed(width: Int, height: Int, transform: (Float, Float) -> (Float, Float)) -> Image<Double> {
        return self._transformed(width: width, height: height, toSummable: { $0.summableF }, product: Pixel.productF, sum: +, toOriginal: Pixel.init(summableF:), transform: transform)
    }
}
