import Foundation

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
