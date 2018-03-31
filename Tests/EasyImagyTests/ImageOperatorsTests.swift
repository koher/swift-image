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
        
        do {
            let image = Image<Int>(width: 5, height: 4, pixels: [
                99, 99, 99, 99, 99,
                99,  1,  2,  3, 99,
                99, -4, -5, -6, 99,
                99, 99, 99, 99, 99,
            ])
            let a: ImageSlice<Int> = image[1...3, 1...2]
            let b = Image<Int>(width: 3, height: 2, pixels: [
                  7, -8,   9,
                -10, 11, -12,
            ])
            XCTAssertEqual(a + b, Image<Int>(width: 3, height: 2, pixels: [
                  8, -6,  12,
                -14,  6, -18
            ]))
            XCTAssertEqual(b + a, Image<Int>(width: 3, height: 2, pixels: [
                  8, -6,  12,
                -14,  6, -18
            ]))
            XCTAssertEqual(a + a, Image<Int>(width: 3, height: 2, pixels: [
                 2,   4,   6,
                -8, -10, -12,
            ]))
        }
    }
    
    func testAnd() {
        do {
            let a = Image<Bool>(width: 2, height: 2, pixels: [
                true,  true,
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
        
        do {
            let image = Image<Bool>(width: 4, height: 4, pixels: [
                false, false, false, false,
                false, true,  true,  false,
                false, false, false, false,
                false, false, false, false,
            ])
            let a: ImageSlice<Bool> = image[1...2, 1...2]
            let b = Image<Bool>(width: 2, height: 2, pixels: [
                true, false,
                true, false,
            ])
            XCTAssertEqual(a && b, Image<Bool>(width: 2, height: 2, pixels: [
                true,  false,
                false, false,
            ]))
            XCTAssertEqual(b && a, Image<Bool>(width: 2, height: 2, pixels: [
                true,  false,
                false, false,
            ]))
            XCTAssertEqual(a && a, Image<Bool>(width: 2, height: 2, pixels: [
                true,  true,
                false, false,
            ]))
        }
    }
    
    func testAddAsign() {
        do {
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

        do {
            let image = Image<Int>(width: 5, height: 4, pixels: [
                99, 99, 99, 99, 99,
                99,  1,  2,  3, 99,
                99, -4, -5, -6, 99,
                99, 99, 99, 99, 99,
            ])
            do {
                var a: ImageSlice<Int> = image[1...3, 1...2]
                let b = Image<Int>(width: 3, height: 2, pixels: [
                      7, -8,   9,
                    -10, 11, -12,
                ])
                a += b
                XCTAssertEqual(a, ImageSlice<Int>(width: 3, height: 2, pixels: [
                      8, -6,  12,
                    -14,  6, -18
                ]))
            }
            do {
                let a: ImageSlice<Int> = image[1...3, 1...2]
                var b = Image<Int>(width: 3, height: 2, pixels: [
                      7, -8,   9,
                    -10, 11, -12,
                ])
                b += a
                XCTAssertEqual(b, Image<Int>(width: 3, height: 2, pixels: [
                      8, -6,  12,
                    -14,  6, -18
                ]))
            }
            do {
                var a: ImageSlice<Int> = image[1...3, 1...2]
                a += a
                XCTAssertEqual(a, ImageSlice<Int>(width: 3, height: 2, pixels: [
                     2,   4,   6,
                    -8, -10, -12,
                ]))
            }
        }
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
    
    func testIsEqual() {
        do {
            let a = Image<Int>(width: 1, height: 2, pixels: [3, 4])
            let b = Image<Int>(width: 1, height: 2, pixels: [3, 4])
            XCTAssertEqual(a == b, true)
        }
        
        do {
            let a = Image<Int>(width: 1, height: 2, pixels: [3, 4])
            let b = Image<Int>(width: 1, height: 2, pixels: [3, 9])
            XCTAssertEqual(a == b, false)
        }
        
        do {
            let a = Image<Int>(width: 1, height: 2, pixels: [3, 4])
            let b = Image<Int>(width: 2, height: 1, pixels: [3, 4])
            XCTAssertEqual(a == b, false)
        }
        
        do {
            let image = Image<Int>(width: 3, height: 4, pixels: [
                0, 0, 0,
                0, 3, 0,
                0, 4, 0,
                0, 0, 0,
            ])
            let a: ImageSlice<Int> = image[1...1, 1...2]
            do {
                let b = Image<Int>(width: 1, height: 2, pixels: [3, 4])
                XCTAssertEqual(a == b, true)
                XCTAssertEqual(b == a, true)
                XCTAssertEqual(a == a, true)
            }
            do {
                let b = Image<Int>(width: 1, height: 2, pixels: [3, 9])
                XCTAssertEqual(a == b, false)
                XCTAssertEqual(b == a, false)
            }
            do {
                let b = Image<Int>(width: 2, height: 1, pixels: [3, 4])
                XCTAssertEqual(a == b, false)
                XCTAssertEqual(b == a, false)
            }
        }
    }
    
    func testIsNotEqual() {
        do {
            let a = Image<Int>(width: 1, height: 2, pixels: [3, 4])
            let b = Image<Int>(width: 1, height: 2, pixels: [3, 4])
            XCTAssertEqual(a != b, false)
        }
        
        do {
            let a = Image<Int>(width: 1, height: 2, pixels: [3, 4])
            let b = Image<Int>(width: 1, height: 2, pixels: [3, 9])
            XCTAssertEqual(a != b, true)
        }
        
        do {
            let a = Image<Int>(width: 2, height: 1, pixels: [3, 4])
            let b = Image<Int>(width: 1, height: 2, pixels: [3, 4])
            XCTAssertEqual(a != b, true)
        }
    }

    func testNegate() {
        do {
            let a = Image<Int>(width: 3, height: 2, pixels: [
                 1,  2,  3,
                -4, -5, -6,
            ])
            XCTAssertEqual(-a, Image<Int>(width: 3, height: 2, pixels: [
                -1, -2, -3,
                 4,  5,  6,
            ]))
        }
        
        do {
            let image = Image<Int>(width: 5, height: 4, pixels: [
                99, 99, 99, 99, 99,
                99,  1,  2,  3, 99,
                99, -4, -5, -6, 99,
                99, 99, 99, 99, 99,
            ])
            let a: ImageSlice<Int> = image[1...3, 1...2]
            XCTAssertEqual(-a, Image<Int>(width: 3, height: 2, pixels: [
                -1, -2, -3,
                 4,  5,  6,
            ]))
        }
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
    
    static var allTests = [
        ("testAdd", testAdd),
        ("testAnd", testAnd),
        ("testAddAsign", testAddAsign),
        ("testSubtractAsign", testSubtractAsign),
        ("testIsEqual", testIsEqual),
        ("testIsNotEqual", testIsNotEqual),
        ("testNegate", testNegate),
        ("testNot", testNot),
    ]
}

