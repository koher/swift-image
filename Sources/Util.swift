internal func getValidCount(_ range: CountableRange<Int>, maxCount: Int) -> Int {
    return max(min(range.upperBound, maxCount) - max(range.lowerBound, 0), 0)
}

internal func clamp<T: Comparable>(_ x: T, lower: T, upper: T) -> T {
    return min(max(x, lower), upper)
}

extension Range {
    internal func contains(_ range: Range<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }
    
    internal func contains(_ range: ClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }
}

extension Range where Bound: Strideable, Bound.Stride: SignedInteger {
    internal func contains(_ range: CountableRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }
    
    internal func contains(_ range: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }
}

extension ClosedRange {
    internal func contains(_ range: Range<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }
    
    internal func contains(_ range: ClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }
}

extension ClosedRange where Bound: Strideable, Bound.Stride: SignedInteger {
    internal func contains(_ range: CountableRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }
    
    internal func contains(_ range: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }
}

extension CountableRange {
    internal func contains(_ range: Range<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }
    
    internal func contains(_ range: ClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }

    internal func contains(_ range: CountableRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }
    
    internal func contains(_ range: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }
}

extension CountableClosedRange {
    internal func contains(_ range: Range<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }
    
    internal func contains(_ range: ClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }

    internal func contains(_ range: CountableRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound < upperBound
    }
    
    internal func contains(_ range: CountableClosedRange<Bound>) -> Bool {
        return lowerBound <= range.lowerBound && range.upperBound <= upperBound
    }
}
