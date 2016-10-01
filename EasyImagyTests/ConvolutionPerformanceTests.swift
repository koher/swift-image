import XCTest
@testable import EasyImagy

private let WIDTH = 320
private let HEIGHT = 240

private let image = getImage()
private let kernel = Image<Int>(width: 5, height: 5, pixels: [
    1,  4,  6,  4, 1,
    4, 16, 24, 16, 4,
    6, 24, 36, 24, 6,
    4, 16, 24, 16, 4,
    1,  4,  6,  4, 1,
]).map { Float($0) / 256.0 }

private func getImage() -> Image<RGBA> {
    return Image(width: WIDTH, height: HEIGHT, pixels: (0..<(WIDTH * HEIGHT)).map { RGBA(gray: UInt8($0 % 256)) })
}

class ConvolutionPerformanceTests: XCTestCase {
    func testConvoluted() {
        measureBlock {
            _ = image.convoluted(kernel)
        }        
    }
}