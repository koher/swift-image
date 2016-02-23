import XCTest
@testable import EasyImagy

private func loopGenerator<G: GeneratorType where G.Element == (Int, Int)>(generator: G) -> Int? {
    var g = generator
    var result: Int? = nil
    while let (x, y) = g.next() {
        result = x + y
    }
    return result
}

private func loopGeneratorFixed(generator: AnyGenerator<(Int, Int)>) -> Int? {
    let g = generator
    var result: Int? = nil
    while let (x, y) = g.next() {
        result = x + y
    }
    return result
}

class Generate2dPerformanceTests: XCTestCase {
    func testGenerate2d() {
        measureBlock {
            XCTAssertEqual(loopGenerator(generate2d(0..<1024, 0..<1024)), 2046)
        }
    }
    
    func testGenerate2d1() {
        measureBlock {
            XCTAssertEqual(loopGenerator(generate2d1(0..<1024, 0..<1024)), 2046)
        }
    }
    
    func testGenerate2d1Fixed() {
        measureBlock {
            XCTAssertEqual(loopGenerator(generate2d1Fixed(0..<1024, 0..<1024)), 2046)
        }
    }
    
    func testGenerate2d1FixedWithFixedLooper() {
        measureBlock {
            XCTAssertEqual(loopGeneratorFixed(generate2d1Fixed(0..<1024, 0..<1024)), 2046)
        }
    }
    
    func testGenerate2d2Fixed() {
        measureBlock {
            XCTAssertEqual(loopGenerator(generate2d2Fixed(0..<1024, 0..<1024)), 2046)
        }
    }
}

private func generate2d1<SX: SequenceType, SY: SequenceType where SX.Generator.Element == SY.Generator.Element>(xs: SX, _ ys: SY) -> AnyGenerator<(SX.Generator.Element, SY.Generator.Element)> {
    var yGenerator = ys.generate()
    var xGenerator = xs.generate()
    var y = yGenerator.next()
    return anyGenerator {
        while true {
            if let y = y {
                if let x = xGenerator.next() {
                    return (x, y)
                }
            } else {
                return nil
            }
            
            y = yGenerator.next()
            xGenerator = xs.generate()
        }
    }
}

private func generate2d1Fixed(xs: Range<Int>, _ ys: Range<Int>) -> AnyGenerator<(Int, Int)> {
    var yGenerator = ys.generate()
    var xGenerator = xs.generate()
    var y = yGenerator.next()
    return anyGenerator {
        while true {
            if let y = y {
                if let x = xGenerator.next() {
                    return (x, y)
                }
            } else {
                return nil
            }
            
            y = yGenerator.next()
            xGenerator = xs.generate()
        }
    }
}

private func generate2d2Fixed(xs: Range<Int>, _ ys: Range<Int>) -> Generator2d {
    return Generator2d(xRange: xs, yRange: ys)
}

private struct Generator2d: GeneratorType {
    typealias Element = (Int, Int)
    
    private let xRange: Range<Int>
    private let yRange: Range<Int>

    private var x: Int
    private var y: Int
    
    init(xRange: Range<Int>, yRange: Range<Int>) {
        self.xRange = xRange
        self.yRange = yRange
        
        self.x = xRange.startIndex
        self.y = yRange.startIndex
    }

    mutating func next() -> (Int, Int)? {
        if x == xRange.endIndex {
            x = xRange.startIndex
            y += 1
        }

        guard y < yRange.endIndex else { return nil }
        defer { x += 1 }
        
        return (x, y)
    }
}