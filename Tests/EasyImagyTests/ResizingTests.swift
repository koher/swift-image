import XCTest
import EasyImagy

class ResizingTests : XCTestCase {
    func testResized() {
        do {
            let image = Image<Double>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ])
            XCTAssertEqual(image.resizedTo(width: 6, height: 4), Image<Double>(width: 6, height: 4, pixels: [
                1.00, 1.25, 1.75, 2.25, 2.75, 3.00,
                1.75, 2.00, 2.50, 3.00, 3.50, 3.75,
                3.25, 3.50, 4.00, 4.50, 5.00, 5.25,
                4.00, 4.25, 4.75, 5.25, 5.75, 6.00,
            ]), accuracy: 1.0e-10)
        }
        
        do { // `ImageSlice`
            let image = Image<Double>(width: 5, height: 4, pixels: [
                0, 0, 0, 0, 0,
                0, 1, 2, 3, 0,
                0, 4, 5, 6, 0,
                0, 0, 0, 0, 0,
            ])
            let slice: ImageSlice<Double> = image[1...3, 1...2]
            XCTAssertEqual(slice.resizedTo(width: 6, height: 4), Image<Double>(width: 6, height: 4, pixels: [
                1.00, 1.25, 1.75, 2.25, 2.75, 3.00,
                1.75, 2.00, 2.50, 3.00, 3.50, 3.75,
                3.25, 3.50, 4.00, 4.50, 5.00, 5.25,
                4.00, 4.25, 4.75, 5.25, 5.75, 6.00,
            ]), accuracy: 1.0e-10)
        }
        
        do {
            let image = Image<Double>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ])
            XCTAssertEqual(image.resizedTo(width: 6, height: 4, interpolatedBy: .bilinear), Image<Double>(width: 6, height: 4, pixels: [
                1.00, 1.25, 1.75, 2.25, 2.75, 3.00,
                1.75, 2.00, 2.50, 3.00, 3.50, 3.75,
                3.25, 3.50, 4.00, 4.50, 5.00, 5.25,
                4.00, 4.25, 4.75, 5.25, 5.75, 6.00,
            ]), accuracy: 1.0e-10)
        }
        
        do {
            let image = Image<UInt8>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ])
            XCTAssertEqual(image.resizedTo(width: 6, height: 4, interpolatedBy: .nearestNeighbor), Image<UInt8>(width: 6, height: 4, pixels: [
                1, 1, 2, 2, 3, 3,
                1, 1, 2, 2, 3, 3,
                4, 4, 5, 5, 6, 6,
                4, 4, 5, 5, 6, 6,
            ]))
        }
        
        do {
            let image = Image<UInt8>(width: 6, height: 4, pixels: [
                1, 1, 2, 2, 3, 3,
                1, 1, 2, 2, 3, 3,
                4, 4, 5, 5, 6, 6,
                4, 4, 5, 5, 6, 6,
            ])
            XCTAssertEqual(image.resizedTo(width: 3, height: 2, interpolatedBy: .nearestNeighbor), Image<UInt8>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ]))
        }
        
        do { // To check anti-aliasing is applied
            let image = Image<Double>(width: 6, height: 3, pixels: [
                1, 8, 5, 4, 5, 3,
                3, 2, 6, 7, 8, 9,
                4, 7, 9, 1, 6, 2,
            ])
            XCTAssertEqual(image.resizedTo(width: 2, height: 1, interpolatedBy: .bilinear), Image<Double>(width: 2, height: 1, pixels: [
                5, 5,
            ]), accuracy: 1.0e-10)
        }
        
        do { // To check anti-aliasing is not applied for `.nearestNeighbor`
            let image = Image<Double>(width: 6, height: 3, pixels: [
                1, 8, 5, 4, 5, 3,
                3, 2, 6, 7, 8, 9,
                4, 7, 9, 1, 6, 2,
            ])
            XCTAssertEqual(image.resizedTo(width: 2, height: 1, interpolatedBy: .nearestNeighbor), Image<Double>(width: 2, height: 1, pixels: [
                2, 8,
            ]), accuracy: 1.0e-10)
        }
        
        do { // Interpolation
            let image = Image<Double>(width: 3, height: 3, pixels: [
                1, 2, 3,
                4, 5, 6,
                7, 8, 9,
            ])
            XCTAssertEqual(image.resizedTo(width: 2, height: 2), Image<Double>(width: 2, height: 2, pixels: [
                2.0, 3.5,
                6.5, 8.0,
            ]), accuracy: 1.0e-10)
        }
        
        do { // Non-numeric Pixels
            let image = Image<Bool>(width: 3, height: 2, pixels: [
                true,  false, true,
                false, true,  false,
            ])
            XCTAssertEqual(image.resizedTo(width: 6, height: 4), Image<Bool>(width: 6, height: 4, pixels: [
                true,  true,  false, false, true,  true,
                true,  true,  false, false, true,  true,
                false, false, true,  true,  false, false,
                false, false, true,  true,  false, false,
            ]))
        }
    }
    
    static var allTests = [
        ("testResized", testResized),
    ]
}
