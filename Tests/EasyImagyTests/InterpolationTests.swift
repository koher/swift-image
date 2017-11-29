import XCTest
import EasyImagy

class InterpolationTests: XCTestCase {
    func testSubscriptInterpolation() {
        do {
            let image = Image<RGBA<UInt8>>(width: 3, height: 3, pixels: [
                RGBA<UInt8>(red:  0, green:  0, blue:  0, alpha:  0),
                RGBA<UInt8>(red:  2, green:  4, blue:  6, alpha:  8),
                RGBA<UInt8>(red:  4, green:  8, blue: 12, alpha: 16),
                RGBA<UInt8>(red:  6, green: 12, blue: 18, alpha: 24),
                RGBA<UInt8>(red:  8, green: 16, blue: 24, alpha: 32),
                RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 40),
                RGBA<UInt8>(red: 12, green: 24, blue: 36, alpha: 48),
                RGBA<UInt8>(red: 14, green: 28, blue: 42, alpha: 56),
                RGBA<UInt8>(red: 16, green: 32, blue: 48, alpha: 64),
            ])
            
            XCTAssertEqual(image[0.0, 0.0], image[0, 0])
            XCTAssertEqual(image[1.0, 0.0], image[1, 0])
            XCTAssertEqual(image[2.0, 0.0], image[2, 0])
            XCTAssertEqual(image[0.0, 1.0], image[0, 1])
            XCTAssertEqual(image[1.0, 1.0], image[1, 1])
            XCTAssertEqual(image[2.0, 1.0], image[2, 1])
            XCTAssertEqual(image[0.0, 2.0], image[0, 2])
            XCTAssertEqual(image[1.0, 2.0], image[1, 2])
            XCTAssertEqual(image[2.0, 2.0], image[2, 2])
            
            XCTAssertEqual(image[0.5, 0.0], RGBA(red: 1, green: 2, blue: 3, alpha: 4))
            XCTAssertEqual(image[0.0, 0.5], RGBA(red: 3, green: 6, blue: 9, alpha: 12))
            XCTAssertEqual(image[0.5, 0.5], RGBA(red: 4, green: 8, blue: 12, alpha: 16))
            
            XCTAssertEqual(image[1.5, 1.0], RGBA(red: 9, green: 18, blue: 27, alpha: 36))
            XCTAssertEqual(image[1.0, 1.5], RGBA(red: 11, green: 22, blue: 33, alpha: 44))
            XCTAssertEqual(image[1.5, 1.5], RGBA(red: 12, green: 24, blue: 36, alpha: 48))
            
            XCTAssertEqual(image[0.75, 0.25], RGBA(red: 3, green: 6, blue: 9, alpha: 12))
            XCTAssertEqual(image[0.25, 0.75], RGBA(red: 5, green: 10, blue: 15, alpha: 20))
            XCTAssertEqual(image[1.75, 1.25], RGBA(red: 11, green: 22, blue: 33, alpha: 44))
            XCTAssertEqual(image[1.25, 1.75], RGBA(red: 13, green: 26, blue: 39, alpha: 52))
        }

        do { // Nearest Neighbor
            let image = Image<UInt8>(width: 2, height: 2, pixels: [
                96, 64, 32, 16
            ])
            
            XCTAssertEqual(image[0.0, 0.0, interpolatedBy: .nearestNeighbor], image[0, 0])
            XCTAssertEqual(image[1.0, 0.0, interpolatedBy: .nearestNeighbor], image[1, 0])
            XCTAssertEqual(image[0.0, 1.0, interpolatedBy: .nearestNeighbor], image[0, 1])
            XCTAssertEqual(image[1.0, 1.0, interpolatedBy: .nearestNeighbor], image[1, 1])
            
            XCTAssertEqual(image[0.4, 0.4, interpolatedBy: .nearestNeighbor], image[0, 0])
            XCTAssertEqual(image[0.6, 0.4, interpolatedBy: .nearestNeighbor], image[1, 0])
            XCTAssertEqual(image[0.4, 0.6, interpolatedBy: .nearestNeighbor], image[0, 1])
            XCTAssertEqual(image[0.6, 0.6, interpolatedBy: .nearestNeighbor], image[1, 1])
        }

        do { // Bilinear
            let image = Image<UInt8>(width: 2, height: 2, pixels: [
                96, 64, 32, 16
            ])
            
            XCTAssertEqual(image[0.0, 0.0, interpolatedBy: .bilinear], image[0, 0])
            XCTAssertEqual(image[1.0, 0.0, interpolatedBy: .bilinear], image[1, 0])
            XCTAssertEqual(image[0.0, 1.0, interpolatedBy: .bilinear], image[0, 1])
            XCTAssertEqual(image[1.0, 1.0, interpolatedBy: .bilinear], image[1, 1])
            
            XCTAssertEqual(image[0.25, 0.25, interpolatedBy: .bilinear], 73)
            XCTAssertEqual(image[0.5,  0.25, interpolatedBy: .bilinear], 66)
            XCTAssertEqual(image[0.75, 0.25, interpolatedBy: .bilinear], 59)
            XCTAssertEqual(image[0.25, 0.5,  interpolatedBy: .bilinear], 58)
            XCTAssertEqual(image[0.5,  0.5,  interpolatedBy: .bilinear], 52)
            XCTAssertEqual(image[0.75, 0.5,  interpolatedBy: .bilinear], 46)
            XCTAssertEqual(image[0.25, 0.75, interpolatedBy: .bilinear], 43)
            XCTAssertEqual(image[0.5,  0.75, interpolatedBy: .bilinear], 38)
            XCTAssertEqual(image[0.75, 0.75, interpolatedBy: .bilinear], 33)
        }
    }
}
