import XCTest

private let N = 1000000

class LoopPerformanceTests: XCTestCase {
	func testIndexRead() {
		let numbers = [Int](repeating: 1, count: N)
		
		measure {
			var sum = 0
			for i in 0..<numbers.count {
				sum += numbers[i]
			}
			XCTAssertEqual(N, sum)
		}
	}
	
	func testPointerRead() {
		let numbers = [Int](repeating: 1, count: N)
		
		measure {
			var sum = 0
			var pointer = UnsafeMutablePointer<Int>(mutating: numbers)
			for _ in 0..<numbers.count {
				sum += pointer.pointee
				pointer += 1
			}
			XCTAssertEqual(N, sum)
		}
	}
	
	func testGeneratorRead() {
		let numbers = [Int](repeating: 1, count: N)
		
		measure {
			var sum = 0
			for number in numbers {
				sum += number
			}
			XCTAssertEqual(N, sum)
		}
	}
	
	func testAnyGeneratorRead() {
		let numbers = ArrayWrapper(numbers: [Int](repeating: 1, count: N))
		
		measure {
			var sum = 0
			for number in numbers {
				sum += number
			}
			XCTAssertEqual(N, sum)
		}
	}
    
    func testIndexingGeneratorRead() {
        let numbers = ArrayWrapper2(numbers: [Int](repeating: 1, count: N))
        
        measure {
            var sum = 0
            for number in numbers {
                sum += number
            }
            XCTAssertEqual(N, sum)
        }
    }
}

private struct ArrayWrapper : Sequence {
	let numbers: [Int]
	
	func makeIterator() -> AnyIterator<Int> {
		var index = 0
		let count = numbers.count
		return AnyIterator {
			if index >= count {
				return nil
			}
            defer {
                index += 1
            }
			return self.numbers[index]
		}
	}
}

private struct ArrayWrapper2: Sequence {
    let numbers: [Int]
    
    func makeIterator() -> IndexingIterator<[Int]> {
        return numbers.makeIterator()
    }
}
