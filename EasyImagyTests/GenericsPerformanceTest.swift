import XCTest
import EasyImagy

struct Foo {
    var xs: [Pixel]
    
    func map(f: Pixel -> Pixel) -> Foo {
        return Foo(xs: xs.map(f))
    }
}

struct Bar<T> {
    var xs: [T]
    
    func map<U>(f: T -> U) -> Bar<U> {
        return Bar<U>(xs: xs.map(f))
    }
}

class PerformanceTests: XCTestCase {
    func testNonGenericPerformance() {
        let xs = [Pixel](count: 10000000, repeatedValue: Pixel(red: 255, green: 0, blue: 0, alpha: 255))
        
        measureBlock {
            let foo = Foo(xs: xs)
            let mapped = foo.map { Pixel(gray: $0.gray) }
            XCTAssertEqual(mapped.xs[0].red, 85)
        }
    }
    
    func testGenericPerformance() {
        let xs = [Pixel](count: 10000000, repeatedValue: Pixel(red: 255, green: 0, blue: 0, alpha: 255))
        
        measureBlock {
            let bar = Bar<Pixel>(xs: xs)
            let mapped = bar.map { Pixel(gray: $0.gray) }
            XCTAssertEqual(mapped.xs[0].red, 85)
        }
    }
}
