@inlinable
internal func clamp<T: Comparable>(_ x: T, lower: T, upper: T) -> T {
    return min(max(x, lower), upper)
}

extension Range {
    internal func isSuperset(of other: Range<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound || other.isEmpty
    }
}

internal func range<R: RangeExpression>(from range: R, relativeTo collection: Range<Int>) -> Range<Int> where R.Bound == Int {
    let all = Int.min ..< Int.max
    let boundedRange: Range<Int> = range.relative(to: all)
    let lowerBound: Int
    let upperBound: Int
    if boundedRange.lowerBound == .min {
        lowerBound = Swift.max(boundedRange.lowerBound, collection.lowerBound)
    } else {
        lowerBound = boundedRange.lowerBound
    }
    if boundedRange.upperBound == .max {
        upperBound = Swift.min(collection.upperBound, boundedRange.upperBound)
    } else {
        upperBound = boundedRange.upperBound
    }
    return lowerBound..<upperBound
}
