import XCTest
import EasyImagy

class ExtrapolationTests: XCTestCase {
    func testSubscriptExtrapolation() {
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
                XCTAssertEqual(image[-1, -1, extrapolatedBy: .edging], 1)
                XCTAssertEqual(image[ 0, -1, extrapolatedBy: .edging], 1)
                XCTAssertEqual(image[ 1, -1, extrapolatedBy: .edging], 2)
                XCTAssertEqual(image[ 2, -1, extrapolatedBy: .edging], 3)
                XCTAssertEqual(image[ 3, -1, extrapolatedBy: .edging], 3)
                
                XCTAssertEqual(image[-1,  0, extrapolatedBy: .edging], 1)
                XCTAssertEqual(image[ 0,  0, extrapolatedBy: .edging], 1)
                XCTAssertEqual(image[ 1,  0, extrapolatedBy: .edging], 2)
                XCTAssertEqual(image[ 2,  0, extrapolatedBy: .edging], 3)
                XCTAssertEqual(image[ 3,  0, extrapolatedBy: .edging], 3)
                
                XCTAssertEqual(image[-1,  1, extrapolatedBy: .edging], 4)
                XCTAssertEqual(image[ 0,  1, extrapolatedBy: .edging], 4)
                XCTAssertEqual(image[ 1,  1, extrapolatedBy: .edging], 5)
                XCTAssertEqual(image[ 2,  1, extrapolatedBy: .edging], 6)
                XCTAssertEqual(image[ 3,  1, extrapolatedBy: .edging], 6)
                
                XCTAssertEqual(image[-1,  2, extrapolatedBy: .edging], 7)
                XCTAssertEqual(image[ 0,  2, extrapolatedBy: .edging], 7)
                XCTAssertEqual(image[ 1,  2, extrapolatedBy: .edging], 8)
                XCTAssertEqual(image[ 2,  2, extrapolatedBy: .edging], 9)
                XCTAssertEqual(image[ 3,  2, extrapolatedBy: .edging], 9)
                
                XCTAssertEqual(image[-1,  3, extrapolatedBy: .edging], 7)
                XCTAssertEqual(image[ 0,  3, extrapolatedBy: .edging], 7)
                XCTAssertEqual(image[ 1,  3, extrapolatedBy: .edging], 8)
                XCTAssertEqual(image[ 2,  3, extrapolatedBy: .edging], 9)
                XCTAssertEqual(image[ 3,  3, extrapolatedBy: .edging], 9)
            }
            
            do {
                XCTAssertEqual(image[-1, -1, extrapolatedBy: .repeating], 9)
                XCTAssertEqual(image[ 0, -1, extrapolatedBy: .repeating], 7)
                XCTAssertEqual(image[ 1, -1, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(image[ 2, -1, extrapolatedBy: .repeating], 9)
                XCTAssertEqual(image[ 3, -1, extrapolatedBy: .repeating], 7)
                
                XCTAssertEqual(image[-1,  0, extrapolatedBy: .repeating], 3)
                XCTAssertEqual(image[ 0,  0, extrapolatedBy: .repeating], 1)
                XCTAssertEqual(image[ 1,  0, extrapolatedBy: .repeating], 2)
                XCTAssertEqual(image[ 2,  0, extrapolatedBy: .repeating], 3)
                XCTAssertEqual(image[ 3,  0, extrapolatedBy: .repeating], 1)
                
                XCTAssertEqual(image[-1,  1, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(image[ 0,  1, extrapolatedBy: .repeating], 4)
                XCTAssertEqual(image[ 1,  1, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(image[ 2,  1, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(image[ 3,  1, extrapolatedBy: .repeating], 4)
                
                XCTAssertEqual(image[-1,  2, extrapolatedBy: .repeating], 9)
                XCTAssertEqual(image[ 0,  2, extrapolatedBy: .repeating], 7)
                XCTAssertEqual(image[ 1,  2, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(image[ 2,  2, extrapolatedBy: .repeating], 9)
                XCTAssertEqual(image[ 3,  2, extrapolatedBy: .repeating], 7)
                
                XCTAssertEqual(image[-1,  3, extrapolatedBy: .repeating], 3)
                XCTAssertEqual(image[ 0,  3, extrapolatedBy: .repeating], 1)
                XCTAssertEqual(image[ 1,  3, extrapolatedBy: .repeating], 2)
                XCTAssertEqual(image[ 2,  3, extrapolatedBy: .repeating], 3)
                XCTAssertEqual(image[ 3,  3, extrapolatedBy: .repeating], 1)
                
                XCTAssertEqual(image[-7,  1, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(image[-6,  1, extrapolatedBy: .repeating], 4)
                XCTAssertEqual(image[-5,  1, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(image[-4,  1, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(image[-3,  1, extrapolatedBy: .repeating], 4)
                XCTAssertEqual(image[-2,  1, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(image[-1,  1, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(image[ 0,  1, extrapolatedBy: .repeating], 4)
                XCTAssertEqual(image[ 1,  1, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(image[ 2,  1, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(image[ 3,  1, extrapolatedBy: .repeating], 4)
                XCTAssertEqual(image[ 4,  1, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(image[ 5,  1, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(image[ 6,  1, extrapolatedBy: .repeating], 4)
                XCTAssertEqual(image[ 7,  1, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(image[ 8,  1, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(image[ 9,  1, extrapolatedBy: .repeating], 4)
                
                XCTAssertEqual(image[ 1, -7, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(image[ 1, -6, extrapolatedBy: .repeating], 2)
                XCTAssertEqual(image[ 1, -5, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(image[ 1, -4, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(image[ 1, -3, extrapolatedBy: .repeating], 2)
                XCTAssertEqual(image[ 1, -2, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(image[ 1, -1, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(image[ 1,  0, extrapolatedBy: .repeating], 2)
                XCTAssertEqual(image[ 1,  1, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(image[ 1,  2, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(image[ 1,  3, extrapolatedBy: .repeating], 2)
                XCTAssertEqual(image[ 1,  4, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(image[ 1,  5, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(image[ 1,  6, extrapolatedBy: .repeating], 2)
                XCTAssertEqual(image[ 1,  7, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(image[ 1,  8, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(image[ 1,  9, extrapolatedBy: .repeating], 2)
                
                XCTAssertEqual(image[-6, -6, extrapolatedBy: .repeating], 1)
                XCTAssertEqual(image[ 8, -6, extrapolatedBy: .repeating], 3)
                XCTAssertEqual(image[-6,  8, extrapolatedBy: .repeating], 7)
                XCTAssertEqual(image[ 8,  8, extrapolatedBy: .repeating], 9)
                
                XCTAssertEqual(image[-7, -7, extrapolatedBy: .repeating], 9)
                XCTAssertEqual(image[ 9, -7, extrapolatedBy: .repeating], 7)
                XCTAssertEqual(image[-7,  9, extrapolatedBy: .repeating], 3)
                XCTAssertEqual(image[ 9,  9, extrapolatedBy: .repeating], 1)
            }
            
            do {
                XCTAssertEqual(image[-1, -1, extrapolatedBy: .mirroring], 1)
                XCTAssertEqual(image[ 0, -1, extrapolatedBy: .mirroring], 1)
                XCTAssertEqual(image[ 1, -1, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(image[ 2, -1, extrapolatedBy: .mirroring], 3)
                XCTAssertEqual(image[ 3, -1, extrapolatedBy: .mirroring], 3)
                
                XCTAssertEqual(image[-1,  0, extrapolatedBy: .mirroring], 1)
                XCTAssertEqual(image[ 0,  0, extrapolatedBy: .mirroring], 1)
                XCTAssertEqual(image[ 1,  0, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(image[ 2,  0, extrapolatedBy: .mirroring], 3)
                XCTAssertEqual(image[ 3,  0, extrapolatedBy: .mirroring], 3)
                
                XCTAssertEqual(image[-1,  1, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(image[ 0,  1, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(image[ 1,  1, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(image[ 2,  1, extrapolatedBy: .mirroring], 6)
                XCTAssertEqual(image[ 3,  1, extrapolatedBy: .mirroring], 6)
                
                XCTAssertEqual(image[-1,  2, extrapolatedBy: .mirroring], 7)
                XCTAssertEqual(image[ 0,  2, extrapolatedBy: .mirroring], 7)
                XCTAssertEqual(image[ 1,  2, extrapolatedBy: .mirroring], 8)
                XCTAssertEqual(image[ 2,  2, extrapolatedBy: .mirroring], 9)
                XCTAssertEqual(image[ 3,  2, extrapolatedBy: .mirroring], 9)
                
                XCTAssertEqual(image[-1,  3, extrapolatedBy: .mirroring], 7)
                XCTAssertEqual(image[ 0,  3, extrapolatedBy: .mirroring], 7)
                XCTAssertEqual(image[ 1,  3, extrapolatedBy: .mirroring], 8)
                XCTAssertEqual(image[ 2,  3, extrapolatedBy: .mirroring], 9)
                XCTAssertEqual(image[ 3,  3, extrapolatedBy: .mirroring], 9)
                
                XCTAssertEqual(image[-7,  1, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(image[-6,  1, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(image[-5,  1, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(image[-4,  1, extrapolatedBy: .mirroring], 6)
                XCTAssertEqual(image[-3,  1, extrapolatedBy: .mirroring], 6)
                XCTAssertEqual(image[-2,  1, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(image[-1,  1, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(image[ 0,  1, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(image[ 1,  1, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(image[ 2,  1, extrapolatedBy: .mirroring], 6)
                XCTAssertEqual(image[ 3,  1, extrapolatedBy: .mirroring], 6)
                XCTAssertEqual(image[ 4,  1, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(image[ 5,  1, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(image[ 6,  1, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(image[ 7,  1, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(image[ 8,  1, extrapolatedBy: .mirroring], 6)
                XCTAssertEqual(image[ 9,  1, extrapolatedBy: .mirroring], 6)
                
                XCTAssertEqual(image[ 1, -7, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(image[ 1, -6, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(image[ 1, -5, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(image[ 1, -4, extrapolatedBy: .mirroring], 8)
                XCTAssertEqual(image[ 1, -3, extrapolatedBy: .mirroring], 8)
                XCTAssertEqual(image[ 1, -2, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(image[ 1, -1, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(image[ 1,  0, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(image[ 1,  1, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(image[ 1,  2, extrapolatedBy: .mirroring], 8)
                XCTAssertEqual(image[ 1,  3, extrapolatedBy: .mirroring], 8)
                XCTAssertEqual(image[ 1,  4, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(image[ 1,  5, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(image[ 1,  6, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(image[ 1,  7, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(image[ 1,  8, extrapolatedBy: .mirroring], 8)
                XCTAssertEqual(image[ 1,  9, extrapolatedBy: .mirroring], 8)
                
                XCTAssertEqual(image[-6, -6, extrapolatedBy: .mirroring], 1)
                XCTAssertEqual(image[ 8, -6, extrapolatedBy: .mirroring], 3)
                XCTAssertEqual(image[-6,  8, extrapolatedBy: .mirroring], 7)
                XCTAssertEqual(image[ 8,  8, extrapolatedBy: .mirroring], 9)
                
                XCTAssertEqual(image[-7, -7, extrapolatedBy: .mirroring], 1)
                XCTAssertEqual(image[ 9, -7, extrapolatedBy: .mirroring], 3)
                XCTAssertEqual(image[-7,  9, extrapolatedBy: .mirroring], 7)
                XCTAssertEqual(image[ 9,  9, extrapolatedBy: .mirroring], 9)
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
                XCTAssertEqual(slice[0, 0, extrapolatedBy: .edging], 1)
                XCTAssertEqual(slice[1, 0, extrapolatedBy: .edging], 1)
                XCTAssertEqual(slice[2, 0, extrapolatedBy: .edging], 2)
                XCTAssertEqual(slice[3, 0, extrapolatedBy: .edging], 3)
                XCTAssertEqual(slice[4, 0, extrapolatedBy: .edging], 3)
                
                XCTAssertEqual(slice[0, 1, extrapolatedBy: .edging], 1)
                XCTAssertEqual(slice[1, 1, extrapolatedBy: .edging], 1)
                XCTAssertEqual(slice[2, 1, extrapolatedBy: .edging], 2)
                XCTAssertEqual(slice[3, 1, extrapolatedBy: .edging], 3)
                XCTAssertEqual(slice[4, 1, extrapolatedBy: .edging], 3)
                
                XCTAssertEqual(slice[0, 2, extrapolatedBy: .edging], 4)
                XCTAssertEqual(slice[1, 2, extrapolatedBy: .edging], 4)
                XCTAssertEqual(slice[2, 2, extrapolatedBy: .edging], 5)
                XCTAssertEqual(slice[3, 2, extrapolatedBy: .edging], 6)
                XCTAssertEqual(slice[4, 2, extrapolatedBy: .edging], 6)
                
                XCTAssertEqual(slice[0, 3, extrapolatedBy: .edging], 7)
                XCTAssertEqual(slice[1, 3, extrapolatedBy: .edging], 7)
                XCTAssertEqual(slice[2, 3, extrapolatedBy: .edging], 8)
                XCTAssertEqual(slice[3, 3, extrapolatedBy: .edging], 9)
                XCTAssertEqual(slice[4, 3, extrapolatedBy: .edging], 9)
                
                XCTAssertEqual(slice[0, 4, extrapolatedBy: .edging], 7)
                XCTAssertEqual(slice[1, 4, extrapolatedBy: .edging], 7)
                XCTAssertEqual(slice[2, 4, extrapolatedBy: .edging], 8)
                XCTAssertEqual(slice[3, 4, extrapolatedBy: .edging], 9)
                XCTAssertEqual(slice[4, 4, extrapolatedBy: .edging], 9)
            }
            
            do {
                XCTAssertEqual(slice[0, 0, extrapolatedBy: .repeating], 9)
                XCTAssertEqual(slice[1, 0, extrapolatedBy: .repeating], 7)
                XCTAssertEqual(slice[2, 0, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(slice[3, 0, extrapolatedBy: .repeating], 9)
                XCTAssertEqual(slice[4, 0, extrapolatedBy: .repeating], 7)
                
                XCTAssertEqual(slice[0, 1, extrapolatedBy: .repeating], 3)
                XCTAssertEqual(slice[1, 1, extrapolatedBy: .repeating], 1)
                XCTAssertEqual(slice[2, 1, extrapolatedBy: .repeating], 2)
                XCTAssertEqual(slice[3, 1, extrapolatedBy: .repeating], 3)
                XCTAssertEqual(slice[4, 1, extrapolatedBy: .repeating], 1)
                
                XCTAssertEqual(slice[0, 2, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(slice[1, 2, extrapolatedBy: .repeating], 4)
                XCTAssertEqual(slice[2, 2, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(slice[3, 2, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(slice[4, 2, extrapolatedBy: .repeating], 4)
                
                XCTAssertEqual(slice[0, 3, extrapolatedBy: .repeating], 9)
                XCTAssertEqual(slice[1, 3, extrapolatedBy: .repeating], 7)
                XCTAssertEqual(slice[2, 3, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(slice[3, 3, extrapolatedBy: .repeating], 9)
                XCTAssertEqual(slice[4, 3, extrapolatedBy: .repeating], 7)
                
                XCTAssertEqual(slice[0, 4, extrapolatedBy: .repeating], 3)
                XCTAssertEqual(slice[1, 4, extrapolatedBy: .repeating], 1)
                XCTAssertEqual(slice[2, 4, extrapolatedBy: .repeating], 2)
                XCTAssertEqual(slice[3, 4, extrapolatedBy: .repeating], 3)
                XCTAssertEqual(slice[4, 4, extrapolatedBy: .repeating], 1)
                
                XCTAssertEqual(slice[-6,  2, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(slice[-5,  2, extrapolatedBy: .repeating], 4)
                XCTAssertEqual(slice[-4,  2, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(slice[-3,  2, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(slice[-2,  2, extrapolatedBy: .repeating], 4)
                XCTAssertEqual(slice[-1,  2, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(slice[ 0,  2, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(slice[ 1,  2, extrapolatedBy: .repeating], 4)
                XCTAssertEqual(slice[ 2,  2, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(slice[ 3,  2, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(slice[ 4,  2, extrapolatedBy: .repeating], 4)
                XCTAssertEqual(slice[ 5,  2, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(slice[ 6,  2, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(slice[ 7,  2, extrapolatedBy: .repeating], 4)
                XCTAssertEqual(slice[ 8,  2, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(slice[ 9,  2, extrapolatedBy: .repeating], 6)
                XCTAssertEqual(slice[10,  2, extrapolatedBy: .repeating], 4)
                
                XCTAssertEqual(slice[ 2, -6, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(slice[ 2, -5, extrapolatedBy: .repeating], 2)
                XCTAssertEqual(slice[ 2, -4, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(slice[ 2, -3, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(slice[ 2, -2, extrapolatedBy: .repeating], 2)
                XCTAssertEqual(slice[ 2, -1, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(slice[ 2,  0, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(slice[ 2,  1, extrapolatedBy: .repeating], 2)
                XCTAssertEqual(slice[ 2,  2, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(slice[ 2,  3, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(slice[ 2,  4, extrapolatedBy: .repeating], 2)
                XCTAssertEqual(slice[ 2,  5, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(slice[ 2,  6, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(slice[ 2,  7, extrapolatedBy: .repeating], 2)
                XCTAssertEqual(slice[ 2,  8, extrapolatedBy: .repeating], 5)
                XCTAssertEqual(slice[ 2,  9, extrapolatedBy: .repeating], 8)
                XCTAssertEqual(slice[ 2, 10, extrapolatedBy: .repeating], 2)
                
                XCTAssertEqual(slice[-5, -5, extrapolatedBy: .repeating], 1)
                XCTAssertEqual(slice[ 9, -5, extrapolatedBy: .repeating], 3)
                XCTAssertEqual(slice[-5,  9, extrapolatedBy: .repeating], 7)
                XCTAssertEqual(slice[ 9,  9, extrapolatedBy: .repeating], 9)
                
                XCTAssertEqual(slice[-6, -6, extrapolatedBy: .repeating], 9)
                XCTAssertEqual(slice[10, -6, extrapolatedBy: .repeating], 7)
                XCTAssertEqual(slice[-6, 10, extrapolatedBy: .repeating], 3)
                XCTAssertEqual(slice[10, 10, extrapolatedBy: .repeating], 1)
            }
            
            do {
                XCTAssertEqual(slice[0, 0, extrapolatedBy: .mirroring], 1)
                XCTAssertEqual(slice[1, 0, extrapolatedBy: .mirroring], 1)
                XCTAssertEqual(slice[2, 0, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(slice[3, 0, extrapolatedBy: .mirroring], 3)
                XCTAssertEqual(slice[4, 0, extrapolatedBy: .mirroring], 3)
                
                XCTAssertEqual(slice[0, 1, extrapolatedBy: .mirroring], 1)
                XCTAssertEqual(slice[1, 1, extrapolatedBy: .mirroring], 1)
                XCTAssertEqual(slice[2, 1, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(slice[3, 1, extrapolatedBy: .mirroring], 3)
                XCTAssertEqual(slice[4, 1, extrapolatedBy: .mirroring], 3)
                
                XCTAssertEqual(slice[0, 2, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(slice[1, 2, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(slice[2, 2, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(slice[3, 2, extrapolatedBy: .mirroring], 6)
                XCTAssertEqual(slice[4, 2, extrapolatedBy: .mirroring], 6)
                
                XCTAssertEqual(slice[0, 3, extrapolatedBy: .mirroring], 7)
                XCTAssertEqual(slice[1, 3, extrapolatedBy: .mirroring], 7)
                XCTAssertEqual(slice[2, 3, extrapolatedBy: .mirroring], 8)
                XCTAssertEqual(slice[3, 3, extrapolatedBy: .mirroring], 9)
                XCTAssertEqual(slice[4, 3, extrapolatedBy: .mirroring], 9)
                
                XCTAssertEqual(slice[0, 4, extrapolatedBy: .mirroring], 7)
                XCTAssertEqual(slice[1, 4, extrapolatedBy: .mirroring], 7)
                XCTAssertEqual(slice[2, 4, extrapolatedBy: .mirroring], 8)
                XCTAssertEqual(slice[3, 4, extrapolatedBy: .mirroring], 9)
                XCTAssertEqual(slice[4, 4, extrapolatedBy: .mirroring], 9)
                
                XCTAssertEqual(slice[-6,  2, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(slice[-5,  2, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(slice[-4,  2, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(slice[-3,  2, extrapolatedBy: .mirroring], 6)
                XCTAssertEqual(slice[-2,  2, extrapolatedBy: .mirroring], 6)
                XCTAssertEqual(slice[-1,  2, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(slice[ 0,  2, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(slice[ 1,  2, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(slice[ 2,  2, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(slice[ 3,  2, extrapolatedBy: .mirroring], 6)
                XCTAssertEqual(slice[ 4,  2, extrapolatedBy: .mirroring], 6)
                XCTAssertEqual(slice[ 5,  2, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(slice[ 6,  2, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(slice[ 7,  2, extrapolatedBy: .mirroring], 4)
                XCTAssertEqual(slice[ 8,  2, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(slice[ 9,  2, extrapolatedBy: .mirroring], 6)
                XCTAssertEqual(slice[10,  2, extrapolatedBy: .mirroring], 6)
                
                XCTAssertEqual(slice[ 2, -6, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(slice[ 2, -5, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(slice[ 2, -4, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(slice[ 2, -3, extrapolatedBy: .mirroring], 8)
                XCTAssertEqual(slice[ 2, -2, extrapolatedBy: .mirroring], 8)
                XCTAssertEqual(slice[ 2, -1, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(slice[ 2,  0, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(slice[ 2,  1, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(slice[ 2,  2, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(slice[ 2,  3, extrapolatedBy: .mirroring], 8)
                XCTAssertEqual(slice[ 2,  4, extrapolatedBy: .mirroring], 8)
                XCTAssertEqual(slice[ 2,  5, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(slice[ 2,  6, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(slice[ 2,  7, extrapolatedBy: .mirroring], 2)
                XCTAssertEqual(slice[ 2,  8, extrapolatedBy: .mirroring], 5)
                XCTAssertEqual(slice[ 2,  9, extrapolatedBy: .mirroring], 8)
                XCTAssertEqual(slice[ 2, 10, extrapolatedBy: .mirroring], 8)
                
                XCTAssertEqual(slice[-5, -5, extrapolatedBy: .mirroring], 1)
                XCTAssertEqual(slice[ 9, -5, extrapolatedBy: .mirroring], 3)
                XCTAssertEqual(slice[-5,  9, extrapolatedBy: .mirroring], 7)
                XCTAssertEqual(slice[ 9,  9, extrapolatedBy: .mirroring], 9)
                
                XCTAssertEqual(slice[-6, -6, extrapolatedBy: .mirroring], 1)
                XCTAssertEqual(slice[10, -6, extrapolatedBy: .mirroring], 3)
                XCTAssertEqual(slice[-6, 10, extrapolatedBy: .mirroring], 7)
                XCTAssertEqual(slice[10, 10, extrapolatedBy: .mirroring], 9)
            }
        }
    }
}
