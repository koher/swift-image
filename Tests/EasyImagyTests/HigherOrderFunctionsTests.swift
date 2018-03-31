import XCTest
import EasyImagy

class HigherOrderFunctionsTests : XCTestCase {
    func testMap() {
        do {
            let image = Image<UInt8>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ])
            // Assigning the value to `result` to check if its type can be inferred though `Sequence` also has `map`
            let result = image.map { $0 + 1 }
            XCTAssertEqual(result, Image(width: 3, height: 2, pixels: [
                2, 3, 4,
                5, 6, 7,
            ]))
        }

        do { // rethrows
            let image = Image<UInt8>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ])
            do {
                // Assigning the value to `result` to check if its type can be inferred though `Sequence` also has `map`
                let result = try image.map { pixel -> UInt8 in
                    guard pixel < 99 else { throw GeneralError() }
                    return pixel + 1
                }
                XCTAssertEqual(result, Image(width: 3, height: 2, pixels: [
                    2, 3, 4,
                    5, 6, 7,
                ]))
            } catch _ {
                XCTFail()
            }
        }

        do { // ImageSlice
            let image = Image<UInt8>(width: 5, height: 4, pixels: [
                0, 0, 0, 0, 0,
                0, 1, 2, 3, 0,
                0, 4, 5, 6, 0,
                0, 0, 0, 0, 0,
            ])
            let slice: ImageSlice<UInt8> = image[1...3, 1...2]
            // Assigning the value to `result` to check if its type can be inferred though `Sequence` also has `map`
            let result = slice.map { $0 + 1 }
            XCTAssertEqual(result, Image(width: 3, height: 2, pixels: [
                2, 3, 4,
                5, 6, 7,
            ]))
        }
        
        do { // Sequence
            let image = Image<UInt8>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ])
            let result: [UInt8] = image.map { $0 + 1 }
            XCTAssertEqual(result, [2, 3, 4, 5, 6, 7])
        }
    }
    
    func testUpdate() {
        do {
            var image = Image<UInt8>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ])
            image.update { $0 *= 2 }
            XCTAssertEqual(image, Image<UInt8>(width: 3, height: 2, pixels: [
                2,  4,  6,
                8, 10, 12,
            ]))
        }
        
        do {
            let image = Image<UInt8>(width: 5, height: 4, pixels: [
                0, 0, 0, 0, 0,
                0, 1, 2, 3, 0,
                0, 4, 5, 6, 0,
                0, 0, 0, 0, 0,
            ])
            var slice: ImageSlice<UInt8> = image[1...3, 1...2]
            slice.update { $0 *= 2 }
            XCTAssertEqual(slice, ImageSlice<UInt8>(width: 3, height: 2, pixels: [
                2,  4,  6,
                8, 10, 12,
            ]))
        }
    }
    
    func testUpdatePerformance() {
        var image = Image<Int>(width: 1024, height: 1024, pixels: 1...(1024 * 1024))
        measure {
            image.update { $0 += 1 }
        }
    }
    
    static var allTests = [
        ("testMap", testMap),
        ("testUpdate", testUpdate),
        ("testUpdatePerformance", testUpdatePerformance),
    ]
}
