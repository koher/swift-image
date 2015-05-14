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
		var numbers = [Int](count: N, repeatedValue: 1)
		
		measureBlock {
			var sum = 0
			var pointer = UnsafeMutablePointer<Int>(numbers)
			for i in 0..<numbers.count {
				sum += pointer.memory
				pointer++
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
	
	func testGeneratorOfRead() {
		let numbers = ArrayWrapper(numbers: [Int](count: N, repeatedValue: 1))
		
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
	
	func generate() -> GeneratorOf<Int> {
		var index = 0
		let count = numbers.count
		return GeneratorOf {
			if index >= count {
				return nil
			}
			return self.numbers[index++]
		}
	}
}
