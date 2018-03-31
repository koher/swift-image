import XCTest
import EasyImagy

class RGBAOperatorsTests: XCTestCase {
    func testAdd() {
        let a = RGBA<Int>(red: 1, green: 2, blue: -3, alpha: -4)
        let b = RGBA<Int>(red: 5, green: -6, blue: 7, alpha: -8)
        XCTAssertEqual(a + b, RGBA(red: 6, green: -4, blue: 4, alpha: -12))
    }
    
    func testAnd() {
        let a = RGBA<Bool>(red: true, green: false, blue: false, alpha: true)
        let b = RGBA<Bool>(red: true, green: true, blue: false, alpha: false)
        XCTAssertEqual(a && b, RGBA(red: true, green: false, blue: false, alpha: false))
    }

    func testAddAsign() {
        var a = RGBA<Int>(red: 1, green: 2, blue: -3, alpha: -4)
        let b = RGBA<Int>(red: 5, green: -6, blue: 7, alpha: -8)
        a += b
        XCTAssertEqual(a, RGBA(red: 6, green: -4, blue: 4, alpha: -12))
    }
    
    func testSubtractAsign() {
        var a = RGBA<Int>(red: 1, green: 2, blue: -3, alpha: -4)
        let b = RGBA<Int>(red: 5, green: -6, blue: 7, alpha: -8)
        a -= b
        XCTAssertEqual(a, RGBA(red: -4, green: 8, blue: -10, alpha: 4))
    }
    
    func testNegate() {
        let a = RGBA<Int>(red: 1, green: 2, blue: -3, alpha: -4)
        XCTAssertEqual(-a, RGBA(red: -1, green: -2, blue: 3, alpha: 4))
    }
    
    func testNot() {
        let a = RGBA<Bool>(red: true, green: false, blue: false, alpha: true)
        XCTAssertEqual(!a, RGBA(red: false, green: true, blue: true, alpha: false))
    }
    
    static var allTests = [
        ("testAdd", testAdd),
        ("testAnd", testAnd),
        ("testAddAsign", testAddAsign),
        ("testSubtractAsign", testSubtractAsign),
        ("testNegate", testNegate),
        ("testNot", testNot),
    ]
}
