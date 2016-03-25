import XCTest

private let N = 1000000

class LoopPerformanceTests: XCTestCase {
	func testIndexRead() {
		let numbers = [Int](count: N, repeatedValue: 1)
		
		measureBlock {
			var sum = 0
			for i in 0..<numbers.count {
				sum += numbers[i]
			}
			XCTAssertEqual(N, sum)
		}
	}
	
	func testPointerRead() {
		let numbers = [Int](count: N, repeatedValue: 1)
		
		measureBlock {
			var sum = 0
			var pointer = UnsafeMutablePointer<Int>(numbers)
			for _ in 0..<numbers.count {
				sum += pointer.memory
				pointer += 1
			}
			XCTAssertEqual(N, sum)
		}
	}
	
	func testGeneratorRead() {
		let numbers = [Int](count: N, repeatedValue: 1)
		
		measureBlock {
			var sum = 0
			for number in numbers {
				sum += number
			}
			XCTAssertEqual(N, sum)
		}
	}
	
	func testAnyGeneratorRead() {
		let numbers = ArrayWrapper(numbers: [Int](count: N, repeatedValue: 1))
		
		measureBlock {
			var sum = 0
			for number in numbers {
				sum += number
			}
			XCTAssertEqual(N, sum)
		}
	}
    
    func testIndexingGeneratorRead() {
        let numbers = ArrayWrapper2(numbers: [Int](count: N, repeatedValue: 1))
        
        measureBlock {
            var sum = 0
            for number in numbers {
                sum += number
            }
            XCTAssertEqual(N, sum)
        }
    }
}

private struct ArrayWrapper : SequenceType {
	let numbers: [Int]
	
	func generate() -> AnyGenerator<Int> {
		var index = 0
		let count = numbers.count
		return AnyGenerator {
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

private struct ArrayWrapper2: SequenceType {
    let numbers: [Int]
    
    func generate() -> IndexingGenerator<[Int]> {
        return numbers.generate()
    }
}
