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
            
            let convoluted = image.convoluted(with: kernel, extrapolatedBy: .constant(0))
            
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
            
            let convoluted = image.convoluted(with: kernel, extrapolatedBy: .edge)
            
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
            
            let convoluted = image.convoluted(with: kernel, extrapolatedBy: .repeat)
            
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

            let convoluted = image.convoluted(with: kernel, extrapolatedBy: .reflection)
            
            XCTAssertEqual(convoluted[0, 0], 70)
            XCTAssertEqual(convoluted[1, 0], 65)
            XCTAssertEqual(convoluted[0, 1], 60)
            XCTAssertEqual(convoluted[1, 1], 55)
        }
        
        do { // `kernel` of `ImageSlice`
            let image = Image<Int>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ])
            let kernel0 = Image<Int>(width: 5, height: 5, pixels: [
                99, 99, 99, 99, 99,
                99,  1,  2,  3, 99,
                99,  4,  5,  6, 99,
                99,  7,  8,  9, 99,
                99, 99, 99, 99, 99,
            ])
            let kernel: ImageSlice<Int> = kernel0[1...3, 1...3]
            XCTAssertEqual(image.convoluted(with: kernel, extrapolatedBy: .constant(0)), Image<Int>(width: 3, height: 2, pixels: [
                94, 154, 106,
                58,  91,  58,
            ]))
        }

        do { // `convoluted` for `ImageSlice`
            let image = Image<Int>(width: 4, height: 4, pixels: [
                99, 99, 99, 99,
                99,  1,  2, 99,
                99,  3,  4, 99,
                99, 99, 99, 99,
            ])
            let slice: ImageSlice<Int> = image[1...2, 1...2]
            let kernel = Image<Int>(width: 5, height: 5, pixels: [
                2, 1, 1, 1, 2,
                1, 1, 1, 1, 1,
                1, 1, 1, 1, 1,
                1, 1, 1, 1, 1,
                2, 1, 1, 1, 2,
            ])
            XCTAssertEqual(slice.convoluted(with: kernel), Image<Int>(width: 2, height: 2, pixels: [
                65, 70,
                75, 80,
            ]))
        }
    }
    
    static var allTests = [
        ("testConvoluted", testConvoluted),
    ]
}
