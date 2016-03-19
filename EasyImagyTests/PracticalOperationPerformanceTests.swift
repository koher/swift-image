import XCTest
import EasyImagy

private let WIDTH = 320
private let HEIGHT = 240

private func getImage() -> Image<RGBA> {
    return Image(width: WIDTH, height: HEIGHT, pixels: (0..<(WIDTH * HEIGHT)).map { RGBA(gray: UInt8($0 % 256)) })
}

class PracticalOperationPerformanceTests: XCTestCase {
    func testGrayscale() {
        let image = getImage()
        
        measureBlock {
            image.map { (pixel: RGBA) -> RGBA in
                RGBA(gray: pixel.gray)
            }
        }
    }
    
    func testBinarization() {
        let image = getImage()
        
        measureBlock {
            _ = image.map { (pixel: RGBA) -> RGBA in
                pixel.gray < 128 ? RGBA.black : RGBA.white
            }
        }
    }
    
    func testMeanFilter() {
        let image = getImage()
        let filter = Image<Float>(width: 3, height: 3, pixel: 1.0 / 9.0)

        measureBlock {
            _ = image.convoluted(filter)
        }
    }
    
    func testIdenticalConvolution() {
        let kernel = Image<Int>(width: 1, height: 1, pixels: [1])
        let image = getImage()
        
        measureBlock {
            _ = image.convoluted(kernel)
        }
    }

    
    func testGaussianFilter() {
        let image = getImage()
        let kernel = Image<Int>(width: 5, height: 5, pixels: [
            1,  4,  6,  4, 1,
            4, 16, 24, 16, 4,
            6, 24, 36, 24, 6,
            4, 16, 24, 16, 4,
            1,  4,  6,  4, 1,
        ]).map { Float($0) / 256.0 }
        
        measureBlock {
            _ = image.convoluted(kernel)
        }
    }
}