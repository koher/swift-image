import XCTest
import EasyImagy

private let WIDTH = 2048
private let HEIGHT = 1024

private func getImage() -> Image {
    return Image(width: WIDTH, height: HEIGHT, pixels: (0..<(WIDTH * HEIGHT)).map { Pixel(gray: UInt8($0 % 256)) })
}

class MapPerformanceTests: XCTestCase {
    func testNormalMap() {
        let image = getImage()
        measureBlock {
            let mapped = image.map { $0 }
            XCTAssertEqual(0, mapped[0, 0]!.red)
        }
    }
    
    func testMap() {
        let image = getImage()
        measureBlock {
            let mapped = image.map(transform)
            XCTAssertEqual(0, mapped[0, 0]!.red)
        }
    }
    
    func testMap1() {
        let image = getImage()
        measureBlock {
            let mapped = image.map1(transform)
            XCTAssertEqual(0, mapped[0, 0]!.red)
        }
    }
    
    func testMap2() {
        let image = getImage()
        measureBlock {
            let mapped = image.map2(transform)
            XCTAssertEqual(0, mapped[0, 0]!.red)
        }
    }
    
    func testMap3() {
        let image = getImage()
        measureBlock {
            let mapped = image.map3(transform)
            XCTAssertEqual(0, mapped[0, 0]!.red)
        }
    }
    
    func testMap4() {
        let image = getImage()
        measureBlock {
            let mapped = image.map4(transform)
            XCTAssertEqual(0, mapped[0, 0]!.red)
        }
    }
}

private func transform(x: Int, y: Int, pixel: Pixel) -> Pixel {
    return Pixel(gray: UInt8((x + y) % 256))
}

extension Image {
    private func map1(transform: (x: Int, y: Int, pixel: Pixel) -> Pixel) -> Image {
        let w = width
        return Image(width: width, height: height, pixels: pixels.enumerate().map { i, pixel in transform(x: i % w, y: i / w, pixel: pixel) })
    }
    
    private func map2(transform: (x: Int, y: Int, pixel: Pixel) -> Pixel) -> Image {
        return Image(width: width, height: height, pixels: pixels.enumerate().map { i, pixel in transform(x: i % self.width, y: i / self.width, pixel: pixel) })
    }
    
    private func map3(transform: (x: Int, y: Int, pixel: Pixel) -> Pixel) -> Image {
        var pixels = Array<Pixel>()
        pixels.reserveCapacity(count)
        for y in 0..<height {
            for x in 0..<width {
                pixels.append(transform(x: x, y: y, pixel: self[x, y]!))
            }
        }
        return Image(width: width, height: height, pixels: pixels)
    }

    private func map4(transform: (x: Int, y: Int, pixel: Pixel) -> Pixel) -> Image {
        var pixels = Array<Pixel>()
        pixels.reserveCapacity(count)
        var generator = generate()
        for y in 0..<height {
            for x in 0..<width {
                pixels.append(transform(x: x, y: y, pixel: generator.next()!))
            }
        }
        return Image(width: width, height: height, pixels: pixels)
    }
}