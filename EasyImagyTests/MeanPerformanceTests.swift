import XCTest

class MeanPerformanceTests: XCTestCase {
    fileprivate let N = arc4random() % 1000000 + 9000000
    
    func testTupleArray() {
        let weightsAndValues = (1...N).map { (Float($0 % 7), Float($0 % 97)) }
        
        measure {
            var sum: (Float, Float) = (0, 0)
            for (weight, value) in weightsAndValues {
                sum = (sum.0 + weight, sum.1 + weight * value)
            }
            let mean = sum.1 / sum.0
            XCTAssertEqualWithAccuracy(48.0, mean, accuracy: 2.0)
        }
    }

    func testZippedArrays() {
        let weights = (1...N).map { Float($0 % 7)}
        let values = (1...N).map { Float($0 % 97) }
        
        measure {
            var sum: (Float, Float) = (0, 0)
            for (weight, value) in zip(weights, values) {
                sum = (sum.0 + weight, sum.1 + weight * value)
            }
            let mean = sum.1 / sum.0
            XCTAssertEqualWithAccuracy(48.0, mean, accuracy: 2.0)
        }
    }
    
    func testArrays() {
        let weights = (1...N).map { Float($0 % 7)}
        let values = (1...N).map { Float($0 % 97) }
        
        measure {
            var weightSum: Float = 0.0
            var sum: Float = 0.0
            var wg = weights.makeIterator()
            var g = values.makeIterator()
            while let x = g.next(), let w = wg.next() {
                weightSum += w
                sum += w * x
            }
            let mean = sum / weightSum
            XCTAssertEqualWithAccuracy(48.0, mean, accuracy: 2.0)
        }
    }
}
