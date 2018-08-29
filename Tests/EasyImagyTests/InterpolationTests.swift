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

        do {
            let image = Image<UInt8>(width: 2, height: 2, pixels: [
                64, 48,
                32, 16,
            ])
            
            do { // Nearest Neighbor
                XCTAssertEqual(image[0.0, 0.0, interpolation: .nearestNeighbor], image[0, 0])
                XCTAssertEqual(image[0.4, 0.0, interpolation: .nearestNeighbor], image[0, 0])
                XCTAssertEqual(image[0.6, 0.0, interpolation: .nearestNeighbor], image[1, 0])
                XCTAssertEqual(image[1.0, 0.0, interpolation: .nearestNeighbor], image[1, 0])
                
                XCTAssertEqual(image[0.0, 0.4, interpolation: .nearestNeighbor], image[0, 0])
                XCTAssertEqual(image[0.4, 0.4, interpolation: .nearestNeighbor], image[0, 0])
                XCTAssertEqual(image[0.6, 0.4, interpolation: .nearestNeighbor], image[1, 0])
                XCTAssertEqual(image[1.0, 0.4, interpolation: .nearestNeighbor], image[1, 0])
                
                XCTAssertEqual(image[0.0, 0.6, interpolation: .nearestNeighbor], image[0, 1])
                XCTAssertEqual(image[0.4, 0.6, interpolation: .nearestNeighbor], image[0, 1])
                XCTAssertEqual(image[0.6, 0.6, interpolation: .nearestNeighbor], image[1, 1])
                XCTAssertEqual(image[1.0, 0.6, interpolation: .nearestNeighbor], image[1, 1])
                
                XCTAssertEqual(image[0.0, 1.0, interpolation: .nearestNeighbor], image[0, 1])
                XCTAssertEqual(image[0.4, 1.0, interpolation: .nearestNeighbor], image[0, 1])
                XCTAssertEqual(image[0.6, 1.0, interpolation: .nearestNeighbor], image[1, 1])
                XCTAssertEqual(image[1.0, 1.0, interpolation: .nearestNeighbor], image[1, 1])
            }
            
            do { // Bilinear
                XCTAssertEqual(image[0.0,  0.0,  interpolation: .bilinear], 64)
                XCTAssertEqual(image[0.25, 0.0,  interpolation: .bilinear], 60)
                XCTAssertEqual(image[0.5,  0.0,  interpolation: .bilinear], 56)
                XCTAssertEqual(image[0.75, 0.0,  interpolation: .bilinear], 52)
                XCTAssertEqual(image[1.0,  0.0,  interpolation: .bilinear], 48)
                
                XCTAssertEqual(image[0.0,  0.25, interpolation: .bilinear], 56)
                XCTAssertEqual(image[0.25, 0.25, interpolation: .bilinear], 52)
                XCTAssertEqual(image[0.5,  0.25, interpolation: .bilinear], 48)
                XCTAssertEqual(image[0.75, 0.25, interpolation: .bilinear], 44)
                XCTAssertEqual(image[1.0,  0.25, interpolation: .bilinear], 40)
                
                XCTAssertEqual(image[0.0,  0.5,  interpolation: .bilinear], 48)
                XCTAssertEqual(image[0.25, 0.5,  interpolation: .bilinear], 44)
                XCTAssertEqual(image[0.5,  0.5,  interpolation: .bilinear], 40)
                XCTAssertEqual(image[0.75, 0.5,  interpolation: .bilinear], 36)
                XCTAssertEqual(image[1.0,  0.5,  interpolation: .bilinear], 32)
                
                XCTAssertEqual(image[0.0,  0.75, interpolation: .bilinear], 40)
                XCTAssertEqual(image[0.25, 0.75, interpolation: .bilinear], 36)
                XCTAssertEqual(image[0.5,  0.75, interpolation: .bilinear], 32)
                XCTAssertEqual(image[0.75, 0.75, interpolation: .bilinear], 28)
                XCTAssertEqual(image[1.0,  0.75, interpolation: .bilinear], 24)
                
                XCTAssertEqual(image[0.0,  1.0,  interpolation: .bilinear], 32)
                XCTAssertEqual(image[0.25, 1.0,  interpolation: .bilinear], 28)
                XCTAssertEqual(image[0.5,  1.0,  interpolation: .bilinear], 24)
                XCTAssertEqual(image[0.75, 1.0,  interpolation: .bilinear], 20)
                XCTAssertEqual(image[1.0,  1.0,  interpolation: .bilinear], 16)
            }
        }
        
        do {
            let image2 = Image<UInt8>(width: 4, height: 4, pixels: [
                99, 99, 99, 99,
                99, 64, 48, 99,
                99, 32, 16, 99,
                99, 99, 99, 99,
            ])
            let image = image2[1...2, 1...2]
            
            do { // Nearest Neighbor
                XCTAssertEqual(image[1.0, 1.0, interpolation: .nearestNeighbor], image2[1, 1])
                XCTAssertEqual(image[1.4, 1.0, interpolation: .nearestNeighbor], image2[1, 1])
                XCTAssertEqual(image[1.6, 1.0, interpolation: .nearestNeighbor], image2[2, 1])
                XCTAssertEqual(image[2.0, 1.0, interpolation: .nearestNeighbor], image2[2, 1])
                
                XCTAssertEqual(image[1.0, 1.4, interpolation: .nearestNeighbor], image2[1, 1])
                XCTAssertEqual(image[1.4, 1.4, interpolation: .nearestNeighbor], image2[1, 1])
                XCTAssertEqual(image[1.6, 1.4, interpolation: .nearestNeighbor], image2[2, 1])
                XCTAssertEqual(image[2.0, 1.4, interpolation: .nearestNeighbor], image2[2, 1])
                
                XCTAssertEqual(image[1.0, 1.6, interpolation: .nearestNeighbor], image2[1, 2])
                XCTAssertEqual(image[1.4, 1.6, interpolation: .nearestNeighbor], image2[1, 2])
                XCTAssertEqual(image[1.6, 1.6, interpolation: .nearestNeighbor], image2[2, 2])
                XCTAssertEqual(image[2.0, 1.6, interpolation: .nearestNeighbor], image2[2, 2])
                
                XCTAssertEqual(image[1.0, 2.0, interpolation: .nearestNeighbor], image2[1, 2])
                XCTAssertEqual(image[1.4, 2.0, interpolation: .nearestNeighbor], image2[1, 2])
                XCTAssertEqual(image[1.6, 2.0, interpolation: .nearestNeighbor], image2[2, 2])
                XCTAssertEqual(image[2.0, 2.0, interpolation: .nearestNeighbor], image2[2, 2])
            }
            
            do { // Bilinear
                XCTAssertEqual(image[1.0,  1.0,  interpolation: .bilinear], 64)
                XCTAssertEqual(image[1.25, 1.0,  interpolation: .bilinear], 60)
                XCTAssertEqual(image[1.5,  1.0,  interpolation: .bilinear], 56)
                XCTAssertEqual(image[1.75, 1.0,  interpolation: .bilinear], 52)
                XCTAssertEqual(image[2.0,  1.0,  interpolation: .bilinear], 48)
                
                XCTAssertEqual(image[1.0,  1.25, interpolation: .bilinear], 56)
                XCTAssertEqual(image[1.25, 1.25, interpolation: .bilinear], 52)
                XCTAssertEqual(image[1.5,  1.25, interpolation: .bilinear], 48)
                XCTAssertEqual(image[1.75, 1.25, interpolation: .bilinear], 44)
                XCTAssertEqual(image[2.0,  1.25, interpolation: .bilinear], 40)
                
                XCTAssertEqual(image[1.0,  1.5,  interpolation: .bilinear], 48)
                XCTAssertEqual(image[1.25, 1.5,  interpolation: .bilinear], 44)
                XCTAssertEqual(image[1.5,  1.5,  interpolation: .bilinear], 40)
                XCTAssertEqual(image[1.75, 1.5,  interpolation: .bilinear], 36)
                XCTAssertEqual(image[2.0,  1.5,  interpolation: .bilinear], 32)
                
                XCTAssertEqual(image[1.0,  1.75, interpolation: .bilinear], 40)
                XCTAssertEqual(image[1.25, 1.75, interpolation: .bilinear], 36)
                XCTAssertEqual(image[1.5,  1.75, interpolation: .bilinear], 32)
                XCTAssertEqual(image[1.75, 1.75, interpolation: .bilinear], 28)
                XCTAssertEqual(image[2.0,  1.75, interpolation: .bilinear], 24)
                
                XCTAssertEqual(image[1.0,  2.0,  interpolation: .bilinear], 32)
                XCTAssertEqual(image[1.25, 2.0,  interpolation: .bilinear], 28)
                XCTAssertEqual(image[1.5,  2.0,  interpolation: .bilinear], 24)
                XCTAssertEqual(image[1.75, 2.0,  interpolation: .bilinear], 20)
                XCTAssertEqual(image[2.0,  2.0,  interpolation: .bilinear], 16)
            }
        }
    }
    
    func testSubscriptInterpolationWithExtrapolation() {
        do {
            let image = Image<UInt8>(width: 2, height: 2, pixels: [
                64, 48,
                32, 16,
            ])
         
            XCTAssertEqual(image[-1.0,  -1.0,  interpolation: .bilinear, extrapolation: .repeat], 16)
            XCTAssertEqual(image[-0.75, -1.0,  interpolation: .bilinear, extrapolation: .repeat], 20)
            XCTAssertEqual(image[-0.5,  -1.0,  interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[-0.25, -1.0,  interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[ 0.0,  -1.0,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[ 0.25, -1.0,  interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[ 0.5,  -1.0,  interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[ 0.75, -1.0,  interpolation: .bilinear, extrapolation: .repeat], 20)
            XCTAssertEqual(image[ 1.0,  -1.0,  interpolation: .bilinear, extrapolation: .repeat], 16)
            XCTAssertEqual(image[ 1.25, -1.0,  interpolation: .bilinear, extrapolation: .repeat], 20)
            XCTAssertEqual(image[ 1.5,  -1.0,  interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[ 1.75, -1.0,  interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[ 2.0,  -1.0,  interpolation: .bilinear, extrapolation: .repeat], 32)
            
            XCTAssertEqual(image[-1.0,  -0.75, interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[-0.75, -0.75, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[-0.5,  -0.75, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[-0.25, -0.75, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[ 0.0,  -0.75, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[ 0.25, -0.75, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[ 0.5,  -0.75, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[ 0.75, -0.75, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[ 1.0,  -0.75, interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[ 1.25, -0.75, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[ 1.5,  -0.75, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[ 1.75, -0.75, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[ 2.0,  -0.75, interpolation: .bilinear, extrapolation: .repeat], 40)
            
            XCTAssertEqual(image[-1.0,  -0.5,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[-0.75, -0.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[-0.5,  -0.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[-0.25, -0.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[ 0.0,  -0.5,  interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[ 0.25, -0.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[ 0.5,  -0.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[ 0.75, -0.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[ 1.0,  -0.5,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[ 1.25, -0.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[ 1.5,  -0.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[ 1.75, -0.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[ 2.0,  -0.5,  interpolation: .bilinear, extrapolation: .repeat], 48)
            
            XCTAssertEqual(image[-1.0,  -0.25, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[-0.75, -0.25, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[-0.5,  -0.25, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[-0.25, -0.25, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[ 0.0,  -0.25, interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[ 0.25, -0.25, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[ 0.5,  -0.25, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[ 0.75, -0.25, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[ 1.0,  -0.25, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[ 1.25, -0.25, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[ 1.5,  -0.25, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[ 1.75, -0.25, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[ 2.0,  -0.25, interpolation: .bilinear, extrapolation: .repeat], 56)
            
            XCTAssertEqual(image[-1.0,   0.0,  interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[-0.75,  0.0,  interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[-0.5,   0.0,  interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[-0.25,  0.0,  interpolation: .bilinear, extrapolation: .repeat], 60)
            XCTAssertEqual(image[ 0.0,   0.0,  interpolation: .bilinear, extrapolation: .repeat], 64)
            XCTAssertEqual(image[ 0.25,  0.0,  interpolation: .bilinear, extrapolation: .repeat], 60)
            XCTAssertEqual(image[ 0.5,   0.0,  interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[ 0.75,  0.0,  interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[ 1.0,   0.0,  interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[ 1.25,  0.0,  interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[ 1.5,   0.0,  interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[ 1.75,  0.0,  interpolation: .bilinear, extrapolation: .repeat], 60)
            XCTAssertEqual(image[ 2.0,   0.0,  interpolation: .bilinear, extrapolation: .repeat], 64)
            
            XCTAssertEqual(image[-1.0,   0.25, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[-0.75,  0.25, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[-0.5,   0.25, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[-0.25,  0.25, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[ 0.0,   0.25, interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[ 0.25,  0.25, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[ 0.5,   0.25, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[ 0.75,  0.25, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[ 1.0,   0.25, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[ 1.25,  0.25, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[ 1.5,   0.25, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[ 1.75,  0.25, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[ 2.0,   0.25, interpolation: .bilinear, extrapolation: .repeat], 56)
            
            XCTAssertEqual(image[-1.0,   0.5,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[-0.75,  0.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[-0.5,   0.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[-0.25,  0.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[ 0.0,   0.5,  interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[ 0.25,  0.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[ 0.5,   0.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[ 0.75,  0.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[ 1.0,   0.5,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[ 1.25,  0.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[ 1.5,   0.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[ 1.75,  0.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[ 2.0,   0.5,  interpolation: .bilinear, extrapolation: .repeat], 48)
            
            XCTAssertEqual(image[-1.0,   0.75, interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[-0.75,  0.75, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[-0.5,   0.75, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[-0.25,  0.75, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[ 0.0,   0.75, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[ 0.25,  0.75, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[ 0.5,   0.75, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[ 0.75,  0.75, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[ 1.0,   0.75, interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[ 1.25,  0.75, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[ 1.5,   0.75, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[ 1.75,  0.75, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[ 2.0,   0.75, interpolation: .bilinear, extrapolation: .repeat], 40)
            
            XCTAssertEqual(image[-1.0,   1.0,  interpolation: .bilinear, extrapolation: .repeat], 16)
            XCTAssertEqual(image[-0.75,  1.0,  interpolation: .bilinear, extrapolation: .repeat], 20)
            XCTAssertEqual(image[-0.5,   1.0,  interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[-0.25,  1.0,  interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[ 0.0,   1.0,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[ 0.25,  1.0,  interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[ 0.5,   1.0,  interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[ 0.75,  1.0,  interpolation: .bilinear, extrapolation: .repeat], 20)
            XCTAssertEqual(image[ 1.0,   1.0,  interpolation: .bilinear, extrapolation: .repeat], 16)
            XCTAssertEqual(image[ 1.25,  1.0,  interpolation: .bilinear, extrapolation: .repeat], 20)
            XCTAssertEqual(image[ 1.5,   1.0,  interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[ 1.75,  1.0,  interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[ 2.0,   1.0,  interpolation: .bilinear, extrapolation: .repeat], 32)
            
            XCTAssertEqual(image[-1.0,   1.25, interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[-0.75,  1.25, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[-0.5,   1.25, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[-0.25,  1.25, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[ 0.0,   1.25, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[ 0.25,  1.25, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[ 0.5,   1.25, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[ 0.75,  1.25, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[ 1.0,   1.25, interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[ 1.25,  1.25, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[ 1.5,   1.25, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[ 1.75,  1.25, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[ 2.0,   1.25, interpolation: .bilinear, extrapolation: .repeat], 40)
            
            XCTAssertEqual(image[-1.0,   1.5,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[-0.75,  1.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[-0.5,   1.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[-0.25,  1.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[ 0.0,   1.5,  interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[ 0.25,  1.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[ 0.5,   1.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[ 0.75,  1.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[ 1.0,   1.5,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[ 1.25,  1.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[ 1.5,   1.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[ 1.75,  1.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[ 2.0,   1.5,  interpolation: .bilinear, extrapolation: .repeat], 48)
            
            XCTAssertEqual(image[-1.0,   1.75, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[-0.75,  1.75, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[-0.5,   1.75, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[-0.25,  1.75, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[ 0.0,   1.75, interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[ 0.25,  1.75, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[ 0.5,   1.75, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[ 0.75,  1.75, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[ 1.0,   1.75, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[ 1.25,  1.75, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[ 1.5,   1.75, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[ 1.75,  1.75, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[ 2.0,   1.75, interpolation: .bilinear, extrapolation: .repeat], 56)
            
            XCTAssertEqual(image[-1.0,   2.0,  interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[-0.75,  2.0,  interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[-0.5,   2.0,  interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[-0.25,  2.0,  interpolation: .bilinear, extrapolation: .repeat], 60)
            XCTAssertEqual(image[ 0.0,   2.0,  interpolation: .bilinear, extrapolation: .repeat], 64)
            XCTAssertEqual(image[ 0.25,  2.0,  interpolation: .bilinear, extrapolation: .repeat], 60)
            XCTAssertEqual(image[ 0.5,   2.0,  interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[ 0.75,  2.0,  interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[ 1.0,   2.0,  interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[ 1.25,  2.0,  interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[ 1.5,   2.0,  interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[ 1.75,  2.0,  interpolation: .bilinear, extrapolation: .repeat], 60)
            XCTAssertEqual(image[ 2.0,   2.0,  interpolation: .bilinear, extrapolation: .repeat], 64)
        }
        
        do {
            let image2 = Image<UInt8>(width: 4, height: 4, pixels: [
                99, 99, 99, 99,
                99, 64, 48, 99,
                99, 32, 16, 99,
                99, 99, 99, 99,
            ])
            let image = image2[1...2, 1...2]
            
            XCTAssertEqual(image[0.0,  0.0,  interpolation: .bilinear, extrapolation: .repeat], 16)
            XCTAssertEqual(image[0.25, 0.0,  interpolation: .bilinear, extrapolation: .repeat], 20)
            XCTAssertEqual(image[0.5,  0.0,  interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[0.75, 0.0,  interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[1.0,  0.0,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[1.25, 0.0,  interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[1.5,  0.0,  interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[1.75, 0.0,  interpolation: .bilinear, extrapolation: .repeat], 20)
            XCTAssertEqual(image[2.0,  0.0,  interpolation: .bilinear, extrapolation: .repeat], 16)
            XCTAssertEqual(image[2.25, 0.0,  interpolation: .bilinear, extrapolation: .repeat], 20)
            XCTAssertEqual(image[2.5,  0.0,  interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[2.75, 0.0,  interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[3.0,  0.0,  interpolation: .bilinear, extrapolation: .repeat], 32)
            
            XCTAssertEqual(image[0.0,  0.25, interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[0.25, 0.25, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[0.5,  0.25, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[0.75, 0.25, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[1.0,  0.25, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[1.25, 0.25, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[1.5,  0.25, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[1.75, 0.25, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[2.0,  0.25, interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[2.25, 0.25, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[2.5,  0.25, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[2.75, 0.25, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[3.0,  0.25, interpolation: .bilinear, extrapolation: .repeat], 40)
            
            XCTAssertEqual(image[0.0,  0.5,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[0.25, 0.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[0.5,  0.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[0.75, 0.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[1.0,  0.5,  interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[1.25, 0.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[1.5,  0.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[1.75, 0.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[2.0,  0.5,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[2.25, 0.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[2.5,  0.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[2.75, 0.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[3.0,  0.5,  interpolation: .bilinear, extrapolation: .repeat], 48)
            
            XCTAssertEqual(image[0.0,  0.75, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[0.25, 0.75, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[0.5,  0.75, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[0.75, 0.75, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[1.0,  0.75, interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[1.25, 0.75, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[1.5,  0.75, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[1.75, 0.75, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[2.0,  0.75, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[2.25, 0.75, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[2.5,  0.75, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[2.75, 0.75, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[3.0,  0.75, interpolation: .bilinear, extrapolation: .repeat], 56)
            
            XCTAssertEqual(image[0.0,  1.0,  interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[0.25, 1.0,  interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[0.5,  1.0,  interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[0.75, 1.0,  interpolation: .bilinear, extrapolation: .repeat], 60)
            XCTAssertEqual(image[1.0,  1.0,  interpolation: .bilinear, extrapolation: .repeat], 64)
            XCTAssertEqual(image[1.25, 1.0,  interpolation: .bilinear, extrapolation: .repeat], 60)
            XCTAssertEqual(image[1.5,  1.0,  interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[1.75, 1.0,  interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[2.0,  1.0,  interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[2.25, 1.0,  interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[2.5,  1.0,  interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[2.75, 1.0,  interpolation: .bilinear, extrapolation: .repeat], 60)
            XCTAssertEqual(image[3.0,  1.0,  interpolation: .bilinear, extrapolation: .repeat], 64)
            
            XCTAssertEqual(image[0.0,  1.25, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[0.25, 1.25, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[0.5,  1.25, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[0.75, 1.25, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[1.0,  1.25, interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[1.25, 1.25, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[1.5,  1.25, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[1.75, 1.25, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[2.0,  1.25, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[2.25, 1.25, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[2.5,  1.25, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[2.75, 1.25, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[3.0,  1.25, interpolation: .bilinear, extrapolation: .repeat], 56)
            
            XCTAssertEqual(image[0.0,  1.5,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[0.25, 1.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[0.5,  1.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[0.75, 1.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[1.0,  1.5,  interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[1.25, 1.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[1.5,  1.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[1.75, 1.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[2.0,  1.5,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[2.25, 1.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[2.5,  1.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[2.75, 1.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[3.0,  1.5,  interpolation: .bilinear, extrapolation: .repeat], 48)
            
            XCTAssertEqual(image[0.0,  1.75, interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[0.25, 1.75, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[0.5,  1.75, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[0.75, 1.75, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[1.0,  1.75, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[1.25, 1.75, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[1.5,  1.75, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[1.75, 1.75, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[2.0,  1.75, interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[2.25, 1.75, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[2.5,  1.75, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[2.75, 1.75, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[3.0,  1.75, interpolation: .bilinear, extrapolation: .repeat], 40)
            
            XCTAssertEqual(image[0.0,  2.0,  interpolation: .bilinear, extrapolation: .repeat], 16)
            XCTAssertEqual(image[0.25, 2.0,  interpolation: .bilinear, extrapolation: .repeat], 20)
            XCTAssertEqual(image[0.5,  2.0,  interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[0.75, 2.0,  interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[1.0,  2.0,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[1.25, 2.0,  interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[1.5,  2.0,  interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[1.75, 2.0,  interpolation: .bilinear, extrapolation: .repeat], 20)
            XCTAssertEqual(image[2.0,  2.0,  interpolation: .bilinear, extrapolation: .repeat], 16)
            XCTAssertEqual(image[2.25, 2.0,  interpolation: .bilinear, extrapolation: .repeat], 20)
            XCTAssertEqual(image[2.5,  2.0,  interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[2.75, 2.0,  interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[3.0,  2.0,  interpolation: .bilinear, extrapolation: .repeat], 32)
            
            XCTAssertEqual(image[0.0,  2.25, interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[0.25, 2.25, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[0.5,  2.25, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[0.75, 2.25, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[1.0,  2.25, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[1.25, 2.25, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[1.5,  2.25, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[1.75, 2.25, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[2.0,  2.25, interpolation: .bilinear, extrapolation: .repeat], 24)
            XCTAssertEqual(image[2.25, 2.25, interpolation: .bilinear, extrapolation: .repeat], 28)
            XCTAssertEqual(image[2.5,  2.25, interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[2.75, 2.25, interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[3.0,  2.25, interpolation: .bilinear, extrapolation: .repeat], 40)
            
            XCTAssertEqual(image[0.0,  2.5,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[0.25, 2.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[0.5,  2.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[0.75, 2.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[1.0,  2.5,  interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[1.25, 2.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[1.5,  2.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[1.75, 2.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[2.0,  2.5,  interpolation: .bilinear, extrapolation: .repeat], 32)
            XCTAssertEqual(image[2.25, 2.5,  interpolation: .bilinear, extrapolation: .repeat], 36)
            XCTAssertEqual(image[2.5,  2.5,  interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[2.75, 2.5,  interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[3.0,  2.5,  interpolation: .bilinear, extrapolation: .repeat], 48)
            
            XCTAssertEqual(image[0.0,  2.75, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[0.25, 2.75, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[0.5,  2.75, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[0.75, 2.75, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[1.0,  2.75, interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[1.25, 2.75, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[1.5,  2.75, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[1.75, 2.75, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[2.0,  2.75, interpolation: .bilinear, extrapolation: .repeat], 40)
            XCTAssertEqual(image[2.25, 2.75, interpolation: .bilinear, extrapolation: .repeat], 44)
            XCTAssertEqual(image[2.5,  2.75, interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[2.75, 2.75, interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[3.0,  2.75, interpolation: .bilinear, extrapolation: .repeat], 56)
            
            XCTAssertEqual(image[0.0,  3.0,  interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[0.25, 3.0,  interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[0.5,  3.0,  interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[0.75, 3.0,  interpolation: .bilinear, extrapolation: .repeat], 60)
            XCTAssertEqual(image[1.0,  3.0,  interpolation: .bilinear, extrapolation: .repeat], 64)
            XCTAssertEqual(image[1.25, 3.0,  interpolation: .bilinear, extrapolation: .repeat], 60)
            XCTAssertEqual(image[1.5,  3.0,  interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[1.75, 3.0,  interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[2.0,  3.0,  interpolation: .bilinear, extrapolation: .repeat], 48)
            XCTAssertEqual(image[2.25, 3.0,  interpolation: .bilinear, extrapolation: .repeat], 52)
            XCTAssertEqual(image[2.5,  3.0,  interpolation: .bilinear, extrapolation: .repeat], 56)
            XCTAssertEqual(image[2.75, 3.0,  interpolation: .bilinear, extrapolation: .repeat], 60)
            XCTAssertEqual(image[3.0,  3.0,  interpolation: .bilinear, extrapolation: .repeat], 64)
        }
    }
    
    static var allTests = [
        ("testSubscriptInterpolation", testSubscriptInterpolation),
        ("testSubscriptInterpolationWithExtrapolation", testSubscriptInterpolationWithExtrapolation),
    ]
}
