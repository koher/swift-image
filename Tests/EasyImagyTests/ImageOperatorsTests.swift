import XCTest
import EasyImagy

class ImageOperatorsTests: XCTestCase {
    func testAdd() {
        do {
            let a = Image<RGBA<Int>>(width: 2, height: 1, pixels: [
                RGBA(red: 1, green: 2, blue: -3, alpha: -4),
                RGBA(red: -1, green: -2, blue: 3, alpha: 4),
            ])
            let b = Image<RGBA<Int>>(width: 2, height: 1, pixels: [
                RGBA(red: 5, green: -6, blue: 7, alpha: -8),
                RGBA(red: -5, green: 6, blue: -7, alpha: 8),
            ])
            XCTAssertEqual(a + b, Image<RGBA<Int>>(width: 2, height: 1, pixels: [
                RGBA(red: 6, green: -4, blue: 4, alpha: -12),
                RGBA(red: -6, green: 4, blue: -4, alpha: 12),
            ]))
        }
        
        do {
            let a = Image<Int>(width: 3, height: 2, pixels: [
                 1,  2,  3,
                -4, -5, -6,
            ])
            let b = Image<Int>(width: 3, height: 2, pixels: [
                  7, -8,   9,
                -10, 11, -12,
            ])
            XCTAssertEqual(a + b, Image<Int>(width: 3, height: 2, pixels: [
                  8, -6,  12,
                -14,  6, -18
            ]))
        }
    }
    
    func testAnd() {
        let a = Image<Bool>(width: 2, height: 2, pixels: [
            true, true,
            false, false,
        ])
        let b = Image<Bool>(width: 2, height: 2, pixels: [
            true, false,
            true, false,
        ])
        XCTAssertEqual(a && b, Image<Bool>(width: 2, height: 2, pixels: [
            true,  false,
            false, false,
        ]))
    }
    
    func testAddAsign() {
        var a = Image<Int>(width: 3, height: 2, pixels: [
             1,  2,  3,
            -4, -5, -6,
        ])
        let b = Image<Int>(width: 3, height: 2, pixels: [
              7, -8,   9,
            -10, 11, -12,
        ])
        a += b
        XCTAssertEqual(a, Image<Int>(width: 3, height: 2, pixels: [
              8, -6,  12,
            -14,  6, -18
        ]))
    }
    
    func testSubtractAsign() {
        var a = Image<Int>(width: 3, height: 2, pixels: [
             1,  2,  3,
            -4, -5, -6,
        ])
        let b = Image<Int>(width: 3, height: 2, pixels: [
              7, -8,   9,
            -10, 11, -12,
        ])
        a -= b
        XCTAssertEqual(a, Image<Int>(width: 3, height: 2, pixels: [
            -6,  10, -6,
             6, -16,  6,
        ]))
    }
    
    func testNegate() {
        let a = Image<Int>(width: 3, height: 2, pixels: [
             1,  2,  3,
            -4, -5, -6,
        ])
        XCTAssertEqual(-a, Image<Int>(width: 3, height: 2, pixels: [
            -1, -2, -3,
             4,  5,  6,
        ]))
    }
    
    func testNot() {
        let a = Image<Bool>(width: 2, height: 2, pixels: [
            true, true,
            false, false,
        ])
        XCTAssertEqual(!a, Image<Bool>(width: 2, height: 2, pixels: [
            false, false,
            true, true,
        ]))
    }
}

