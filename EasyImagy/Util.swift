internal func getValidCount(range: Range<Int>, maxCount: Int) -> Int {
    return max(min(range.endIndex, maxCount) - max(range.startIndex, 0), 0)
}

internal func clamp<T: Comparable>(x: T, lower: T, upper: T) -> T {
    return min(max(x, lower), upper)
}
