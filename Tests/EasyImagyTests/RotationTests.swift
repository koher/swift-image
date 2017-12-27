import XCTest
import EasyImagy

private let accuracy = 1.0e-10

class RotationTests : XCTestCase {
    func testRotated() {
        do {
            let image = Image<Double>(width: 2, height: 2, pixels: [
                1, 2,
                3, 4,
            ])
            XCTAssertEqual(image.rotated(by: .pi / 4, interpolatedBy: .bilinear, extrapolatedBy: .edge), Image<Double>(width: 3, height: 3, pixels: [
                2.0, 1.0, 1.5,
                3.0, 2.5, 2.0,
                3.5, 4.0, 3.0,
            ]), accuracy: accuracy)
        }
        
        do {
            let image = Image<Double>(width: 4, height: 4, pixels: [
                0, 0, 0, 0,
                0, 1, 2, 0,
                0, 3, 4, 0,
                0, 0, 0, 0,
            ])
            let slice = image[1...2, 1...2]
            XCTAssertEqual(slice.rotated(by: .pi / 4, interpolatedBy: .bilinear, extrapolatedBy: .edge), Image<Double>(width: 3, height: 3, pixels: [
                2.0, 1.0, 1.5,
                3.0, 2.5, 2.0,
                3.5, 4.0, 3.0,
            ]), accuracy: accuracy)
        }
        
        do {
            let image = Image<Bool>(width: 2, height: 2, pixels: [
                true,  false,
                false, true,
            ])
            XCTAssertEqual(image.rotated(by: .pi / 4), Image<Bool>(width: 3, height: 3, pixels: [
                false, true, false,
                false, true, false,
                false, true, false,
            ]))
        }
        
        do {
            let image = Image<Bool>(width: 2, height: 2, pixels: [
                true,  false,
                false, true,
            ])
            XCTAssertEqual(image.rotated(byDegrees: 45), Image<Bool>(width: 3, height: 3, pixels: [
                false, true, false,
                false, true, false,
                false, true, false,
            ]))
        }
        
        do {
            let image = Image<Int?>(width: 2, height: 2, pixels: [
                2, nil,
                nil, 3,
            ])
            XCTAssertEqual(image.rotated(byDegrees: 90), Image<Int?>(width: 2, height: 2, pixels: [
                nil, 2,
                3, nil,
            ]))
        }
    }
    
    static var allTests = [
        ("testRotated", testRotated),
    ]
}
