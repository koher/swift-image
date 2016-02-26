import XCTest
@testable import EasyImagy

private let WIDTH = 1024
private let HEIGHT = 1024

private func getImageSlice() -> ImageSlice<RGBA> {
    return Image(width: WIDTH, height: HEIGHT, pixels: (0..<(WIDTH * HEIGHT)).map { RGBA(gray: UInt8($0 % 256)) })[0..<WIDTH, 0..<HEIGHT]
}

private func loopGenerator<G: GeneratorType where G.Element == RGBA>(generator: G) -> Int? {
    var g = generator
    var result: Int? = nil
    while let pixel = g.next() {
        result = pixel.redInt
    }
    return result
}

class ImageSlicePerformanceTests: XCTestCase {
    func testGenerate() {
        let image = getImageSlice()
        
        measureBlock {
            XCTAssertEqual(loopGenerator(image.generate()), 255)
        }
    }
    
    func testGenerate1() {
        let image = getImageSlice()
        
        measureBlock {
            XCTAssertEqual(loopGenerator(image.generate1()), 255)
        }
    }
}

extension ImageSlice {
    private func generate1() -> PixelGenerator<Pixel> {
        return PixelGenerator(image: image, xRange: validRange(xRange, maxValue: image.width), yRange: validRange(yRange, maxValue: image.height))
    }
}

private func validRange(range: Range<Int>, maxValue: Int) -> Range<Int> {
    return max(0, range.startIndex)..<min(maxValue, range.endIndex)
}

private struct PixelGenerator<Pixel>: GeneratorType {
    typealias Element = Pixel
    
    private let image: Image<Pixel>
    
    private let xRange: Range<Int>
    private let yRange: Range<Int>
    
    private var x: Int
    private var y: Int
    
    init(image: Image<Pixel>, xRange: Range<Int>, yRange: Range<Int>) {
        self.image = image
        
        self.xRange = xRange
        self.yRange = yRange
        
        self.x = xRange.startIndex
        self.y = yRange.startIndex
    }
    
    mutating func next() -> Pixel? {
        if x == xRange.endIndex {
            x = xRange.startIndex
            y += 1
        }
        
        guard y < yRange.endIndex else { return nil }
        defer { x += 1 }
        
        return image.pixels[y * image.width + x]
    }
}
