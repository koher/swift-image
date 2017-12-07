import XCTest
import EasyImagy

class ImageProtocolTests : XCTestCase {
    func testTransposed() {
        do {
            let image = Image<UInt8>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ])
            XCTAssertEqual(image.transposed(), Image<UInt8>(width: 2, height: 3, pixels: [
                1, 4,
                2, 5,
                3, 6,
            ]))
        }
        
        do {
            let image = Image<UInt8>(width: 4, height: 3, pixels: [
                1,  2,  3,  4,
                5,  6,  7,  8,
                9, 10, 11, 12,
            ])
            let slice = image[1...3, 0...1]
            XCTAssertEqual(slice, ImageSlice<UInt8>(width: 3, height: 2, pixels: [
                2, 3, 4,
                6, 7, 8,
            ]))
            XCTAssertEqual(slice.transposed(), Image<UInt8>(width: 2, height: 3, pixels: [
                2, 6,
                3, 7,
                4, 8,
            ]))
        }
    }
}
