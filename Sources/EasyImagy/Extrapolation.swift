public enum ExtrapolationMethod<Pixel> {
    case filling(Pixel)
    case edging
    case repeating
    case mirroring
}

private func reminder(_ a: Int, _ b: Int) -> Int {
    let result = a % b
    return result < 0 ? result + b : result
}

extension Image {
    public subscript(x: Int, y: Int, extrapolatedBy extrapolationMethod: ExtrapolationMethod<Pixel>) -> Pixel {
        switch extrapolationMethod {
        case .filling(let value):
            return extrapolatedPixelByFillingAt(x: x, y: y, by: value)
        case .edging:
            return extrapolatedPixelByEdgingAt(x: x, y: y, maxWidth: width - 1, maxHeight: height - 1)
        case .repeating:
            return extrapolatedPixelByRepeatingAt(x: x, y: y)
        case .mirroring:
            let doubleWidth = width * 2
            let doubleHeight = height * 2
            return extrapolatedPixelByMirroringAt(
                x: x,
                y: y,
                doubleWidth: doubleWidth,
                doubleHeight: doubleHeight,
                doubleWidthMinusOne: doubleWidth - 1,
                doubleHeightMinusOne: doubleHeight - 1
            )
        }
    }
    
    internal func extrapolatedPixelByFillingAt(x: Int, y: Int, by value: Pixel) -> Pixel {
        guard xRange.contains(x) && yRange.contains(y) else {
            return value
        }
        return pixelWithAssertionsAt(x: x, y: y)
    }
    
    internal func extrapolatedPixelByEdgingAt(x: Int, y: Int, maxWidth: Int, maxHeight: Int) -> Pixel {
        return pixelWithAssertionsAt(
            x: clamp(x, lower: 0, upper: maxWidth),
            y: clamp(y, lower: 0, upper: maxHeight)
        )
    }
    
    internal func extrapolatedPixelByRepeatingAt(x: Int, y: Int) -> Pixel {
        let width = self.width
        let height = self.height
        let x2 = reminder(x, width)
        let y2 = reminder(y, height)
        return pixelWithAssertionsAt(x: x2, y: y2)
    }
    
    internal func extrapolatedPixelByMirroringAt(
        x: Int,
        y: Int,
        doubleWidth: Int,
        doubleHeight: Int,
        doubleWidthMinusOne: Int,
        doubleHeightMinusOne: Int
    ) -> Pixel {
        let width = self.width
        let height = self.height
        let x2 = reminder(x, doubleWidth)
        let y2 = reminder(y, doubleHeight)
        let x3 = x2 < width ? x2 : doubleWidthMinusOne - x2
        let y3 = y2 < height ? y2 : doubleHeightMinusOne - y2
        return pixelWithAssertionsAt(x: x3, y: y3)
    }
}
