import XCTest
@testable import EasyImagy

class RangeTests: XCTestCase {
    func testCountableRangeContains() {
        do {
            let a: CountableRange<Int> = 2..<7

            // 3 - 5 

            do {
                let b: CountableRange<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
            }

            // 2 - 5 

            do {
                let b: CountableRange<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: Range<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
            }

            // 3 - 7 

            do {
                let b: CountableRange<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...7
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...7
                XCTAssertFalse(a.contains(b))
            }

            // 2 - 7 

            do {
                let b: CountableRange<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 2...7
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 2...7
                XCTAssertFalse(a.contains(b))
            }

            // 1 - 5 

            do {
                let b: CountableRange<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
            }

            // 3 - 8 

            do {
                let b: CountableRange<Int> = 3..<8
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<8
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
            }

            // 3 - 9 

            do {
                let b: CountableRange<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
            }
        }
    }

    func testCountableClosedRangeContains() {
        do {
            let a: CountableClosedRange<Int> = 2...7

            // 3 - 5 

            do {
                let b: CountableRange<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
            }

            // 2 - 5 

            do {
                let b: CountableRange<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: Range<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
            }

            // 3 - 7 

            do {
                let b: CountableRange<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...7
                XCTAssertTrue(a.contains(b))
            }

            // 2 - 7 

            do {
                let b: CountableRange<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 2...7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: Range<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 2...7
                XCTAssertTrue(a.contains(b))
            }

            // 1 - 5 

            do {
                let b: CountableRange<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
            }

            // 3 - 8 

            do {
                let b: CountableRange<Int> = 3..<8
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<8
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
            }

            // 3 - 9 

            do {
                let b: CountableRange<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
            }
        }
    }

    func testRangeContains() {
        do {
            let a: Range<Int> = 2..<7

            // 3 - 5 

            do {
                let b: CountableRange<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
            }

            // 2 - 5 

            do {
                let b: CountableRange<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: Range<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
            }

            // 3 - 7 

            do {
                let b: CountableRange<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...7
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...7
                XCTAssertFalse(a.contains(b))
            }

            // 2 - 7 

            do {
                let b: CountableRange<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 2...7
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 2...7
                XCTAssertFalse(a.contains(b))
            }

            // 1 - 5 

            do {
                let b: CountableRange<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
            }

            // 3 - 8 

            do {
                let b: CountableRange<Int> = 3..<8
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<8
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
            }

            // 3 - 9 

            do {
                let b: CountableRange<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
            }
        }

        do {
            let a: Range<Float> = 2..<7

            // 3 - 5 

            do {
                let b: Range<Float> = 3..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...5
                XCTAssertTrue(a.contains(b))
            }

            // 2 - 5 

            do {
                let b: Range<Float> = 2..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 2...5
                XCTAssertTrue(a.contains(b))
            }

            // 3 - 7 

            do {
                let b: Range<Float> = 3..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...7
                XCTAssertFalse(a.contains(b))
            }

            // 2 - 7 

            do {
                let b: Range<Float> = 2..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 2...7
                XCTAssertFalse(a.contains(b))
            }

            // 1 - 5 

            do {
                let b: Range<Float> = 1..<5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 1...5
                XCTAssertFalse(a.contains(b))
            }

            // 3 - 8 

            do {
                let b: Range<Float> = 3..<8
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...8
                XCTAssertFalse(a.contains(b))
            }

            // 3 - 9 

            do {
                let b: Range<Float> = 3..<9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...9
                XCTAssertFalse(a.contains(b))
            }
        }
    }

    func testClosedRangeContains() {
        do {
            let a: ClosedRange<Int> = 2...7

            // 3 - 5 

            do {
                let b: CountableRange<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...5
                XCTAssertTrue(a.contains(b))
            }

            // 2 - 5 

            do {
                let b: CountableRange<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: Range<Int> = 2..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 2...5
                XCTAssertTrue(a.contains(b))
            }

            // 3 - 7 

            do {
                let b: CountableRange<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...7
                XCTAssertTrue(a.contains(b))
            }

            // 2 - 7 

            do {
                let b: CountableRange<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 2...7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: Range<Int> = 2..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 2...7
                XCTAssertTrue(a.contains(b))
            }

            // 1 - 5 

            do {
                let b: CountableRange<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 1..<5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 1...5
                XCTAssertFalse(a.contains(b))
            }

            // 3 - 8 

            do {
                let b: CountableRange<Int> = 3..<8
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<8
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...8
                XCTAssertFalse(a.contains(b))
            }

            // 3 - 9 

            do {
                let b: CountableRange<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: CountableClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: Range<Int> = 3..<9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Int> = 3...9
                XCTAssertFalse(a.contains(b))
            }
        }

        do {
            let a: ClosedRange<Float> = 2...7

            // 3 - 5 

            do {
                let b: Range<Float> = 3..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...5
                XCTAssertTrue(a.contains(b))
            }

            // 2 - 5 

            do {
                let b: Range<Float> = 2..<5
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 2...5
                XCTAssertTrue(a.contains(b))
            }

            // 3 - 7 

            do {
                let b: Range<Float> = 3..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...7
                XCTAssertTrue(a.contains(b))
            }

            // 2 - 7 

            do {
                let b: Range<Float> = 2..<7
                XCTAssertTrue(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 2...7
                XCTAssertTrue(a.contains(b))
            }

            // 1 - 5 

            do {
                let b: Range<Float> = 1..<5
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 1...5
                XCTAssertFalse(a.contains(b))
            }

            // 3 - 8 

            do {
                let b: Range<Float> = 3..<8
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...8
                XCTAssertFalse(a.contains(b))
            }

            // 3 - 9 

            do {
                let b: Range<Float> = 3..<9
                XCTAssertFalse(a.contains(b))
            }
            do {
                let b: ClosedRange<Float> = 3...9
                XCTAssertFalse(a.contains(b))
            }
        }
    }
}
