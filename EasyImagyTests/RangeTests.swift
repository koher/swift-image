import XCTest
@testable import EasyImagy

class RangeTests: XCTestCase {
    func testCountableRangeContains() {
        let a: CountableRange<Int> = 2..<7

        do { // CountableRange
            let b: CountableRange<Int> = 3..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...5
            XCTAssertTrue(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 2..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 2...5
            XCTAssertTrue(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 2..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 2...5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 3..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...7
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...7
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 2..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 2...7
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 2..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 2...7
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 1..<5
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 1...5
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 1..<5
            XCTAssertFalse(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 1...5
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 3..<8
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...8
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<8
            XCTAssertFalse(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...8
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 3..<9
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...9
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<9
            XCTAssertFalse(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...9
            XCTAssertFalse(a.contains(b))
        }
    }

    func testCountableClosedRangeContains() {
        let a: CountableClosedRange<Int> = 2...7

        do { // CountableRange
            let b: CountableRange<Int> = 3..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...5
            XCTAssertTrue(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 2..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 2...5
            XCTAssertTrue(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 2..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 2...5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 3..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...7
            XCTAssertTrue(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...7
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 2..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 2...7
            XCTAssertTrue(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 2..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 2...7
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 1..<5
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 1...5
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 1..<5
            XCTAssertFalse(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 1...5
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 3..<8
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...8
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<8
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...8
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 3..<9
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...9
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<9
            XCTAssertFalse(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...9
            XCTAssertFalse(a.contains(b))
        }
    }

    func testRangeContains() {
        let a: Range<Int> = 2..<7

        do { // CountableRange
            let b: CountableRange<Int> = 3..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...5
            XCTAssertTrue(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 2..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 2...5
            XCTAssertTrue(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 2..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 2...5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 3..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...7
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...7
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 2..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 2...7
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 2..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 2...7
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 1..<5
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 1...5
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 1..<5
            XCTAssertFalse(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 1...5
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 3..<8
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...8
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<8
            XCTAssertFalse(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...8
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 3..<9
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...9
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<9
            XCTAssertFalse(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...9
            XCTAssertFalse(a.contains(b))
        }
    }

    func testClosedRangeContains() {
        let a: ClosedRange<Int> = 2...7

        do { // CountableRange
            let b: CountableRange<Int> = 3..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...5
            XCTAssertTrue(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 2..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 2...5
            XCTAssertTrue(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 2..<5
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 2...5
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 3..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...7
            XCTAssertTrue(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...7
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 2..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 2...7
            XCTAssertTrue(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 2..<7
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 2...7
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 1..<5
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 1...5
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 1..<5
            XCTAssertFalse(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 1...5
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 3..<8
            XCTAssertTrue(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...8
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<8
            XCTAssertTrue(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...8
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableRange
            let b: CountableRange<Int> = 3..<9
            XCTAssertFalse(a.contains(b))
        }

        do { // CountableClosedRange
            let b: CountableClosedRange<Int> = 3...9
            XCTAssertFalse(a.contains(b))
        }

        do { // Range
            let b: Range<Int> = 3..<9
            XCTAssertFalse(a.contains(b))
        }

        do { // ClosedRange
            let b: ClosedRange<Int> = 3...9
            XCTAssertFalse(a.contains(b))
        }
    }
}
