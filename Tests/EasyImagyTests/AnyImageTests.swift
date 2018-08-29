import XCTest
import EasyImagy

private let image = Image<UInt8>(width: 3, height: 2, pixels: [
    1, 2, 3,
    4, 5, 6,
])
private let slice: ImageSlice<UInt8> = Image<UInt8>(width: 5, height: 4, pixels: [
    0, 0, 0, 0, 0,
    0, 1, 2, 3, 0,
    0, 4, 5, 6, 0,
    0, 0, 0, 0, 0,
])[1...3, 1...2]

class AnyImageTests : XCTestCase {
    func testSlice() {
        XCTAssertEqual(slice, ImageSlice<UInt8>(width: 3, height: 2, pixels: [
            1, 2, 3,
            4, 5, 6,
        ]))
    }
    
    func testXRange() {
        XCTAssertEqual(image.xRange, 0..<3)
        XCTAssertEqual(slice.xRange, 1..<4)
    }
    
    func testYRange() {
        XCTAssertEqual(image.yRange, 0..<2)
        XCTAssertEqual(slice.yRange, 1..<3)
    }
    
    func testSubscript() {
        do {
            var a = AnyImage<UInt8>(image)
            
            XCTAssertEqual(a[0, 0], 1)
            XCTAssertEqual(a[1, 0], 2)
            XCTAssertEqual(a[2, 0], 3)
            XCTAssertEqual(a[0, 1], 4)
            XCTAssertEqual(a[1, 1], 5)
            XCTAssertEqual(a[2, 1], 6)
            
            a[1, 0] = 9
            
            XCTAssertEqual(a[1, 0], 9)
        }
        
        do {
            var a = AnyImage<UInt8>(slice)
            
            XCTAssertEqual(a[1, 1], 1)
            XCTAssertEqual(a[2, 1], 2)
            XCTAssertEqual(a[3, 1], 3)
            XCTAssertEqual(a[1, 2], 4)
            XCTAssertEqual(a[2, 2], 5)
            XCTAssertEqual(a[3, 2], 6)
            
            a[2, 1] = 9
            
            XCTAssertEqual(a[2, 1], 9)
        }
    }
    
    func testSubscriptRange() {
        do {
            let a = AnyImage<UInt8>(Image<UInt8>(width: 5, height: 4, pixels: [
                0, 0, 0, 0, 0,
                0, 1, 2, 3, 0,
                0, 4, 5, 6, 0,
                0, 0, 0, 0, 0,
            ]))
            let b: AnyImage<UInt8> = a[1..<4, 1..<3]
            
            XCTAssertEqual(b, AnyImage(slice))
            
            let c = AnyImage<UInt8>(b)
            
            XCTAssertEqual(c[2..<4, 2...2], AnyImage(width: 2, height: 1, pixels: [5, 6]))
        }
    }
    
    func testSequence() {
        do {
            let a = AnyImage<UInt8>(Image<UInt8>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ]))
            
            var iterator = a.makeIterator()
            
            XCTAssertEqual(iterator.next(), 1)
            XCTAssertEqual(iterator.next(), 2)
            XCTAssertEqual(iterator.next(), 3)
            XCTAssertEqual(iterator.next(), 4)
            XCTAssertEqual(iterator.next(), 5)
            XCTAssertEqual(iterator.next(), 6)
            XCTAssertEqual(iterator.next(), nil)
        }
    }
    
    func testCopyOnWrite() {
        var a = AnyImage<UInt8>(image)
        let b = a
        
        XCTAssertEqual(a[0, 0], 1)
        XCTAssertEqual(b[0, 0], 1)
        
        a[0, 0] = 9
        
        XCTAssertEqual(a[0, 0], 9)
        XCTAssertEqual(b[0, 0], 1)
    }
    
    static var allTests = [
        ("testSlice", testSlice),
        ("testXRange", testXRange),
        ("testYRange", testYRange),
        ("testSubscript", testSubscript),
        ("testSubscriptRange", testSubscriptRange),
        ("testSequence", testSequence),
        ("testCopyOnWrite", testCopyOnWrite),
    ]
}
