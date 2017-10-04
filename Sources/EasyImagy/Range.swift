extension CountableRange {
    internal func isSuperset(of other: CountableRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound || other.isEmpty
    }

    internal func isSuperset(of other: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound < upperBound
    }

    internal func isSuperset(of other: Range<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound || other.isEmpty
    }

    internal func isSuperset(of other: ClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound < upperBound
    }
}

extension CountableClosedRange {
    internal func isSuperset(of other: CountableRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound.advanced(by: 1) || other.isEmpty
    }

    internal func isSuperset(of other: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound
    }

    internal func isSuperset(of other: Range<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound.advanced(by: 1) || other.isEmpty
    }

    internal func isSuperset(of other: ClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound
    }
}

extension Range where Bound: _Strideable, Bound.Stride: SignedInteger {
    internal func isSuperset(of other: CountableRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound || other.isEmpty
    }

    internal func isSuperset(of other: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound < upperBound
    }
}

extension Range {
    internal func isSuperset(of other: Range<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound || other.isEmpty
    }

    internal func isSuperset(of other: ClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound < upperBound
    }
}

extension ClosedRange where Bound: _Strideable, Bound.Stride: SignedInteger {
    internal func isSuperset(of other: CountableRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound.advanced(by: 1) || other.isEmpty
    }

    internal func isSuperset(of other: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound
    }

    internal func isSuperset(of other: Range<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound.advanced(by: 1) || other.isEmpty
    }
}

extension ClosedRange {
    internal func isSuperset(of other: Range<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound || other.isEmpty
    }

    internal func isSuperset(of other: ClosedRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound
    }
}

