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
                XCTAssertEqual(image[-1, -1, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(image[ 0, -1, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(image[ 1, -1, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(image[ 2, -1, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(image[ 3, -1, extrapolatedBy: .filling(255)], 255)
                
                XCTAssertEqual(image[-1,  0, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(image[ 0,  0, extrapolatedBy: .filling(255)], 1)
                XCTAssertEqual(image[ 1,  0, extrapolatedBy: .filling(255)], 2)
                XCTAssertEqual(image[ 2,  0, extrapolatedBy: .filling(255)], 3)
                XCTAssertEqual(image[ 3,  0, extrapolatedBy: .filling(255)], 255)
                
                XCTAssertEqual(image[-1,  1, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(image[ 0,  1, extrapolatedBy: .filling(255)], 4)
                XCTAssertEqual(image[ 1,  1, extrapolatedBy: .filling(255)], 5)
                XCTAssertEqual(image[ 2,  1, extrapolatedBy: .filling(255)], 6)
                XCTAssertEqual(image[ 3,  1, extrapolatedBy: .filling(255)], 255)
                
                XCTAssertEqual(image[-1,  2, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(image[ 0,  2, extrapolatedBy: .filling(255)], 7)
                XCTAssertEqual(image[ 1,  2, extrapolatedBy: .filling(255)], 8)
                XCTAssertEqual(image[ 2,  2, extrapolatedBy: .filling(255)], 9)
                XCTAssertEqual(image[ 3,  2, extrapolatedBy: .filling(255)], 255)
                
                XCTAssertEqual(image[-1,  3, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(image[ 0,  3, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(image[ 1,  3, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(image[ 2,  3, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(image[ 3,  3, extrapolatedBy: .filling(255)], 255)
            }
            
            do {
                XCTAssertEqual(image[-1, -1, extrapolatedBy: .edge], 1)
                XCTAssertEqual(image[ 0, -1, extrapolatedBy: .edge], 1)
                XCTAssertEqual(image[ 1, -1, extrapolatedBy: .edge], 2)
                XCTAssertEqual(image[ 2, -1, extrapolatedBy: .edge], 3)
                XCTAssertEqual(image[ 3, -1, extrapolatedBy: .edge], 3)
                
                XCTAssertEqual(image[-1,  0, extrapolatedBy: .edge], 1)
                XCTAssertEqual(image[ 0,  0, extrapolatedBy: .edge], 1)
                XCTAssertEqual(image[ 1,  0, extrapolatedBy: .edge], 2)
                XCTAssertEqual(image[ 2,  0, extrapolatedBy: .edge], 3)
                XCTAssertEqual(image[ 3,  0, extrapolatedBy: .edge], 3)
                
                XCTAssertEqual(image[-1,  1, extrapolatedBy: .edge], 4)
                XCTAssertEqual(image[ 0,  1, extrapolatedBy: .edge], 4)
                XCTAssertEqual(image[ 1,  1, extrapolatedBy: .edge], 5)
                XCTAssertEqual(image[ 2,  1, extrapolatedBy: .edge], 6)
                XCTAssertEqual(image[ 3,  1, extrapolatedBy: .edge], 6)
                
                XCTAssertEqual(image[-1,  2, extrapolatedBy: .edge], 7)
                XCTAssertEqual(image[ 0,  2, extrapolatedBy: .edge], 7)
                XCTAssertEqual(image[ 1,  2, extrapolatedBy: .edge], 8)
                XCTAssertEqual(image[ 2,  2, extrapolatedBy: .edge], 9)
                XCTAssertEqual(image[ 3,  2, extrapolatedBy: .edge], 9)
                
                XCTAssertEqual(image[-1,  3, extrapolatedBy: .edge], 7)
                XCTAssertEqual(image[ 0,  3, extrapolatedBy: .edge], 7)
                XCTAssertEqual(image[ 1,  3, extrapolatedBy: .edge], 8)
                XCTAssertEqual(image[ 2,  3, extrapolatedBy: .edge], 9)
                XCTAssertEqual(image[ 3,  3, extrapolatedBy: .edge], 9)
            }
            
            do {
                XCTAssertEqual(image[-1, -1, extrapolatedBy: .repeat], 9)
                XCTAssertEqual(image[ 0, -1, extrapolatedBy: .repeat], 7)
                XCTAssertEqual(image[ 1, -1, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(image[ 2, -1, extrapolatedBy: .repeat], 9)
                XCTAssertEqual(image[ 3, -1, extrapolatedBy: .repeat], 7)
                
                XCTAssertEqual(image[-1,  0, extrapolatedBy: .repeat], 3)
                XCTAssertEqual(image[ 0,  0, extrapolatedBy: .repeat], 1)
                XCTAssertEqual(image[ 1,  0, extrapolatedBy: .repeat], 2)
                XCTAssertEqual(image[ 2,  0, extrapolatedBy: .repeat], 3)
                XCTAssertEqual(image[ 3,  0, extrapolatedBy: .repeat], 1)
                
                XCTAssertEqual(image[-1,  1, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(image[ 0,  1, extrapolatedBy: .repeat], 4)
                XCTAssertEqual(image[ 1,  1, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(image[ 2,  1, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(image[ 3,  1, extrapolatedBy: .repeat], 4)
                
                XCTAssertEqual(image[-1,  2, extrapolatedBy: .repeat], 9)
                XCTAssertEqual(image[ 0,  2, extrapolatedBy: .repeat], 7)
                XCTAssertEqual(image[ 1,  2, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(image[ 2,  2, extrapolatedBy: .repeat], 9)
                XCTAssertEqual(image[ 3,  2, extrapolatedBy: .repeat], 7)
                
                XCTAssertEqual(image[-1,  3, extrapolatedBy: .repeat], 3)
                XCTAssertEqual(image[ 0,  3, extrapolatedBy: .repeat], 1)
                XCTAssertEqual(image[ 1,  3, extrapolatedBy: .repeat], 2)
                XCTAssertEqual(image[ 2,  3, extrapolatedBy: .repeat], 3)
                XCTAssertEqual(image[ 3,  3, extrapolatedBy: .repeat], 1)
                
                XCTAssertEqual(image[-7,  1, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(image[-6,  1, extrapolatedBy: .repeat], 4)
                XCTAssertEqual(image[-5,  1, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(image[-4,  1, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(image[-3,  1, extrapolatedBy: .repeat], 4)
                XCTAssertEqual(image[-2,  1, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(image[-1,  1, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(image[ 0,  1, extrapolatedBy: .repeat], 4)
                XCTAssertEqual(image[ 1,  1, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(image[ 2,  1, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(image[ 3,  1, extrapolatedBy: .repeat], 4)
                XCTAssertEqual(image[ 4,  1, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(image[ 5,  1, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(image[ 6,  1, extrapolatedBy: .repeat], 4)
                XCTAssertEqual(image[ 7,  1, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(image[ 8,  1, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(image[ 9,  1, extrapolatedBy: .repeat], 4)
                
                XCTAssertEqual(image[ 1, -7, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(image[ 1, -6, extrapolatedBy: .repeat], 2)
                XCTAssertEqual(image[ 1, -5, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(image[ 1, -4, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(image[ 1, -3, extrapolatedBy: .repeat], 2)
                XCTAssertEqual(image[ 1, -2, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(image[ 1, -1, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(image[ 1,  0, extrapolatedBy: .repeat], 2)
                XCTAssertEqual(image[ 1,  1, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(image[ 1,  2, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(image[ 1,  3, extrapolatedBy: .repeat], 2)
                XCTAssertEqual(image[ 1,  4, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(image[ 1,  5, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(image[ 1,  6, extrapolatedBy: .repeat], 2)
                XCTAssertEqual(image[ 1,  7, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(image[ 1,  8, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(image[ 1,  9, extrapolatedBy: .repeat], 2)
                
                XCTAssertEqual(image[-6, -6, extrapolatedBy: .repeat], 1)
                XCTAssertEqual(image[ 8, -6, extrapolatedBy: .repeat], 3)
                XCTAssertEqual(image[-6,  8, extrapolatedBy: .repeat], 7)
                XCTAssertEqual(image[ 8,  8, extrapolatedBy: .repeat], 9)
                
                XCTAssertEqual(image[-7, -7, extrapolatedBy: .repeat], 9)
                XCTAssertEqual(image[ 9, -7, extrapolatedBy: .repeat], 7)
                XCTAssertEqual(image[-7,  9, extrapolatedBy: .repeat], 3)
                XCTAssertEqual(image[ 9,  9, extrapolatedBy: .repeat], 1)
            }
            
            do {
                XCTAssertEqual(image[-1, -1, extrapolatedBy: .reflection], 1)
                XCTAssertEqual(image[ 0, -1, extrapolatedBy: .reflection], 1)
                XCTAssertEqual(image[ 1, -1, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(image[ 2, -1, extrapolatedBy: .reflection], 3)
                XCTAssertEqual(image[ 3, -1, extrapolatedBy: .reflection], 3)
                
                XCTAssertEqual(image[-1,  0, extrapolatedBy: .reflection], 1)
                XCTAssertEqual(image[ 0,  0, extrapolatedBy: .reflection], 1)
                XCTAssertEqual(image[ 1,  0, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(image[ 2,  0, extrapolatedBy: .reflection], 3)
                XCTAssertEqual(image[ 3,  0, extrapolatedBy: .reflection], 3)
                
                XCTAssertEqual(image[-1,  1, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(image[ 0,  1, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(image[ 1,  1, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(image[ 2,  1, extrapolatedBy: .reflection], 6)
                XCTAssertEqual(image[ 3,  1, extrapolatedBy: .reflection], 6)
                
                XCTAssertEqual(image[-1,  2, extrapolatedBy: .reflection], 7)
                XCTAssertEqual(image[ 0,  2, extrapolatedBy: .reflection], 7)
                XCTAssertEqual(image[ 1,  2, extrapolatedBy: .reflection], 8)
                XCTAssertEqual(image[ 2,  2, extrapolatedBy: .reflection], 9)
                XCTAssertEqual(image[ 3,  2, extrapolatedBy: .reflection], 9)
                
                XCTAssertEqual(image[-1,  3, extrapolatedBy: .reflection], 7)
                XCTAssertEqual(image[ 0,  3, extrapolatedBy: .reflection], 7)
                XCTAssertEqual(image[ 1,  3, extrapolatedBy: .reflection], 8)
                XCTAssertEqual(image[ 2,  3, extrapolatedBy: .reflection], 9)
                XCTAssertEqual(image[ 3,  3, extrapolatedBy: .reflection], 9)
                
                XCTAssertEqual(image[-7,  1, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(image[-6,  1, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(image[-5,  1, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(image[-4,  1, extrapolatedBy: .reflection], 6)
                XCTAssertEqual(image[-3,  1, extrapolatedBy: .reflection], 6)
                XCTAssertEqual(image[-2,  1, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(image[-1,  1, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(image[ 0,  1, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(image[ 1,  1, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(image[ 2,  1, extrapolatedBy: .reflection], 6)
                XCTAssertEqual(image[ 3,  1, extrapolatedBy: .reflection], 6)
                XCTAssertEqual(image[ 4,  1, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(image[ 5,  1, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(image[ 6,  1, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(image[ 7,  1, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(image[ 8,  1, extrapolatedBy: .reflection], 6)
                XCTAssertEqual(image[ 9,  1, extrapolatedBy: .reflection], 6)
                
                XCTAssertEqual(image[ 1, -7, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(image[ 1, -6, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(image[ 1, -5, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(image[ 1, -4, extrapolatedBy: .reflection], 8)
                XCTAssertEqual(image[ 1, -3, extrapolatedBy: .reflection], 8)
                XCTAssertEqual(image[ 1, -2, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(image[ 1, -1, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(image[ 1,  0, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(image[ 1,  1, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(image[ 1,  2, extrapolatedBy: .reflection], 8)
                XCTAssertEqual(image[ 1,  3, extrapolatedBy: .reflection], 8)
                XCTAssertEqual(image[ 1,  4, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(image[ 1,  5, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(image[ 1,  6, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(image[ 1,  7, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(image[ 1,  8, extrapolatedBy: .reflection], 8)
                XCTAssertEqual(image[ 1,  9, extrapolatedBy: .reflection], 8)
                
                XCTAssertEqual(image[-6, -6, extrapolatedBy: .reflection], 1)
                XCTAssertEqual(image[ 8, -6, extrapolatedBy: .reflection], 3)
                XCTAssertEqual(image[-6,  8, extrapolatedBy: .reflection], 7)
                XCTAssertEqual(image[ 8,  8, extrapolatedBy: .reflection], 9)
                
                XCTAssertEqual(image[-7, -7, extrapolatedBy: .reflection], 1)
                XCTAssertEqual(image[ 9, -7, extrapolatedBy: .reflection], 3)
                XCTAssertEqual(image[-7,  9, extrapolatedBy: .reflection], 7)
                XCTAssertEqual(image[ 9,  9, extrapolatedBy: .reflection], 9)
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
                XCTAssertEqual(slice[0, 0, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(slice[1, 0, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(slice[2, 0, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(slice[3, 0, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(slice[4, 0, extrapolatedBy: .filling(255)], 255)
                
                XCTAssertEqual(slice[0, 1, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(slice[1, 1, extrapolatedBy: .filling(255)], 1)
                XCTAssertEqual(slice[2, 1, extrapolatedBy: .filling(255)], 2)
                XCTAssertEqual(slice[3, 1, extrapolatedBy: .filling(255)], 3)
                XCTAssertEqual(slice[4, 1, extrapolatedBy: .filling(255)], 255)
                
                XCTAssertEqual(slice[0, 2, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(slice[1, 2, extrapolatedBy: .filling(255)], 4)
                XCTAssertEqual(slice[2, 2, extrapolatedBy: .filling(255)], 5)
                XCTAssertEqual(slice[3, 2, extrapolatedBy: .filling(255)], 6)
                XCTAssertEqual(slice[4, 2, extrapolatedBy: .filling(255)], 255)
                
                XCTAssertEqual(slice[0, 3, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(slice[1, 3, extrapolatedBy: .filling(255)], 7)
                XCTAssertEqual(slice[2, 3, extrapolatedBy: .filling(255)], 8)
                XCTAssertEqual(slice[3, 3, extrapolatedBy: .filling(255)], 9)
                XCTAssertEqual(slice[4, 3, extrapolatedBy: .filling(255)], 255)
                
                XCTAssertEqual(slice[0, 4, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(slice[1, 4, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(slice[2, 4, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(slice[3, 4, extrapolatedBy: .filling(255)], 255)
                XCTAssertEqual(slice[4, 4, extrapolatedBy: .filling(255)], 255)
            }
            
            do {
                XCTAssertEqual(slice[0, 0, extrapolatedBy: .edge], 1)
                XCTAssertEqual(slice[1, 0, extrapolatedBy: .edge], 1)
                XCTAssertEqual(slice[2, 0, extrapolatedBy: .edge], 2)
                XCTAssertEqual(slice[3, 0, extrapolatedBy: .edge], 3)
                XCTAssertEqual(slice[4, 0, extrapolatedBy: .edge], 3)
                
                XCTAssertEqual(slice[0, 1, extrapolatedBy: .edge], 1)
                XCTAssertEqual(slice[1, 1, extrapolatedBy: .edge], 1)
                XCTAssertEqual(slice[2, 1, extrapolatedBy: .edge], 2)
                XCTAssertEqual(slice[3, 1, extrapolatedBy: .edge], 3)
                XCTAssertEqual(slice[4, 1, extrapolatedBy: .edge], 3)
                
                XCTAssertEqual(slice[0, 2, extrapolatedBy: .edge], 4)
                XCTAssertEqual(slice[1, 2, extrapolatedBy: .edge], 4)
                XCTAssertEqual(slice[2, 2, extrapolatedBy: .edge], 5)
                XCTAssertEqual(slice[3, 2, extrapolatedBy: .edge], 6)
                XCTAssertEqual(slice[4, 2, extrapolatedBy: .edge], 6)
                
                XCTAssertEqual(slice[0, 3, extrapolatedBy: .edge], 7)
                XCTAssertEqual(slice[1, 3, extrapolatedBy: .edge], 7)
                XCTAssertEqual(slice[2, 3, extrapolatedBy: .edge], 8)
                XCTAssertEqual(slice[3, 3, extrapolatedBy: .edge], 9)
                XCTAssertEqual(slice[4, 3, extrapolatedBy: .edge], 9)
                
                XCTAssertEqual(slice[0, 4, extrapolatedBy: .edge], 7)
                XCTAssertEqual(slice[1, 4, extrapolatedBy: .edge], 7)
                XCTAssertEqual(slice[2, 4, extrapolatedBy: .edge], 8)
                XCTAssertEqual(slice[3, 4, extrapolatedBy: .edge], 9)
                XCTAssertEqual(slice[4, 4, extrapolatedBy: .edge], 9)
            }
            
            do {
                XCTAssertEqual(slice[0, 0, extrapolatedBy: .repeat], 9)
                XCTAssertEqual(slice[1, 0, extrapolatedBy: .repeat], 7)
                XCTAssertEqual(slice[2, 0, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(slice[3, 0, extrapolatedBy: .repeat], 9)
                XCTAssertEqual(slice[4, 0, extrapolatedBy: .repeat], 7)
                
                XCTAssertEqual(slice[0, 1, extrapolatedBy: .repeat], 3)
                XCTAssertEqual(slice[1, 1, extrapolatedBy: .repeat], 1)
                XCTAssertEqual(slice[2, 1, extrapolatedBy: .repeat], 2)
                XCTAssertEqual(slice[3, 1, extrapolatedBy: .repeat], 3)
                XCTAssertEqual(slice[4, 1, extrapolatedBy: .repeat], 1)
                
                XCTAssertEqual(slice[0, 2, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(slice[1, 2, extrapolatedBy: .repeat], 4)
                XCTAssertEqual(slice[2, 2, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(slice[3, 2, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(slice[4, 2, extrapolatedBy: .repeat], 4)
                
                XCTAssertEqual(slice[0, 3, extrapolatedBy: .repeat], 9)
                XCTAssertEqual(slice[1, 3, extrapolatedBy: .repeat], 7)
                XCTAssertEqual(slice[2, 3, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(slice[3, 3, extrapolatedBy: .repeat], 9)
                XCTAssertEqual(slice[4, 3, extrapolatedBy: .repeat], 7)
                
                XCTAssertEqual(slice[0, 4, extrapolatedBy: .repeat], 3)
                XCTAssertEqual(slice[1, 4, extrapolatedBy: .repeat], 1)
                XCTAssertEqual(slice[2, 4, extrapolatedBy: .repeat], 2)
                XCTAssertEqual(slice[3, 4, extrapolatedBy: .repeat], 3)
                XCTAssertEqual(slice[4, 4, extrapolatedBy: .repeat], 1)
                
                XCTAssertEqual(slice[-6,  2, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(slice[-5,  2, extrapolatedBy: .repeat], 4)
                XCTAssertEqual(slice[-4,  2, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(slice[-3,  2, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(slice[-2,  2, extrapolatedBy: .repeat], 4)
                XCTAssertEqual(slice[-1,  2, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(slice[ 0,  2, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(slice[ 1,  2, extrapolatedBy: .repeat], 4)
                XCTAssertEqual(slice[ 2,  2, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(slice[ 3,  2, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(slice[ 4,  2, extrapolatedBy: .repeat], 4)
                XCTAssertEqual(slice[ 5,  2, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(slice[ 6,  2, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(slice[ 7,  2, extrapolatedBy: .repeat], 4)
                XCTAssertEqual(slice[ 8,  2, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(slice[ 9,  2, extrapolatedBy: .repeat], 6)
                XCTAssertEqual(slice[10,  2, extrapolatedBy: .repeat], 4)
                
                XCTAssertEqual(slice[ 2, -6, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(slice[ 2, -5, extrapolatedBy: .repeat], 2)
                XCTAssertEqual(slice[ 2, -4, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(slice[ 2, -3, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(slice[ 2, -2, extrapolatedBy: .repeat], 2)
                XCTAssertEqual(slice[ 2, -1, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(slice[ 2,  0, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(slice[ 2,  1, extrapolatedBy: .repeat], 2)
                XCTAssertEqual(slice[ 2,  2, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(slice[ 2,  3, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(slice[ 2,  4, extrapolatedBy: .repeat], 2)
                XCTAssertEqual(slice[ 2,  5, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(slice[ 2,  6, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(slice[ 2,  7, extrapolatedBy: .repeat], 2)
                XCTAssertEqual(slice[ 2,  8, extrapolatedBy: .repeat], 5)
                XCTAssertEqual(slice[ 2,  9, extrapolatedBy: .repeat], 8)
                XCTAssertEqual(slice[ 2, 10, extrapolatedBy: .repeat], 2)
                
                XCTAssertEqual(slice[-5, -5, extrapolatedBy: .repeat], 1)
                XCTAssertEqual(slice[ 9, -5, extrapolatedBy: .repeat], 3)
                XCTAssertEqual(slice[-5,  9, extrapolatedBy: .repeat], 7)
                XCTAssertEqual(slice[ 9,  9, extrapolatedBy: .repeat], 9)
                
                XCTAssertEqual(slice[-6, -6, extrapolatedBy: .repeat], 9)
                XCTAssertEqual(slice[10, -6, extrapolatedBy: .repeat], 7)
                XCTAssertEqual(slice[-6, 10, extrapolatedBy: .repeat], 3)
                XCTAssertEqual(slice[10, 10, extrapolatedBy: .repeat], 1)
            }
            
            do {
                XCTAssertEqual(slice[0, 0, extrapolatedBy: .reflection], 1)
                XCTAssertEqual(slice[1, 0, extrapolatedBy: .reflection], 1)
                XCTAssertEqual(slice[2, 0, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(slice[3, 0, extrapolatedBy: .reflection], 3)
                XCTAssertEqual(slice[4, 0, extrapolatedBy: .reflection], 3)
                
                XCTAssertEqual(slice[0, 1, extrapolatedBy: .reflection], 1)
                XCTAssertEqual(slice[1, 1, extrapolatedBy: .reflection], 1)
                XCTAssertEqual(slice[2, 1, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(slice[3, 1, extrapolatedBy: .reflection], 3)
                XCTAssertEqual(slice[4, 1, extrapolatedBy: .reflection], 3)
                
                XCTAssertEqual(slice[0, 2, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(slice[1, 2, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(slice[2, 2, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(slice[3, 2, extrapolatedBy: .reflection], 6)
                XCTAssertEqual(slice[4, 2, extrapolatedBy: .reflection], 6)
                
                XCTAssertEqual(slice[0, 3, extrapolatedBy: .reflection], 7)
                XCTAssertEqual(slice[1, 3, extrapolatedBy: .reflection], 7)
                XCTAssertEqual(slice[2, 3, extrapolatedBy: .reflection], 8)
                XCTAssertEqual(slice[3, 3, extrapolatedBy: .reflection], 9)
                XCTAssertEqual(slice[4, 3, extrapolatedBy: .reflection], 9)
                
                XCTAssertEqual(slice[0, 4, extrapolatedBy: .reflection], 7)
                XCTAssertEqual(slice[1, 4, extrapolatedBy: .reflection], 7)
                XCTAssertEqual(slice[2, 4, extrapolatedBy: .reflection], 8)
                XCTAssertEqual(slice[3, 4, extrapolatedBy: .reflection], 9)
                XCTAssertEqual(slice[4, 4, extrapolatedBy: .reflection], 9)
                
                XCTAssertEqual(slice[-6,  2, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(slice[-5,  2, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(slice[-4,  2, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(slice[-3,  2, extrapolatedBy: .reflection], 6)
                XCTAssertEqual(slice[-2,  2, extrapolatedBy: .reflection], 6)
                XCTAssertEqual(slice[-1,  2, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(slice[ 0,  2, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(slice[ 1,  2, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(slice[ 2,  2, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(slice[ 3,  2, extrapolatedBy: .reflection], 6)
                XCTAssertEqual(slice[ 4,  2, extrapolatedBy: .reflection], 6)
                XCTAssertEqual(slice[ 5,  2, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(slice[ 6,  2, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(slice[ 7,  2, extrapolatedBy: .reflection], 4)
                XCTAssertEqual(slice[ 8,  2, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(slice[ 9,  2, extrapolatedBy: .reflection], 6)
                XCTAssertEqual(slice[10,  2, extrapolatedBy: .reflection], 6)
                
                XCTAssertEqual(slice[ 2, -6, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(slice[ 2, -5, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(slice[ 2, -4, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(slice[ 2, -3, extrapolatedBy: .reflection], 8)
                XCTAssertEqual(slice[ 2, -2, extrapolatedBy: .reflection], 8)
                XCTAssertEqual(slice[ 2, -1, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(slice[ 2,  0, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(slice[ 2,  1, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(slice[ 2,  2, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(slice[ 2,  3, extrapolatedBy: .reflection], 8)
                XCTAssertEqual(slice[ 2,  4, extrapolatedBy: .reflection], 8)
                XCTAssertEqual(slice[ 2,  5, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(slice[ 2,  6, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(slice[ 2,  7, extrapolatedBy: .reflection], 2)
                XCTAssertEqual(slice[ 2,  8, extrapolatedBy: .reflection], 5)
                XCTAssertEqual(slice[ 2,  9, extrapolatedBy: .reflection], 8)
                XCTAssertEqual(slice[ 2, 10, extrapolatedBy: .reflection], 8)
                
                XCTAssertEqual(slice[-5, -5, extrapolatedBy: .reflection], 1)
                XCTAssertEqual(slice[ 9, -5, extrapolatedBy: .reflection], 3)
                XCTAssertEqual(slice[-5,  9, extrapolatedBy: .reflection], 7)
                XCTAssertEqual(slice[ 9,  9, extrapolatedBy: .reflection], 9)
                
                XCTAssertEqual(slice[-6, -6, extrapolatedBy: .reflection], 1)
                XCTAssertEqual(slice[10, -6, extrapolatedBy: .reflection], 3)
                XCTAssertEqual(slice[-6, 10, extrapolatedBy: .reflection], 7)
                XCTAssertEqual(slice[10, 10, extrapolatedBy: .reflection], 9)
            }
        }
    }
    
    func testSubscriptRangeWithExtrapolation() {
        do {
            let image = Image<UInt8>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ])
            var slice = image[-4...6, -3...4, extrapolatedBy: .reflection]
            
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
            let a = image[-1 ... 0, -1...0, extrapolatedBy: .repeat]
            
            XCTAssertEqual(a, AnyImage<UInt8>(width: 2, height: 2, pixels: [
                6, 4,
                3, 1,
            ]))
            
            var b = a[-4 ... -1, -3 ... -1, extrapolatedBy: .reflection]
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
