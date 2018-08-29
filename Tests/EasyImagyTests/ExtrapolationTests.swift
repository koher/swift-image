import XCTest
import EasyImagy

class ExtrapolationTests: XCTestCase {
    func testSubscriptWithExtrapolation() {
        do {
            let image = Image<UInt8>(width: 3, height: 3, pixels: [
                1, 2, 3,
                4, 5, 6,
                7, 8, 9,
            ])
            
            do {
                XCTAssertEqual(image[-1, -1, extrapolation: .constant(255)], 255)
                XCTAssertEqual(image[ 0, -1, extrapolation: .constant(255)], 255)
                XCTAssertEqual(image[ 1, -1, extrapolation: .constant(255)], 255)
                XCTAssertEqual(image[ 2, -1, extrapolation: .constant(255)], 255)
                XCTAssertEqual(image[ 3, -1, extrapolation: .constant(255)], 255)
                
                XCTAssertEqual(image[-1,  0, extrapolation: .constant(255)], 255)
                XCTAssertEqual(image[ 0,  0, extrapolation: .constant(255)], 1)
                XCTAssertEqual(image[ 1,  0, extrapolation: .constant(255)], 2)
                XCTAssertEqual(image[ 2,  0, extrapolation: .constant(255)], 3)
                XCTAssertEqual(image[ 3,  0, extrapolation: .constant(255)], 255)
                
                XCTAssertEqual(image[-1,  1, extrapolation: .constant(255)], 255)
                XCTAssertEqual(image[ 0,  1, extrapolation: .constant(255)], 4)
                XCTAssertEqual(image[ 1,  1, extrapolation: .constant(255)], 5)
                XCTAssertEqual(image[ 2,  1, extrapolation: .constant(255)], 6)
                XCTAssertEqual(image[ 3,  1, extrapolation: .constant(255)], 255)
                
                XCTAssertEqual(image[-1,  2, extrapolation: .constant(255)], 255)
                XCTAssertEqual(image[ 0,  2, extrapolation: .constant(255)], 7)
                XCTAssertEqual(image[ 1,  2, extrapolation: .constant(255)], 8)
                XCTAssertEqual(image[ 2,  2, extrapolation: .constant(255)], 9)
                XCTAssertEqual(image[ 3,  2, extrapolation: .constant(255)], 255)
                
                XCTAssertEqual(image[-1,  3, extrapolation: .constant(255)], 255)
                XCTAssertEqual(image[ 0,  3, extrapolation: .constant(255)], 255)
                XCTAssertEqual(image[ 1,  3, extrapolation: .constant(255)], 255)
                XCTAssertEqual(image[ 2,  3, extrapolation: .constant(255)], 255)
                XCTAssertEqual(image[ 3,  3, extrapolation: .constant(255)], 255)
            }
            
            do {
                XCTAssertEqual(image[-1, -1, extrapolation: .edge], 1)
                XCTAssertEqual(image[ 0, -1, extrapolation: .edge], 1)
                XCTAssertEqual(image[ 1, -1, extrapolation: .edge], 2)
                XCTAssertEqual(image[ 2, -1, extrapolation: .edge], 3)
                XCTAssertEqual(image[ 3, -1, extrapolation: .edge], 3)
                
                XCTAssertEqual(image[-1,  0, extrapolation: .edge], 1)
                XCTAssertEqual(image[ 0,  0, extrapolation: .edge], 1)
                XCTAssertEqual(image[ 1,  0, extrapolation: .edge], 2)
                XCTAssertEqual(image[ 2,  0, extrapolation: .edge], 3)
                XCTAssertEqual(image[ 3,  0, extrapolation: .edge], 3)
                
                XCTAssertEqual(image[-1,  1, extrapolation: .edge], 4)
                XCTAssertEqual(image[ 0,  1, extrapolation: .edge], 4)
                XCTAssertEqual(image[ 1,  1, extrapolation: .edge], 5)
                XCTAssertEqual(image[ 2,  1, extrapolation: .edge], 6)
                XCTAssertEqual(image[ 3,  1, extrapolation: .edge], 6)
                
                XCTAssertEqual(image[-1,  2, extrapolation: .edge], 7)
                XCTAssertEqual(image[ 0,  2, extrapolation: .edge], 7)
                XCTAssertEqual(image[ 1,  2, extrapolation: .edge], 8)
                XCTAssertEqual(image[ 2,  2, extrapolation: .edge], 9)
                XCTAssertEqual(image[ 3,  2, extrapolation: .edge], 9)
                
                XCTAssertEqual(image[-1,  3, extrapolation: .edge], 7)
                XCTAssertEqual(image[ 0,  3, extrapolation: .edge], 7)
                XCTAssertEqual(image[ 1,  3, extrapolation: .edge], 8)
                XCTAssertEqual(image[ 2,  3, extrapolation: .edge], 9)
                XCTAssertEqual(image[ 3,  3, extrapolation: .edge], 9)
            }
            
            do {
                XCTAssertEqual(image[-1, -1, extrapolation: .repeat], 9)
                XCTAssertEqual(image[ 0, -1, extrapolation: .repeat], 7)
                XCTAssertEqual(image[ 1, -1, extrapolation: .repeat], 8)
                XCTAssertEqual(image[ 2, -1, extrapolation: .repeat], 9)
                XCTAssertEqual(image[ 3, -1, extrapolation: .repeat], 7)
                
                XCTAssertEqual(image[-1,  0, extrapolation: .repeat], 3)
                XCTAssertEqual(image[ 0,  0, extrapolation: .repeat], 1)
                XCTAssertEqual(image[ 1,  0, extrapolation: .repeat], 2)
                XCTAssertEqual(image[ 2,  0, extrapolation: .repeat], 3)
                XCTAssertEqual(image[ 3,  0, extrapolation: .repeat], 1)
                
                XCTAssertEqual(image[-1,  1, extrapolation: .repeat], 6)
                XCTAssertEqual(image[ 0,  1, extrapolation: .repeat], 4)
                XCTAssertEqual(image[ 1,  1, extrapolation: .repeat], 5)
                XCTAssertEqual(image[ 2,  1, extrapolation: .repeat], 6)
                XCTAssertEqual(image[ 3,  1, extrapolation: .repeat], 4)
                
                XCTAssertEqual(image[-1,  2, extrapolation: .repeat], 9)
                XCTAssertEqual(image[ 0,  2, extrapolation: .repeat], 7)
                XCTAssertEqual(image[ 1,  2, extrapolation: .repeat], 8)
                XCTAssertEqual(image[ 2,  2, extrapolation: .repeat], 9)
                XCTAssertEqual(image[ 3,  2, extrapolation: .repeat], 7)
                
                XCTAssertEqual(image[-1,  3, extrapolation: .repeat], 3)
                XCTAssertEqual(image[ 0,  3, extrapolation: .repeat], 1)
                XCTAssertEqual(image[ 1,  3, extrapolation: .repeat], 2)
                XCTAssertEqual(image[ 2,  3, extrapolation: .repeat], 3)
                XCTAssertEqual(image[ 3,  3, extrapolation: .repeat], 1)
                
                XCTAssertEqual(image[-7,  1, extrapolation: .repeat], 6)
                XCTAssertEqual(image[-6,  1, extrapolation: .repeat], 4)
                XCTAssertEqual(image[-5,  1, extrapolation: .repeat], 5)
                XCTAssertEqual(image[-4,  1, extrapolation: .repeat], 6)
                XCTAssertEqual(image[-3,  1, extrapolation: .repeat], 4)
                XCTAssertEqual(image[-2,  1, extrapolation: .repeat], 5)
                XCTAssertEqual(image[-1,  1, extrapolation: .repeat], 6)
                XCTAssertEqual(image[ 0,  1, extrapolation: .repeat], 4)
                XCTAssertEqual(image[ 1,  1, extrapolation: .repeat], 5)
                XCTAssertEqual(image[ 2,  1, extrapolation: .repeat], 6)
                XCTAssertEqual(image[ 3,  1, extrapolation: .repeat], 4)
                XCTAssertEqual(image[ 4,  1, extrapolation: .repeat], 5)
                XCTAssertEqual(image[ 5,  1, extrapolation: .repeat], 6)
                XCTAssertEqual(image[ 6,  1, extrapolation: .repeat], 4)
                XCTAssertEqual(image[ 7,  1, extrapolation: .repeat], 5)
                XCTAssertEqual(image[ 8,  1, extrapolation: .repeat], 6)
                XCTAssertEqual(image[ 9,  1, extrapolation: .repeat], 4)
                
                XCTAssertEqual(image[ 1, -7, extrapolation: .repeat], 8)
                XCTAssertEqual(image[ 1, -6, extrapolation: .repeat], 2)
                XCTAssertEqual(image[ 1, -5, extrapolation: .repeat], 5)
                XCTAssertEqual(image[ 1, -4, extrapolation: .repeat], 8)
                XCTAssertEqual(image[ 1, -3, extrapolation: .repeat], 2)
                XCTAssertEqual(image[ 1, -2, extrapolation: .repeat], 5)
                XCTAssertEqual(image[ 1, -1, extrapolation: .repeat], 8)
                XCTAssertEqual(image[ 1,  0, extrapolation: .repeat], 2)
                XCTAssertEqual(image[ 1,  1, extrapolation: .repeat], 5)
                XCTAssertEqual(image[ 1,  2, extrapolation: .repeat], 8)
                XCTAssertEqual(image[ 1,  3, extrapolation: .repeat], 2)
                XCTAssertEqual(image[ 1,  4, extrapolation: .repeat], 5)
                XCTAssertEqual(image[ 1,  5, extrapolation: .repeat], 8)
                XCTAssertEqual(image[ 1,  6, extrapolation: .repeat], 2)
                XCTAssertEqual(image[ 1,  7, extrapolation: .repeat], 5)
                XCTAssertEqual(image[ 1,  8, extrapolation: .repeat], 8)
                XCTAssertEqual(image[ 1,  9, extrapolation: .repeat], 2)
                
                XCTAssertEqual(image[-6, -6, extrapolation: .repeat], 1)
                XCTAssertEqual(image[ 8, -6, extrapolation: .repeat], 3)
                XCTAssertEqual(image[-6,  8, extrapolation: .repeat], 7)
                XCTAssertEqual(image[ 8,  8, extrapolation: .repeat], 9)
                
                XCTAssertEqual(image[-7, -7, extrapolation: .repeat], 9)
                XCTAssertEqual(image[ 9, -7, extrapolation: .repeat], 7)
                XCTAssertEqual(image[-7,  9, extrapolation: .repeat], 3)
                XCTAssertEqual(image[ 9,  9, extrapolation: .repeat], 1)
            }
            
            do {
                XCTAssertEqual(image[-1, -1, extrapolation: .reflection], 1)
                XCTAssertEqual(image[ 0, -1, extrapolation: .reflection], 1)
                XCTAssertEqual(image[ 1, -1, extrapolation: .reflection], 2)
                XCTAssertEqual(image[ 2, -1, extrapolation: .reflection], 3)
                XCTAssertEqual(image[ 3, -1, extrapolation: .reflection], 3)
                
                XCTAssertEqual(image[-1,  0, extrapolation: .reflection], 1)
                XCTAssertEqual(image[ 0,  0, extrapolation: .reflection], 1)
                XCTAssertEqual(image[ 1,  0, extrapolation: .reflection], 2)
                XCTAssertEqual(image[ 2,  0, extrapolation: .reflection], 3)
                XCTAssertEqual(image[ 3,  0, extrapolation: .reflection], 3)
                
                XCTAssertEqual(image[-1,  1, extrapolation: .reflection], 4)
                XCTAssertEqual(image[ 0,  1, extrapolation: .reflection], 4)
                XCTAssertEqual(image[ 1,  1, extrapolation: .reflection], 5)
                XCTAssertEqual(image[ 2,  1, extrapolation: .reflection], 6)
                XCTAssertEqual(image[ 3,  1, extrapolation: .reflection], 6)
                
                XCTAssertEqual(image[-1,  2, extrapolation: .reflection], 7)
                XCTAssertEqual(image[ 0,  2, extrapolation: .reflection], 7)
                XCTAssertEqual(image[ 1,  2, extrapolation: .reflection], 8)
                XCTAssertEqual(image[ 2,  2, extrapolation: .reflection], 9)
                XCTAssertEqual(image[ 3,  2, extrapolation: .reflection], 9)
                
                XCTAssertEqual(image[-1,  3, extrapolation: .reflection], 7)
                XCTAssertEqual(image[ 0,  3, extrapolation: .reflection], 7)
                XCTAssertEqual(image[ 1,  3, extrapolation: .reflection], 8)
                XCTAssertEqual(image[ 2,  3, extrapolation: .reflection], 9)
                XCTAssertEqual(image[ 3,  3, extrapolation: .reflection], 9)
                
                XCTAssertEqual(image[-7,  1, extrapolation: .reflection], 4)
                XCTAssertEqual(image[-6,  1, extrapolation: .reflection], 4)
                XCTAssertEqual(image[-5,  1, extrapolation: .reflection], 5)
                XCTAssertEqual(image[-4,  1, extrapolation: .reflection], 6)
                XCTAssertEqual(image[-3,  1, extrapolation: .reflection], 6)
                XCTAssertEqual(image[-2,  1, extrapolation: .reflection], 5)
                XCTAssertEqual(image[-1,  1, extrapolation: .reflection], 4)
                XCTAssertEqual(image[ 0,  1, extrapolation: .reflection], 4)
                XCTAssertEqual(image[ 1,  1, extrapolation: .reflection], 5)
                XCTAssertEqual(image[ 2,  1, extrapolation: .reflection], 6)
                XCTAssertEqual(image[ 3,  1, extrapolation: .reflection], 6)
                XCTAssertEqual(image[ 4,  1, extrapolation: .reflection], 5)
                XCTAssertEqual(image[ 5,  1, extrapolation: .reflection], 4)
                XCTAssertEqual(image[ 6,  1, extrapolation: .reflection], 4)
                XCTAssertEqual(image[ 7,  1, extrapolation: .reflection], 5)
                XCTAssertEqual(image[ 8,  1, extrapolation: .reflection], 6)
                XCTAssertEqual(image[ 9,  1, extrapolation: .reflection], 6)
                
                XCTAssertEqual(image[ 1, -7, extrapolation: .reflection], 2)
                XCTAssertEqual(image[ 1, -6, extrapolation: .reflection], 2)
                XCTAssertEqual(image[ 1, -5, extrapolation: .reflection], 5)
                XCTAssertEqual(image[ 1, -4, extrapolation: .reflection], 8)
                XCTAssertEqual(image[ 1, -3, extrapolation: .reflection], 8)
                XCTAssertEqual(image[ 1, -2, extrapolation: .reflection], 5)
                XCTAssertEqual(image[ 1, -1, extrapolation: .reflection], 2)
                XCTAssertEqual(image[ 1,  0, extrapolation: .reflection], 2)
                XCTAssertEqual(image[ 1,  1, extrapolation: .reflection], 5)
                XCTAssertEqual(image[ 1,  2, extrapolation: .reflection], 8)
                XCTAssertEqual(image[ 1,  3, extrapolation: .reflection], 8)
                XCTAssertEqual(image[ 1,  4, extrapolation: .reflection], 5)
                XCTAssertEqual(image[ 1,  5, extrapolation: .reflection], 2)
                XCTAssertEqual(image[ 1,  6, extrapolation: .reflection], 2)
                XCTAssertEqual(image[ 1,  7, extrapolation: .reflection], 5)
                XCTAssertEqual(image[ 1,  8, extrapolation: .reflection], 8)
                XCTAssertEqual(image[ 1,  9, extrapolation: .reflection], 8)
                
                XCTAssertEqual(image[-6, -6, extrapolation: .reflection], 1)
                XCTAssertEqual(image[ 8, -6, extrapolation: .reflection], 3)
                XCTAssertEqual(image[-6,  8, extrapolation: .reflection], 7)
                XCTAssertEqual(image[ 8,  8, extrapolation: .reflection], 9)
                
                XCTAssertEqual(image[-7, -7, extrapolation: .reflection], 1)
                XCTAssertEqual(image[ 9, -7, extrapolation: .reflection], 3)
                XCTAssertEqual(image[-7,  9, extrapolation: .reflection], 7)
                XCTAssertEqual(image[ 9,  9, extrapolation: .reflection], 9)
            }
        }
        
        do {
            let image = Image<UInt8>(width: 5, height: 5, pixels: [
                0, 0, 0, 0, 0,
                0, 1, 2, 3, 0,
                0, 4, 5, 6, 0,
                0, 7, 8, 9, 0,
                0, 0, 0, 0, 0,
            ])
            let slice = image[1...3, 1...3]
            
            do {
                XCTAssertEqual(slice[0, 0, extrapolation: .constant(255)], 255)
                XCTAssertEqual(slice[1, 0, extrapolation: .constant(255)], 255)
                XCTAssertEqual(slice[2, 0, extrapolation: .constant(255)], 255)
                XCTAssertEqual(slice[3, 0, extrapolation: .constant(255)], 255)
                XCTAssertEqual(slice[4, 0, extrapolation: .constant(255)], 255)
                
                XCTAssertEqual(slice[0, 1, extrapolation: .constant(255)], 255)
                XCTAssertEqual(slice[1, 1, extrapolation: .constant(255)], 1)
                XCTAssertEqual(slice[2, 1, extrapolation: .constant(255)], 2)
                XCTAssertEqual(slice[3, 1, extrapolation: .constant(255)], 3)
                XCTAssertEqual(slice[4, 1, extrapolation: .constant(255)], 255)
                
                XCTAssertEqual(slice[0, 2, extrapolation: .constant(255)], 255)
                XCTAssertEqual(slice[1, 2, extrapolation: .constant(255)], 4)
                XCTAssertEqual(slice[2, 2, extrapolation: .constant(255)], 5)
                XCTAssertEqual(slice[3, 2, extrapolation: .constant(255)], 6)
                XCTAssertEqual(slice[4, 2, extrapolation: .constant(255)], 255)
                
                XCTAssertEqual(slice[0, 3, extrapolation: .constant(255)], 255)
                XCTAssertEqual(slice[1, 3, extrapolation: .constant(255)], 7)
                XCTAssertEqual(slice[2, 3, extrapolation: .constant(255)], 8)
                XCTAssertEqual(slice[3, 3, extrapolation: .constant(255)], 9)
                XCTAssertEqual(slice[4, 3, extrapolation: .constant(255)], 255)
                
                XCTAssertEqual(slice[0, 4, extrapolation: .constant(255)], 255)
                XCTAssertEqual(slice[1, 4, extrapolation: .constant(255)], 255)
                XCTAssertEqual(slice[2, 4, extrapolation: .constant(255)], 255)
                XCTAssertEqual(slice[3, 4, extrapolation: .constant(255)], 255)
                XCTAssertEqual(slice[4, 4, extrapolation: .constant(255)], 255)
            }
            
            do {
                XCTAssertEqual(slice[0, 0, extrapolation: .edge], 1)
                XCTAssertEqual(slice[1, 0, extrapolation: .edge], 1)
                XCTAssertEqual(slice[2, 0, extrapolation: .edge], 2)
                XCTAssertEqual(slice[3, 0, extrapolation: .edge], 3)
                XCTAssertEqual(slice[4, 0, extrapolation: .edge], 3)
                
                XCTAssertEqual(slice[0, 1, extrapolation: .edge], 1)
                XCTAssertEqual(slice[1, 1, extrapolation: .edge], 1)
                XCTAssertEqual(slice[2, 1, extrapolation: .edge], 2)
                XCTAssertEqual(slice[3, 1, extrapolation: .edge], 3)
                XCTAssertEqual(slice[4, 1, extrapolation: .edge], 3)
                
                XCTAssertEqual(slice[0, 2, extrapolation: .edge], 4)
                XCTAssertEqual(slice[1, 2, extrapolation: .edge], 4)
                XCTAssertEqual(slice[2, 2, extrapolation: .edge], 5)
                XCTAssertEqual(slice[3, 2, extrapolation: .edge], 6)
                XCTAssertEqual(slice[4, 2, extrapolation: .edge], 6)
                
                XCTAssertEqual(slice[0, 3, extrapolation: .edge], 7)
                XCTAssertEqual(slice[1, 3, extrapolation: .edge], 7)
                XCTAssertEqual(slice[2, 3, extrapolation: .edge], 8)
                XCTAssertEqual(slice[3, 3, extrapolation: .edge], 9)
                XCTAssertEqual(slice[4, 3, extrapolation: .edge], 9)
                
                XCTAssertEqual(slice[0, 4, extrapolation: .edge], 7)
                XCTAssertEqual(slice[1, 4, extrapolation: .edge], 7)
                XCTAssertEqual(slice[2, 4, extrapolation: .edge], 8)
                XCTAssertEqual(slice[3, 4, extrapolation: .edge], 9)
                XCTAssertEqual(slice[4, 4, extrapolation: .edge], 9)
            }
            
            do {
                XCTAssertEqual(slice[0, 0, extrapolation: .repeat], 9)
                XCTAssertEqual(slice[1, 0, extrapolation: .repeat], 7)
                XCTAssertEqual(slice[2, 0, extrapolation: .repeat], 8)
                XCTAssertEqual(slice[3, 0, extrapolation: .repeat], 9)
                XCTAssertEqual(slice[4, 0, extrapolation: .repeat], 7)
                
                XCTAssertEqual(slice[0, 1, extrapolation: .repeat], 3)
                XCTAssertEqual(slice[1, 1, extrapolation: .repeat], 1)
                XCTAssertEqual(slice[2, 1, extrapolation: .repeat], 2)
                XCTAssertEqual(slice[3, 1, extrapolation: .repeat], 3)
                XCTAssertEqual(slice[4, 1, extrapolation: .repeat], 1)
                
                XCTAssertEqual(slice[0, 2, extrapolation: .repeat], 6)
                XCTAssertEqual(slice[1, 2, extrapolation: .repeat], 4)
                XCTAssertEqual(slice[2, 2, extrapolation: .repeat], 5)
                XCTAssertEqual(slice[3, 2, extrapolation: .repeat], 6)
                XCTAssertEqual(slice[4, 2, extrapolation: .repeat], 4)
                
                XCTAssertEqual(slice[0, 3, extrapolation: .repeat], 9)
                XCTAssertEqual(slice[1, 3, extrapolation: .repeat], 7)
                XCTAssertEqual(slice[2, 3, extrapolation: .repeat], 8)
                XCTAssertEqual(slice[3, 3, extrapolation: .repeat], 9)
                XCTAssertEqual(slice[4, 3, extrapolation: .repeat], 7)
                
                XCTAssertEqual(slice[0, 4, extrapolation: .repeat], 3)
                XCTAssertEqual(slice[1, 4, extrapolation: .repeat], 1)
                XCTAssertEqual(slice[2, 4, extrapolation: .repeat], 2)
                XCTAssertEqual(slice[3, 4, extrapolation: .repeat], 3)
                XCTAssertEqual(slice[4, 4, extrapolation: .repeat], 1)
                
                XCTAssertEqual(slice[-6,  2, extrapolation: .repeat], 6)
                XCTAssertEqual(slice[-5,  2, extrapolation: .repeat], 4)
                XCTAssertEqual(slice[-4,  2, extrapolation: .repeat], 5)
                XCTAssertEqual(slice[-3,  2, extrapolation: .repeat], 6)
                XCTAssertEqual(slice[-2,  2, extrapolation: .repeat], 4)
                XCTAssertEqual(slice[-1,  2, extrapolation: .repeat], 5)
                XCTAssertEqual(slice[ 0,  2, extrapolation: .repeat], 6)
                XCTAssertEqual(slice[ 1,  2, extrapolation: .repeat], 4)
                XCTAssertEqual(slice[ 2,  2, extrapolation: .repeat], 5)
                XCTAssertEqual(slice[ 3,  2, extrapolation: .repeat], 6)
                XCTAssertEqual(slice[ 4,  2, extrapolation: .repeat], 4)
                XCTAssertEqual(slice[ 5,  2, extrapolation: .repeat], 5)
                XCTAssertEqual(slice[ 6,  2, extrapolation: .repeat], 6)
                XCTAssertEqual(slice[ 7,  2, extrapolation: .repeat], 4)
                XCTAssertEqual(slice[ 8,  2, extrapolation: .repeat], 5)
                XCTAssertEqual(slice[ 9,  2, extrapolation: .repeat], 6)
                XCTAssertEqual(slice[10,  2, extrapolation: .repeat], 4)
                
                XCTAssertEqual(slice[ 2, -6, extrapolation: .repeat], 8)
                XCTAssertEqual(slice[ 2, -5, extrapolation: .repeat], 2)
                XCTAssertEqual(slice[ 2, -4, extrapolation: .repeat], 5)
                XCTAssertEqual(slice[ 2, -3, extrapolation: .repeat], 8)
                XCTAssertEqual(slice[ 2, -2, extrapolation: .repeat], 2)
                XCTAssertEqual(slice[ 2, -1, extrapolation: .repeat], 5)
                XCTAssertEqual(slice[ 2,  0, extrapolation: .repeat], 8)
                XCTAssertEqual(slice[ 2,  1, extrapolation: .repeat], 2)
                XCTAssertEqual(slice[ 2,  2, extrapolation: .repeat], 5)
                XCTAssertEqual(slice[ 2,  3, extrapolation: .repeat], 8)
                XCTAssertEqual(slice[ 2,  4, extrapolation: .repeat], 2)
                XCTAssertEqual(slice[ 2,  5, extrapolation: .repeat], 5)
                XCTAssertEqual(slice[ 2,  6, extrapolation: .repeat], 8)
                XCTAssertEqual(slice[ 2,  7, extrapolation: .repeat], 2)
                XCTAssertEqual(slice[ 2,  8, extrapolation: .repeat], 5)
                XCTAssertEqual(slice[ 2,  9, extrapolation: .repeat], 8)
                XCTAssertEqual(slice[ 2, 10, extrapolation: .repeat], 2)
                
                XCTAssertEqual(slice[-5, -5, extrapolation: .repeat], 1)
                XCTAssertEqual(slice[ 9, -5, extrapolation: .repeat], 3)
                XCTAssertEqual(slice[-5,  9, extrapolation: .repeat], 7)
                XCTAssertEqual(slice[ 9,  9, extrapolation: .repeat], 9)
                
                XCTAssertEqual(slice[-6, -6, extrapolation: .repeat], 9)
                XCTAssertEqual(slice[10, -6, extrapolation: .repeat], 7)
                XCTAssertEqual(slice[-6, 10, extrapolation: .repeat], 3)
                XCTAssertEqual(slice[10, 10, extrapolation: .repeat], 1)
            }
            
            do {
                XCTAssertEqual(slice[0, 0, extrapolation: .reflection], 1)
                XCTAssertEqual(slice[1, 0, extrapolation: .reflection], 1)
                XCTAssertEqual(slice[2, 0, extrapolation: .reflection], 2)
                XCTAssertEqual(slice[3, 0, extrapolation: .reflection], 3)
                XCTAssertEqual(slice[4, 0, extrapolation: .reflection], 3)
                
                XCTAssertEqual(slice[0, 1, extrapolation: .reflection], 1)
                XCTAssertEqual(slice[1, 1, extrapolation: .reflection], 1)
                XCTAssertEqual(slice[2, 1, extrapolation: .reflection], 2)
                XCTAssertEqual(slice[3, 1, extrapolation: .reflection], 3)
                XCTAssertEqual(slice[4, 1, extrapolation: .reflection], 3)
                
                XCTAssertEqual(slice[0, 2, extrapolation: .reflection], 4)
                XCTAssertEqual(slice[1, 2, extrapolation: .reflection], 4)
                XCTAssertEqual(slice[2, 2, extrapolation: .reflection], 5)
                XCTAssertEqual(slice[3, 2, extrapolation: .reflection], 6)
                XCTAssertEqual(slice[4, 2, extrapolation: .reflection], 6)
                
                XCTAssertEqual(slice[0, 3, extrapolation: .reflection], 7)
                XCTAssertEqual(slice[1, 3, extrapolation: .reflection], 7)
                XCTAssertEqual(slice[2, 3, extrapolation: .reflection], 8)
                XCTAssertEqual(slice[3, 3, extrapolation: .reflection], 9)
                XCTAssertEqual(slice[4, 3, extrapolation: .reflection], 9)
                
                XCTAssertEqual(slice[0, 4, extrapolation: .reflection], 7)
                XCTAssertEqual(slice[1, 4, extrapolation: .reflection], 7)
                XCTAssertEqual(slice[2, 4, extrapolation: .reflection], 8)
                XCTAssertEqual(slice[3, 4, extrapolation: .reflection], 9)
                XCTAssertEqual(slice[4, 4, extrapolation: .reflection], 9)
                
                XCTAssertEqual(slice[-6,  2, extrapolation: .reflection], 4)
                XCTAssertEqual(slice[-5,  2, extrapolation: .reflection], 4)
                XCTAssertEqual(slice[-4,  2, extrapolation: .reflection], 5)
                XCTAssertEqual(slice[-3,  2, extrapolation: .reflection], 6)
                XCTAssertEqual(slice[-2,  2, extrapolation: .reflection], 6)
                XCTAssertEqual(slice[-1,  2, extrapolation: .reflection], 5)
                XCTAssertEqual(slice[ 0,  2, extrapolation: .reflection], 4)
                XCTAssertEqual(slice[ 1,  2, extrapolation: .reflection], 4)
                XCTAssertEqual(slice[ 2,  2, extrapolation: .reflection], 5)
                XCTAssertEqual(slice[ 3,  2, extrapolation: .reflection], 6)
                XCTAssertEqual(slice[ 4,  2, extrapolation: .reflection], 6)
                XCTAssertEqual(slice[ 5,  2, extrapolation: .reflection], 5)
                XCTAssertEqual(slice[ 6,  2, extrapolation: .reflection], 4)
                XCTAssertEqual(slice[ 7,  2, extrapolation: .reflection], 4)
                XCTAssertEqual(slice[ 8,  2, extrapolation: .reflection], 5)
                XCTAssertEqual(slice[ 9,  2, extrapolation: .reflection], 6)
                XCTAssertEqual(slice[10,  2, extrapolation: .reflection], 6)
                
                XCTAssertEqual(slice[ 2, -6, extrapolation: .reflection], 2)
                XCTAssertEqual(slice[ 2, -5, extrapolation: .reflection], 2)
                XCTAssertEqual(slice[ 2, -4, extrapolation: .reflection], 5)
                XCTAssertEqual(slice[ 2, -3, extrapolation: .reflection], 8)
                XCTAssertEqual(slice[ 2, -2, extrapolation: .reflection], 8)
                XCTAssertEqual(slice[ 2, -1, extrapolation: .reflection], 5)
                XCTAssertEqual(slice[ 2,  0, extrapolation: .reflection], 2)
                XCTAssertEqual(slice[ 2,  1, extrapolation: .reflection], 2)
                XCTAssertEqual(slice[ 2,  2, extrapolation: .reflection], 5)
                XCTAssertEqual(slice[ 2,  3, extrapolation: .reflection], 8)
                XCTAssertEqual(slice[ 2,  4, extrapolation: .reflection], 8)
                XCTAssertEqual(slice[ 2,  5, extrapolation: .reflection], 5)
                XCTAssertEqual(slice[ 2,  6, extrapolation: .reflection], 2)
                XCTAssertEqual(slice[ 2,  7, extrapolation: .reflection], 2)
                XCTAssertEqual(slice[ 2,  8, extrapolation: .reflection], 5)
                XCTAssertEqual(slice[ 2,  9, extrapolation: .reflection], 8)
                XCTAssertEqual(slice[ 2, 10, extrapolation: .reflection], 8)
                
                XCTAssertEqual(slice[-5, -5, extrapolation: .reflection], 1)
                XCTAssertEqual(slice[ 9, -5, extrapolation: .reflection], 3)
                XCTAssertEqual(slice[-5,  9, extrapolation: .reflection], 7)
                XCTAssertEqual(slice[ 9,  9, extrapolation: .reflection], 9)
                
                XCTAssertEqual(slice[-6, -6, extrapolation: .reflection], 1)
                XCTAssertEqual(slice[10, -6, extrapolation: .reflection], 3)
                XCTAssertEqual(slice[-6, 10, extrapolation: .reflection], 7)
                XCTAssertEqual(slice[10, 10, extrapolation: .reflection], 9)
            }
        }
    }
    
    func testSubscriptRangeWithExtrapolation() {
        do {
            let image = Image<UInt8>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ])
            var slice = image[-4...6, -3...4, extrapolation: .reflection]
            
            XCTAssertEqual(slice, AnyImage<UInt8>(width: 11, height: 8, pixels: [
                6, 6, 5, 4, 4, 5, 6, 6, 5, 4, 4,
                6, 6, 5, 4, 4, 5, 6, 6, 5, 4, 4,
                3, 3, 2, 1, 1, 2, 3, 3, 2, 1, 1,
                3, 3, 2, 1, 1, 2, 3, 3, 2, 1, 1,
                6, 6, 5, 4, 4, 5, 6, 6, 5, 4, 4,
                6, 6, 5, 4, 4, 5, 6, 6, 5, 4, 4,
                3, 3, 2, 1, 1, 2, 3, 3, 2, 1, 1,
                3, 3, 2, 1, 1, 2, 3, 3, 2, 1, 1,
            ]))
            XCTAssertEqual(slice[-2, -1], 2)
            
            slice[-2, -1] = 9

            XCTAssertEqual(slice, AnyImage<UInt8>(width: 11, height: 8, pixels: [
                6, 6, 5, 4, 4, 5, 6, 6, 5, 4, 4,
                6, 6, 5, 4, 4, 5, 6, 6, 5, 4, 4,
                3, 3, 9, 1, 1, 2, 3, 3, 2, 1, 1,
                3, 3, 2, 1, 1, 2, 3, 3, 2, 1, 1,
                6, 6, 5, 4, 4, 5, 6, 6, 5, 4, 4,
                6, 6, 5, 4, 4, 5, 6, 6, 5, 4, 4,
                3, 3, 2, 1, 1, 2, 3, 3, 2, 1, 1,
                3, 3, 2, 1, 1, 2, 3, 3, 2, 1, 1,
            ]))
            XCTAssertEqual(slice[-2, -1], 9)
        }
        
        do {
            let image = Image<UInt8>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ])
            let a = image[-1 ... 0, -1...0, extrapolation: .repeat]
            
            XCTAssertEqual(a, AnyImage<UInt8>(width: 2, height: 2, pixels: [
                6, 4,
                3, 1,
            ]))
            
            var b = a[-4 ... -1, -3 ... -1, extrapolation: .reflection]
            let c = b
            
            XCTAssertEqual(b, AnyImage<UInt8>(width: 4, height: 3, pixels: [
                1, 1, 3, 3,
                4, 4, 6, 6,
                4, 4, 6, 6,
            ]))
            XCTAssertEqual(b[-3, -3], 1)
            XCTAssertEqual(c[-3, -3], 1)

            b[-3, -3] = 9
            
            XCTAssertEqual(b, AnyImage<UInt8>(width: 4, height: 3, pixels: [
                1, 9, 3, 3,
                4, 4, 6, 6,
                4, 4, 6, 6,
            ]))
            XCTAssertEqual(b[-3, -3], 9)
            XCTAssertEqual(c[-3, -3], 1)
        }
    }
    
    static var allTests = [
        ("testSubscriptWithExtrapolation", testSubscriptWithExtrapolation),
        ("testSubscriptRangeWithExtrapolation", testSubscriptRangeWithExtrapolation),
    ]
}
