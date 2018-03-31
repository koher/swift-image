import XCTest
import EasyImagy

private let image = Image<UInt8>(width: 3, height: 2, pixels: [
    1, 2, 3,
    4, 5, 6,
])
private let slice = Image<UInt8>(width: 5, height: 4, pixels: [
    0, 0, 0, 0, 0,
    1, 2, 3, 4, 5,
    6, 7, 8, 9, 0,
    0, 0, 0, 0, 0,
])[1...3, 1...2]

class ImageProtocolTests : XCTestCase {
    func testSlice() {
        XCTAssertEqual(slice, ImageSlice<UInt8>(width: 3, height: 2, pixels: [
            2, 3, 4,
            7, 8, 9,
        ]))
    }
    
    func testInitWithPixelAt() {
        do {
            let image = Image<Int>(width: 3, height: 2) { (x: Int, y: Int) -> Int in
                (y + 1) * 10 + (x + 1)
            }
            XCTAssertEqual(image, Image<Int>(width: 3, height: 2, pixels: [
                11, 12, 13,
                21, 22, 23,
            ]))
        }
    }
    
    func testTransposed() {
        do {
            XCTAssertEqual(image.transposed(), Image<UInt8>(width: 2, height: 3, pixels: [
                1, 4,
                2, 5,
                3, 6,
            ]))
        }
        
        do {
            XCTAssertEqual(slice.transposed(), Image<UInt8>(width: 2, height: 3, pixels: [
                2, 7,
                3, 8,
                4, 9,
            ]))
        }
    }
    
    func testXReversed() {
        do {
            XCTAssertEqual(image.xReversed(), Image<UInt8>(width: 3, height: 2, pixels: [
                3, 2, 1,
                6, 5, 4,
            ]))
        }
        
        do {
            XCTAssertEqual(slice.xReversed(), Image<UInt8>(width: 3, height: 2, pixels: [
                4, 3, 2,
                9, 8, 7,
            ]))
        }
    }
    
    func testYReversed() {
        do {
            XCTAssertEqual(image.yReversed(), Image<UInt8>(width: 3, height: 2, pixels: [
                4, 5, 6,
                1, 2, 3,
            ]))
        }
        
        do {
            XCTAssertEqual(slice.yReversed(), Image<UInt8>(width: 3, height: 2, pixels: [
                7, 8, 9,
                2, 3, 4,
            ]))
        }
    }
    
    func testRotated() {
        do {
            XCTAssertEqual(image.rotated(byDegrees: 90), Image(width: 2, height: 3, pixels: [
                4, 1,
                5, 2,
                6, 3,
            ]))

            for times in [-8, -4, 0, 4, 8] {
                XCTAssertEqual(image.rotated(byDegrees: 90 * times), Image(width: 3, height: 2, pixels: [
                    1, 2, 3,
                    4, 5, 6,
                ]))
            }
            
            for times in [-7, -3, 1, 5] {
                XCTAssertEqual(image.rotated(byDegrees: 90 * times), Image(width: 2, height: 3, pixels: [
                    4, 1,
                    5, 2,
                    6, 3,
                ]))
            }
            
            for times in [-6, -2, 2, 6] {
                XCTAssertEqual(image.rotated(byDegrees: 90 * times), Image(width: 3, height: 2, pixels: [
                    6, 5, 4,
                    3, 2, 1,
                ]))
            }
            
            for times in [-5, -1, 3, 7] {
                XCTAssertEqual(image.rotated(byDegrees: 90 * times), Image(width: 2, height: 3, pixels: [
                    3, 6,
                    2, 5,
                    1, 4,
                ]))
            }
        }

        do {
            XCTAssertEqual(slice.rotated(byDegrees: 90), Image(width: 2, height: 3, pixels: [
                7, 2,
                8, 3,
                9, 4,
            ]))

            for times in [-8, -4, 0, 4, 8] {
                XCTAssertEqual(slice.rotated(byDegrees: 90 * times), Image(width: 3, height: 2, pixels: [
                    2, 3, 4,
                    7, 8, 9,
                ]))
            }
            
            for times in [-7, -3, 1, 5] {
                XCTAssertEqual(slice.rotated(byDegrees: 90 * times), Image(width: 2, height: 3, pixels: [
                    7, 2,
                    8, 3,
                    9, 4,
                ]))
            }
            
            for times in [-6, -2, 2, 6] {
                XCTAssertEqual(slice.rotated(byDegrees: 90 * times), Image(width: 3, height: 2, pixels: [
                    9, 8, 7,
                    4, 3, 2,
                ]))
            }
            
            for times in [-5, -1, 3, 7] {
                XCTAssertEqual(slice.rotated(byDegrees: 90 * times), Image(width: 2, height: 3, pixels: [
                    4, 9,
                    3, 8,
                    2, 7,
                ]))
            }
        }
    }
    
    static var allTests = [
        ("testSlice", testSlice),
        ("testInitWithPixelAt", testInitWithPixelAt),
        ("testTransposed", testTransposed),
        ("testXReversed", testXReversed),
        ("testYReversed", testYReversed),
        ("testRotated", testRotated),
    ]
}
