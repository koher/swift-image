import XCTest
import EasyImagy

struct Foo {
    var xs: [RGBA]
    
    func map(_ f: (RGBA) -> RGBA) -> Foo {
        return Foo(xs: xs.map(f))
    }
}

struct Bar<T> {
    var xs: [T]
    
    func map<U>(_ f: (T) -> U) -> Bar<U> {
        return Bar<U>(xs: xs.map(f))
    }
}

class GenericsPerformanceTests: XCTestCase {
    func testNonGenericPerformance() {
        let xs = [RGBA](repeating: RGBA(red: 255, green: 0, blue: 0, alpha: 255), count: 1000000)
        
        measure {
            let foo = Foo(xs: xs)
            let mapped = foo.map { RGBA(gray: $0.gray) }
            XCTAssertEqual(mapped.xs[0].red, 85)
        }
    }
    
    func testGenericPerformance() {
        let xs = [RGBA](repeating: RGBA(red: 255, green: 0, blue: 0, alpha: 255), count: 1000000)
        
        measure {
            let bar = Bar<RGBA>(xs: xs)
            let mapped = bar.map { RGBA(gray: $0.gray) }
            XCTAssertEqual(mapped.xs[0].red, 85)
        }
    }
}
