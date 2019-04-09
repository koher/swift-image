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
    
    func testAddition() {
        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            let r = a + b
            XCTAssertEqual(r, RGB<UInt8>(red: 5, green: 7, blue: 9))
        }
    }
    
    func testAdditionAssignment() {
        do {
            var a = RGB<UInt8>(red: 1, green: 2, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            a += b
            XCTAssertEqual(a, RGB<UInt8>(red: 5, green: 7, blue: 9))
        }
    }
    
    func testSubtraction() {
        do {
            let a = RGB<UInt8>(red: 255, green: 254, blue: 253)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            let r = a - b
            XCTAssertEqual(r, RGB<UInt8>(red: 251, green: 249, blue: 247))
        }
    }
    
    func testSubtractionAssignment() {
        do {
            var a = RGB<UInt8>(red: 255, green: 254, blue: 253)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            a -= b
            XCTAssertEqual(a, RGB<UInt8>(red: 251, green: 249, blue: 247))
        }
    }
    
    func testMultiplication() {
        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            let r = a * b
            XCTAssertEqual(r, RGB<UInt8>(red: 4, green: 10, blue: 18))
        }
        
        do {
            let a = RGB<Double>(red: 1, green: 2, blue: 3)
            let b = RGB<Double>(red: 4, green: 5, blue: 6)
            let r = a * b
            XCTAssertEqual(r, RGB<Double>(red: 4, green: 10, blue: 18))
        }
    }
    
    func testMultiplicationAssignment() {
        do {
            var a = RGB<UInt8>(red: 1, green: 2, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            a *= b
            XCTAssertEqual(a, RGB<UInt8>(red: 4, green: 10, blue: 18))
        }
        
        do {
            var a = RGB<Double>(red: 1, green: 2, blue: 3)
            let b = RGB<Double>(red: 4, green: 5, blue: 6)
            a *= b
            XCTAssertEqual(a, RGB<Double>(red: 4, green: 10, blue: 18))
        }
    }
    
    func testMinus() {
        do {
            let a = RGB<Int>(red: 1, green: -2, blue: 3)
            XCTAssertEqual(-a, RGB<Int>(red: -1, green: 2, blue: -3))
        }
        
        do {
            let a = RGB<Double>(red: 1, green: -2, blue: 3)
            XCTAssertEqual(-a, RGB<Double>(red: -1, green: 2, blue: -3))
        }
    }
    
    func testDivision() {
        do {
            let a = RGB<UInt8>(red: 8, green: 27, blue: 125)
            let b = RGB<UInt8>(red: 4, green: 9, blue: 25)
            let r = a / b
            XCTAssertEqual(r, RGB<UInt8>(red: 2, green: 3, blue: 5))
        }
        
        do {
            let a = RGB<Double>(red: 8, green: 27, blue: 125)
            let b = RGB<Double>(red: 4, green: 9, blue: 25)
            let r = a / b
            XCTAssertEqual(r, RGB<Double>(red: 2, green: 3, blue: 5))
        }
    }
    
    func testDivisionAssignment() {
        do {
            var a = RGB<UInt8>(red: 8, green: 27, blue: 125)
            let b = RGB<UInt8>(red: 4, green: 9, blue: 25)
            a /= b
            XCTAssertEqual(a, RGB<UInt8>(red: 2, green: 3, blue: 5))
        }
        
        do {
            var a = RGB<Double>(red: 8, green: 27, blue: 125)
            let b = RGB<Double>(red: 4, green: 9, blue: 25)
            a /= b
            XCTAssertEqual(a, RGB<Double>(red: 2, green: 3, blue: 5))
        }
    }

    func testRemainder() {
        do {
            let a = RGB<UInt8>(red: 5, green: 8, blue: 13)
            let b = RGB<UInt8>(red: 2, green: 3, blue: 5)
            let r = a % b
            XCTAssertEqual(r, RGB<UInt8>(red: 1, green: 2, blue: 3))
        }
    }
    
    func testRemainderAssignment() {
        do {
            var a = RGB<UInt8>(red: 5, green: 8, blue: 13)
            let b = RGB<UInt8>(red: 2, green: 3, blue: 5)
            a %= b
            XCTAssertEqual(a, RGB<UInt8>(red: 1, green: 2, blue: 3))
        }
    }

    func testBitwiseAnd() {
        do {
            let a = RGB<UInt8>(red: 0b0011, green: 0b1100, blue: 0b0101)
            let b = RGB<UInt8>(red: 0b0101, green: 0b1010, blue: 0b1100)
            let r = a & b
            XCTAssertEqual(r, RGB<UInt8>(red: 0b0001, green: 0b1000, blue: 0b0100))
        }
    }
    
    func testBitwiseAndAssignment() {
        do {
            var a = RGB<UInt8>(red: 0b0011, green: 0b1100, blue: 0b0101)
            let b = RGB<UInt8>(red: 0b0101, green: 0b1010, blue: 0b1100)
            a &= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0b0001, green: 0b1000, blue: 0b0100))
        }
    }

    func testBitwiseOr() {
        do {
            let a = RGB<UInt8>(red: 0b0011, green: 0b1100, blue: 0b0101)
            let b = RGB<UInt8>(red: 0b0101, green: 0b1010, blue: 0b1100)
            let r = a | b
            XCTAssertEqual(r, RGB<UInt8>(red: 0b0111, green: 0b1110, blue: 0b1101))
        }
    }
    
    func testBitwiseOrAssignment() {
        do {
            var a = RGB<UInt8>(red: 0b0011, green: 0b1100, blue: 0b0101)
            let b = RGB<UInt8>(red: 0b0101, green: 0b1010, blue: 0b1100)
            a |= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0b0111, green: 0b1110, blue: 0b1101))
        }
    }

    func testBitwiseXor() {
        do {
            let a = RGB<UInt8>(red: 0b0011, green: 0b1100, blue: 0b0101)
            let b = RGB<UInt8>(red: 0b0101, green: 0b1010, blue: 0b1100)
            let r = a ^ b
            XCTAssertEqual(r, RGB<UInt8>(red: 0b0110, green: 0b0110, blue: 0b1001))
        }
    }
    
    func testBitwiseXorAssignment() {
        do {
            var a = RGB<UInt8>(red: 0b0011, green: 0b1100, blue: 0b0101)
            let b = RGB<UInt8>(red: 0b0101, green: 0b1010, blue: 0b1100)
            a ^= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0b0110, green: 0b0110, blue: 0b1001))
        }
    }
    
    func testBitwiseNot() {
        do {
            let a = RGB<UInt8>(red: 0b00001111, green: 0b11110000, blue: 0b01010101)
            XCTAssertEqual(~a, RGB<UInt8>(red: 0b11110000, green: 0b00001111, blue: 0b10101010))
        }
    }

    func testLeftShift() {
        do {
            let a = RGB<UInt8>(red: 0b0001, green: 0b0010, blue: 0b0101)
            let b = RGB<Int>(red: 2, green: -1, blue: 1)
            let r = a << b
            XCTAssertEqual(r, RGB<UInt8>(red: 0b0100, green: 0b0001, blue: 0b1010))
        }
    }
    
    func testLeftShiftAssignment() {
        do {
            var a = RGB<UInt8>(red: 0b0001, green: 0b0010, blue: 0b0101)
            let b = RGB<Int>(red: 2, green: -1, blue: 1)
            a <<= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0b0100, green: 0b0001, blue: 0b1010))
        }
    }
    
    func testRightShift() {
        do {
            let a = RGB<UInt8>(red: 0b1000, green: 0b0100, blue: 0b1010)
            let b = RGB<Int>(red: 2, green: -1, blue: 1)
            let r = a >> b
            XCTAssertEqual(r, RGB<UInt8>(red: 0b0010, green: 0b1000, blue: 0b0101))
        }
    }
    
    func testRightShiftAssignment() {
        do {
            var a = RGB<UInt8>(red: 0b1000, green: 0b0100, blue: 0b1010)
            let b = RGB<Int>(red: 2, green: -1, blue: 1)
            a >>= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0b0010, green: 0b1000, blue: 0b0101))
        }
    }
    
    func testOverflowAddition() {
        do {
            let a = RGB<UInt8>(red: 253, green: 254, blue: 255)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            let r = a &+ b
            XCTAssertEqual(r, RGB<UInt8>(red: 1, green: 3, blue: 5))
        }
    }
    
    func testOverflowAdditionAssignment() {
        do {
            var a = RGB<UInt8>(red: 253, green: 254, blue: 255)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            a &+= b
            XCTAssertEqual(a, RGB<UInt8>(red: 1, green: 3, blue: 5))
        }
    }
    
    func testOverflowSubtraction() {
        do {
            let a = RGB<UInt8>(red: 1, green: 3, blue: 5)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            let r = a &- b
            XCTAssertEqual(r, RGB<UInt8>(red: 253, green: 254, blue: 255))
        }
    }
    
    func testOverflowSubtractionAssignment() {
        do {
            var a = RGB<UInt8>(red: 1, green: 3, blue: 5)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            a &-= b
            XCTAssertEqual(a, RGB<UInt8>(red: 253, green: 254, blue: 255))
        }
    }
    
    func testOverflowMultiplication() {
        do {
            let a = RGB<UInt8>(red: 128, green: 129, blue: 130)
            let b = RGB<UInt8>(red: 2, green: 3, blue: 4)
            let r = a &* b
            XCTAssertEqual(r, RGB<UInt8>(red: 0, green: 131, blue: 8))
        }
    }
    
    func testOverflowMultiplicationAssignment() {
        do {
            var a = RGB<UInt8>(red: 128, green: 129, blue: 130)
            let b = RGB<UInt8>(red: 2, green: 3, blue: 4)
            a &*= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0, green: 131, blue: 8))
        }
    }
    
    func testOverflowLeftShift() {
        do {
            let a = RGB<UInt8>(red: 0b0001, green: 0b0011, blue: 0b0101)
            let b = RGB<UInt8>(red: 11, green: 18, blue: 25)
            let r = a &<< b
            XCTAssertEqual(r, RGB<UInt8>(red: 0b1000, green: 0b1100, blue: 0b1010))
        }
    }
    
    func testOverflowLeftShiftAssignment() {
        do {
            var a = RGB<UInt8>(red: 0b0001, green: 0b0011, blue: 0b0101)
            let b = RGB<UInt8>(red: 11, green: 18, blue: 25)
            a &<<= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0b1000, green: 0b1100, blue: 0b1010))
        }
    }
    
    func testOverflowRightShift() {
        do {
            let a = RGB<UInt8>(red: 0b1000, green: 0b1100, blue: 0b1010)
            let b = RGB<UInt8>(red: 11, green: 18, blue: 25)
            let r = a &>> b
            XCTAssertEqual(r, RGB<UInt8>(red: 0b0001, green: 0b0011, blue: 0b0101))
        }
    }
    
    func testOverflowRightShiftAssignment() {
        do {
            var a = RGB<UInt8>(red: 0b1000, green: 0b1100, blue: 0b1010)
            let b = RGB<UInt8>(red: 11, green: 18, blue: 25)
            a &>>= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0b0001, green: 0b0011, blue: 0b0101))
        }
    }
    
    func testLessThan() {
        do {
            let a = RGB<UInt8>(red: 1, green: 5, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 2, blue: 3)
            let r = a < b
            XCTAssertEqual(r, RGB<Bool>(red: true, green: false, blue: false))
        }
    }
    
    func testLessThanOrEqualTo() {
        do {
            let a = RGB<UInt8>(red: 1, green: 5, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 2, blue: 3)
            let r = a <= b
            XCTAssertEqual(r, RGB<Bool>(red: true, green: false, blue: true))
        }
    }
    
    func testGreaterThan() {
        do {
            let a = RGB<UInt8>(red: 1, green: 5, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 2, blue: 3)
            let r = a > b
            XCTAssertEqual(r, RGB<Bool>(red: false, green: true, blue: false))
        }
    }
    
    func testGreaterThanOrEqualTo() {
        do {
            let a = RGB<UInt8>(red: 1, green: 5, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 2, blue: 3)
            let r = a >= b
            XCTAssertEqual(r, RGB<Bool>(red: false, green: true, blue: true))
        }
    }
    
    func testAnd() {
        do {
            let a = RGB<Bool>(red: false, green: false, blue: true)
            let b = RGB<Bool>(red: false, green: true, blue: false)
            let r = a && b
            XCTAssertEqual(r, RGB<Bool>(red: false, green: false, blue: false))
        }
        
        do {
            let a = RGB<Bool>(red: false, green: true, blue: true)
            let b = RGB<Bool>(red: true, green: false, blue: true)
            let r = a && b
            XCTAssertEqual(r, RGB<Bool>(red: false, green: false, blue: true))
        }
        
        do {
            let a = RGB<Bool>(red: true, green: true, blue: false)
            let b = RGB<Bool>(red: false, green: true, blue: false)
            let r = a && b
            XCTAssertEqual(r, RGB<Bool>(red: false, green: true, blue: false))
        }
        
        do {
            let a = RGB<Bool>(red: true, green: false, blue: false)
            let b = RGB<Bool>(red: true, green: false, blue: true)
            let r = a && b
            XCTAssertEqual(r, RGB<Bool>(red: true, green: false, blue: false))
        }
    }
    
    func testOr() {
        do {
            let a = RGB<Bool>(red: false, green: false, blue: true)
            let b = RGB<Bool>(red: false, green: true, blue: false)
            let r = a || b
            XCTAssertEqual(r, RGB<Bool>(red: false, green: true, blue: true))
        }
        
        do {
            let a = RGB<Bool>(red: false, green: true, blue: true)
            let b = RGB<Bool>(red: true, green: false, blue: true)
            let r = a || b
            XCTAssertEqual(r, RGB<Bool>(red: true, green: true, blue: true))
        }
        
        do {
            let a = RGB<Bool>(red: true, green: true, blue: false)
            let b = RGB<Bool>(red: false, green: true, blue: false)
            let r = a || b
            XCTAssertEqual(r, RGB<Bool>(red: true, green: true, blue: false))
        }
        
        do {
            let a = RGB<Bool>(red: true, green: false, blue: false)
            let b = RGB<Bool>(red: true, green: false, blue: true)
            let r = a || b
            XCTAssertEqual(r, RGB<Bool>(red: true, green: false, blue: true))
        }
    }
    
    func testNot() {
        do {
            let a = RGB<Bool>(red: false, green: true, blue: false)
            XCTAssertEqual(!a, RGB<Bool>(red: true, green: false, blue: true))
        }
        
        do {
            let a = RGB<Bool>(red: true, green: false, blue: true)
            XCTAssertEqual(!a, RGB<Bool>(red: false, green: true, blue: false))
        }
    }
}
