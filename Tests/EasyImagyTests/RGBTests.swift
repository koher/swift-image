import XCTest
import EasyImagy

class RGBTests: XCTestCase {
    func testInit() {
        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 3)
            XCTAssertEqual(a.red, 1)
            XCTAssertEqual(a.green, 2)
            XCTAssertEqual(a.blue, 3)
        }
    }
    
    func testInitWithGray() {
        do {
            let a = RGB<UInt8>(gray: 127)
            XCTAssertEqual(a.red, 127)
            XCTAssertEqual(a.green, 127)
            XCTAssertEqual(a.blue, 127)
        }
    }
    
    func testInitWithHex() {
        do {
            let a = RGB(0xFFEEDD)
            XCTAssertEqual(a.red, 255)
            XCTAssertEqual(a.green, 238)
            XCTAssertEqual(a.blue, 221)
        }
    }
    
    func testMap() {
        do {
            let a = RGB<UInt8>(red: 51, green: 102, blue: 153)
            let r = a.map { Double($0) / 255 }
            XCTAssertEqual(r.red, 0.2)
            XCTAssertEqual(r.green, 0.4)
            XCTAssertEqual(r.blue, 0.6)
        }
    }
    
    func testDescription() {
        XCTAssertEqual("#FF0000", RGB<UInt8>(red: 255, green: 0, blue: 0).description)
        XCTAssertEqual("#00FFFF", RGB<UInt8>(red: 0, green: 255, blue: 255).description)
        XCTAssertEqual("#017F80", RGB<UInt8>(red: 1, green: 127, blue: 128).description)
        XCTAssertEqual("#090A0B", RGB<UInt8>(red: 9, green: 10, blue: 11).description)
        XCTAssertEqual("#0E0F10", RGB<UInt8>(red: 14, green: 15, blue: 16).description)
    }
    
    func testEqual() {
        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 255)
            XCTAssertTrue(a == a)
        }
        
        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 255)
            let b = RGB<UInt8>(red: 1, green: 2, blue: 255)
            XCTAssertTrue(a == b)
        }
        
        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 255)
            let b = RGB<UInt8>(red: 0, green: 2, blue: 255)
            XCTAssertFalse(a == b)
        }

        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 255)
            let b = RGB<UInt8>(red: 1, green: 3, blue: 255)
            XCTAssertFalse(a == b)
        }

        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 255)
            let b = RGB<UInt8>(red: 1, green: 2, blue: 254)
            XCTAssertFalse(a == b)
        }

        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 255)
            let b = RGB<UInt8>(red: 0, green: 3, blue: 254)
            XCTAssertFalse(a == b)
        }
        
        struct Foo: Equatable {
            var x: Int
            init(_ x: Int) { self.x = x }
            static func ==(lhs: Foo, rhs: Foo) -> Bool {
                return lhs.x == rhs.x
            }
        }
        
        do {
            let a = RGB<Foo>(red: Foo(1), green: Foo(2), blue: Foo(255))
            XCTAssertTrue(a == a)
        }
        
        do {
            let a = RGB<Foo>(red: Foo(1), green: Foo(2), blue: Foo(255))
            let b = RGB<Foo>(red: Foo(1), green: Foo(2), blue: Foo(255))
            XCTAssertTrue(a == b)
        }
        
        do {
            let a = RGB<Foo>(red: Foo(1), green: Foo(2), blue: Foo(255))
            let b = RGB<Foo>(red: Foo(0), green: Foo(2), blue: Foo(255))
            XCTAssertFalse(a == b)
        }
    }
    
    func testZero() {
        do {
            let a: RGB<UInt8> = .zero
            XCTAssertEqual(a, RGB<UInt8>(red: 0, green: 0, blue: 0))
        }
        
        do {
            let a: RGB<Double> = .zero
            XCTAssertEqual(a, RGB<Double>(red: 0, green: 0, blue: 0))
        }
    }
    
    func testAdd() {
        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            let r = a + b
            XCTAssertEqual(r, RGB<UInt8>(red: 5, green: 7, blue: 9))
        }
    }
    
    func testAddAssign() {
        do {
            var a = RGB<UInt8>(red: 1, green: 2, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            a += b
            XCTAssertEqual(a, RGB<UInt8>(red: 5, green: 7, blue: 9))
        }
    }
    
    func testSubtract() {
        do {
            let a = RGB<UInt8>(red: 255, green: 254, blue: 253)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            let r = a - b
            XCTAssertEqual(r, RGB<UInt8>(red: 251, green: 249, blue: 247))
        }
    }
    
    func testSubtractAssign() {
        do {
            var a = RGB<UInt8>(red: 255, green: 254, blue: 253)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            a -= b
            XCTAssertEqual(a, RGB<UInt8>(red: 251, green: 249, blue: 247))
        }
    }
}
