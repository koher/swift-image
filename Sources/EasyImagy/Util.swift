internal func getValidCount(_ range: CountableRange<Int>, maxCount: Int) -> Int {
    return max(min(range.upperBound, maxCount) - max(range.lowerBound, 0), 0)
}

internal func clamp<T: Comparable>(_ x: T, lower: T, upper: T) -> T {
    return min(max(x, lower), upper)
}

extension CountableRange {
    internal func isSuperset(of other: CountableRange<Bound>) -> Bool {
        return lowerBound <= other.lowerBound && other.upperBound <= upperBound || other.isEmpty
    }
}

internal func countableRange<R: RangeExpression>(from range: R, relativeTo collection: CountableRange<Int>) -> CountableRange<Int> where R.Bound == Int {
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

internal func countableRange(from range: CountableRange<Int>, relativeTo collection: CountableRange<Int>) -> CountableRange<Int> {
    return range
}

internal func countableRange(from range: CountableClosedRange<Int>, relativeTo collection: CountableRange<Int>) -> CountableRange<Int> {
    return CountableRange(range)
}

#if !swift(>=4.1.50)
internal func countableRange(from range: Range<Int>, relativeTo collection: CountableRange<Int>) -> CountableRange<Int> {
    return CountableRange(range)
}

internal func countableRange(from range: ClosedRange<Int>, relativeTo collection: CountableRange<Int>) -> CountableRange<Int> {
    return CountableRange(range)
}
#endif
