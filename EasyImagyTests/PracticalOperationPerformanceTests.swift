import XCTest
import EasyImagy

private let WIDTH = 320
private let HEIGHT = 240

private func getImage() -> Image {
    return Image(width: WIDTH, height: HEIGHT, pixels: (0..<(WIDTH * HEIGHT)).map { Pixel(gray: UInt8($0 % 256)) })
}

class PracticalOperationPerformanceTests: XCTestCase {
    func testBinarization() {
        let image = getImage()
        
        measureBlock {
            _ = image.map { (pixel: Pixel) -> Pixel in
                pixel.gray < 128 ? Pixel.black : Pixel.white
            }
        }
    }
    
    func testMeanFilter() {
        let image = getImage()

        measureBlock {
            _ = image.map { (x: Int, y: Int, pixel: Pixel) -> Pixel in
                Pixel.mean(image[(x - 1)...(x + 1), (y - 1)...(y + 1)]) ?? pixel
            }
        }
    }
    
    // Temporary implementation (`zip` does not work correctly for the edges)
    func testGaussianFilter() {
        let weights = [
            1,  4,  6,  4, 1,
            4, 16, 24, 16, 4,
            6, 24, 36, 24, 6,
            4, 16, 24, 16, 4,
            1,  4,  6,  4, 1,
        ]
        let image = getImage()
        
        measureBlock {
            _ = image.map { (x: Int, y: Int, pixel: Pixel) -> Pixel in
                Pixel.weightedMean(zip(weights, image[(x - 2)...(x + 2), (y - 2)...(y + 2)])) ?? pixel
            }
        }
    }
}