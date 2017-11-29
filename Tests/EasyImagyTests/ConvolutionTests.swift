import XCTest
import EasyImagy

class ConvolutionTests: XCTestCase {
    func testConvoluted() {
        do {
            let image = Image<Int>(width: 2, height: 2, pixels: [
                1, 2,
                3, 4,
            ])
            
            let kernel = Image<Int>(width: 5, height: 5, pixels: [
                2, 1, 1, 1, 2,
                1, 1, 1, 1, 1,
                1, 1, 1, 1, 1,
                1, 1, 1, 1, 1,
                2, 1, 1, 1, 2,
            ])
            
            let convoluted = image.convoluted(with: kernel)
            
            XCTAssertEqual(convoluted[0, 0], 65)
            XCTAssertEqual(convoluted[1, 0], 70)
            XCTAssertEqual(convoluted[0, 1], 75)
            XCTAssertEqual(convoluted[1, 1], 80)
        }
        
        do {
            let image = Image<Int>(width: 2, height: 2, pixels: [
                1, 2,
                3, 4,
            ])
            
            let kernel = Image<Int>(width: 5, height: 5, pixels: [
                1, 1, 1,  1, 1,
                1, 2, 3,  4, 1,
                1, 5, 6,  7, 1,
                1, 8, 9, 10, 1,
                1, 1, 1,  1, 1,
            ])
            
            let convoluted = image.convoluted(with: kernel, extrapolatedBy: .filling(0))
            
            XCTAssertEqual(convoluted[0, 0], 87)
            XCTAssertEqual(convoluted[1, 0], 77)
            XCTAssertEqual(convoluted[0, 1], 57)
            XCTAssertEqual(convoluted[1, 1], 47)
        }
        
        do {
            let image = Image<Int>(width: 2, height: 2, pixels: [
                1, 2,
                3, 4,
            ])
            
            let kernel = Image<Int>(width: 5, height: 5, pixels: [
                2, 1, 1, 1, 2,
                1, 1, 1, 1, 1,
                1, 1, 1, 1, 1,
                1, 1, 1, 1, 1,
                2, 1, 1, 1, 2,
            ])
            
            let convoluted = image.convoluted(with: kernel, extrapolatedBy: .edging)
            
            XCTAssertEqual(convoluted[0, 0], 65)
            XCTAssertEqual(convoluted[1, 0], 70)
            XCTAssertEqual(convoluted[0, 1], 75)
            XCTAssertEqual(convoluted[1, 1], 80)
        }
        
        do {
            let image = Image<Int>(width: 2, height: 2, pixels: [
                1, 2,
                3, 4,
            ])
            
            let kernel = Image<Int>(width: 5, height: 5, pixels: [
                2, 1, 1, 1, 2,
                1, 1, 1, 1, 1,
                1, 1, 1, 1, 1,
                1, 1, 1, 1, 1,
                2, 1, 1, 1, 2,
            ])
            
            let convoluted = image.convoluted(with: kernel, extrapolatedBy: .repeating)
            
            XCTAssertEqual(convoluted[0, 0], 59)
            XCTAssertEqual(convoluted[1, 0], 68)
            XCTAssertEqual(convoluted[0, 1], 77)
            XCTAssertEqual(convoluted[1, 1], 86)
        }
        
        do {
            let image = Image<Int>(width: 2, height: 2, pixels: [1, 2, 3, 4])
            
            let kernel = Image<Int>(width: 5, height: 5, pixels: [
                1, 1, 1, 1, 1,
                1, 1, 1, 1, 1,
                1, 1, 1, 1, 1,
                1, 1, 1, 1, 1,
                1, 1, 1, 1, 1,
            ])

            let convoluted = image.convoluted(with: kernel, extrapolatedBy: .mirroring)
            
            XCTAssertEqual(convoluted[0, 0], 70)
            XCTAssertEqual(convoluted[1, 0], 65)
            XCTAssertEqual(convoluted[0, 1], 60)
            XCTAssertEqual(convoluted[1, 1], 55)
        }
    }
}
