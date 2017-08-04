internal func getValidCount(_ range: CountableRange<Int>, maxCount: Int) -> Int {
    return max(min(range.upperBound, maxCount) - max(range.lowerBound, 0), 0)
}

internal func clamp<T: Comparable>(_ x: T, lower: T, upper: T) -> T {
    return min(max(x, lower), upper)
}
