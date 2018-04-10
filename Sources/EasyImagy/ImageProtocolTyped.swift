import Foundation

extension ImageProtocol where Element == RGBA<UInt8> { // Resizing
    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
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
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}
extension ImageProtocol where Element == RGBA<UInt16> { // Resizing

    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
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
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}
extension ImageProtocol where Element == RGBA<UInt32> { // Resizing

    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
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
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}
extension ImageProtocol where Element == RGBA<Int> { // Resizing

    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
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
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}
extension ImageProtocol where Element == RGBA<Float> { // Resizing

    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
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
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}
extension ImageProtocol where Element == RGBA<Double> { // Resizing

    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
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
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}
extension ImageProtocol where Element == UInt8 { // Resizing

    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
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
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}
extension ImageProtocol where Element == UInt16 { // Resizing

    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
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
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}
extension ImageProtocol where Element == UInt32 { // Resizing

    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
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
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}
extension ImageProtocol where Element == Int { // Resizing

    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
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
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}
extension ImageProtocol where Element == Float { // Resizing

    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
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
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}
extension ImageProtocol where Element == Double { // Resizing

    public func resizedTo(width: Int, height: Int) -> Image<Pixel> {
        let ox = xRange.lowerBound
        let oy = yRange.lowerBound
        if ox == 0 && oy == 0 {
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y] },
                extrapolatedPixelAt: { x, y in self[x, y, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: true,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, extrapolatedBy: .edge] }
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
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[x, y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        } else {
            let dox = Double(ox)
            let doy = Double(oy)
            return resizedTo(
                width: width,
                height: height,
                isAntialiased: isAntialiased,
                toSummable: { $0.summableI },
                zero: Pixel.summableIZero,
                sum: +,
                quotient: { a, b in Pixel.init(summableI: Pixel.quotientI(a, b)) },
                pixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod] },
                extrapolatedPixelAt: { x, y in self[dox + x, doy + y, interpolatedBy: interpolationMethod, extrapolatedBy: .edge] }
            )
        }
    }
}

extension ImageProtocol where Element == RGBA<UInt8> { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == RGBA<UInt16> { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == RGBA<UInt32> { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == RGBA<Int> { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == RGBA<Float> { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == RGBA<Double> { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == UInt8 { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == UInt16 { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == UInt32 { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == Int { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == Float { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == Double { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: .filling(.selfZero)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }

    public func rotated(by angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: .bilinear, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, extrapolatedBy: extrapolationMethod)
    }

    public func rotated(by angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[$0, $1, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod] }
    }
    
    public func rotated(byDegrees angle: Double, interpolatedBy interpolationMethod: InterpolationMethod, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi, interpolatedBy: interpolationMethod, extrapolatedBy: extrapolationMethod)
    }
}

extension ImageProtocol where Element == RGBA<Bool> { // Rotation
    public func rotated(byDegrees angle: Int) -> Image<Pixel> {
        if angle % 90 == 0 {
            return rotated(byRightAngleInDegrees: angle)
        } else {
            return rotated(byDegrees: Double(angle))
        }
    }

    public func rotated(by angle: Double) -> Image<Pixel> {
        return rotatedImageWith(angle: angle) { self[Int(round($0)), Int(round($1)), extrapolatedBy: .filling(RGBA<Bool>(red: false, green: false, blue: false, alpha: false))] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
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
        return rotatedImageWith(angle: angle) { self[Int(round($0)), Int(round($1)), extrapolatedBy: .filling(false)] }
    }
    
    public func rotated(byDegrees angle: Double) -> Image<Pixel> {
        return rotated(by: angle / 180.0 * .pi)
    }
}
