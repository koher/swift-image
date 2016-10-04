import XCTest
@testable import EasyImagy

private let WIDTH = 1024
private let HEIGHT = 512

private func getImage() -> Image<RGBA> {
    return Image(width: WIDTH, height: HEIGHT, pixels: (0..<(WIDTH * HEIGHT)).map { RGBA(gray: UInt8($0 % 256)) })
}

class MapPerformanceTests: XCTestCase {
    func testNormalMap() {
        let image = getImage()
        measure {
            let mapped: Image<RGBA> = image.map { $0 }
            XCTAssertEqual(0, mapped[0, 0].red)
        }
    }
    
    func testNormalInternalMap() {
        let image = getImage()
        measure {
            let mapped: Image<RGBA> = image._map { $0 }
            XCTAssertEqual(0, mapped[0, 0].red)
        }
    }
    
    func testNormalMap1() {
        let image = getImage()
        measure {
            let mapped: Image<RGBA> = image.map1 { $0 }
            XCTAssertEqual(0, mapped[0, 0].red)
        }
    }
    
    func testMap() {
        let image = getImage()
        measure {
            let mapped = image.map(transform)
            XCTAssertEqual(0, mapped[0, 0].red)
        }
    }
    
    func testMap1() {
        let image = getImage()
        measure {
            let mapped = image.map1(transform)
            XCTAssertEqual(0, mapped[0, 0].red)
        }
    }
    
    func testMap2() {
        let image = getImage()
        measure {
            let mapped = image.map2(transform)
            XCTAssertEqual(0, mapped[0, 0].red)
        }
    }
    
    func testMap3() {
        let image = getImage()
        measure {
            let mapped = image.map3(transform)
            XCTAssertEqual(0, mapped[0, 0].red)
        }
    }
    
    func testMap4() {
        let image = getImage()
        measure {
            let mapped = image.map4(transform)
            XCTAssertEqual(0, mapped[0, 0].red)
        }
    }
}

private func transform(_ x: Int, y: Int, pixel: RGBA) -> RGBA {
    return RGBA(gray: UInt8((x + y) % 256))
}

extension Image {
    fileprivate func map1<T>(_ transform: (Pixel) -> T) -> Image<T> {
        return Image<T>(width: width, height: height, pixels: pixels.map(transform))
    }
    
    fileprivate func map1<T>(_ transform: (_ x: Int, _ y: Int, _ pixel: Pixel) -> T) -> Image<T> {
        let w = width
        return Image<T>(width: width, height: height, pixels: pixels.enumerated().map { i, pixel in transform(i % w, i / w, pixel) })
    }
    
    fileprivate func map2<T>(_ transform: (_ x: Int, _ y: Int, _ pixel: Pixel) -> T) -> Image<T> {
        return Image<T>(width: width, height: height, pixels: pixels.enumerated().map { i, pixel in transform(i % self.width, i / self.width, pixel) })
    }
    
    fileprivate func map3<T>(_ transform: (_ x: Int, _ y: Int, _ pixel: Pixel) -> T) -> Image<T> {
        var pixels: [T] = []
        pixels.reserveCapacity(count)
        for y in 0..<height {
            for x in 0..<width {
                pixels.append(transform(x, y, self[x, y]))
            }
        }
        return Image<T>(width: width, height: height, pixels: pixels)
    }

    fileprivate func map4<T>(_ transform: (_ x: Int, _ y: Int, _ pixel: Pixel) -> T) -> Image<T> {
        var pixels: [T] = []
        pixels.reserveCapacity(count)
        var generator = makeIterator()
        for y in 0..<height {
            for x in 0..<width {
                pixels.append(transform(x, y, generator.next()!))
            }
        }
        return Image<T>(width: width, height: height, pixels: pixels)
    }
}
