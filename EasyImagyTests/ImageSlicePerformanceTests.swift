import XCTest
@testable import EasyImagy

private let WIDTH = 1024
private let HEIGHT = 1024

private func getImageSlice() -> ImageSlice<RGBA> {
    return Image(width: WIDTH, height: HEIGHT, pixels: (0..<(WIDTH * HEIGHT)).map { RGBA(gray: UInt8($0 % 256)) })[0..<WIDTH, 0..<HEIGHT]
}

private func loopGenerator<G: IteratorProtocol>(_ generator: G) -> Int? where G.Element == RGBA {
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
        
        measure {
            XCTAssertEqual(loopGenerator(image.makeIterator()), 255)
        }
    }
    
    func testGenerate1() {
        let image = getImageSlice()
        
        measure {
            XCTAssertEqual(loopGenerator(image.generate1()), 255)
        }
    }
}

extension ImageSlice {
    fileprivate func generate1() -> PixelGenerator<Pixel> {
        return PixelGenerator(image: image, xRange: validRange(xRange, maxValue: image.width), yRange: validRange(yRange, maxValue: image.height))
    }
}

private func validRange(_ range: CountableRange<Int>, maxValue: Int) -> CountableRange<Int> {
    return max(0, range.lowerBound)..<min(maxValue, range.upperBound)
}

private struct PixelGenerator<Pixel>: IteratorProtocol {
    typealias Element = Pixel
    
    fileprivate let image: Image<Pixel>
    
    fileprivate let xRange: CountableRange<Int>
    fileprivate let yRange: CountableRange<Int>
    
    fileprivate var x: Int
    fileprivate var y: Int
    
    init(image: Image<Pixel>, xRange: CountableRange<Int>, yRange: CountableRange<Int>) {
        self.image = image
        
        self.xRange = xRange
        self.yRange = yRange
        
        self.x = xRange.lowerBound
        self.y = yRange.lowerBound
    }
    
    mutating func next() -> Pixel? {
        if x == xRange.upperBound {
            x = xRange.lowerBound
            y += 1
        }
        
        guard y < yRange.upperBound else { return nil }
        defer { x += 1 }
        
        return image.pixels[y * image.width + x]
    }
}
