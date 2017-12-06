import XCTest
import EasyImagy
#if os(iOS)
    import UIKit
#endif
#if os(OSX)
    import AppKit
#endif

class ImageSliceTests: XCTestCase {
    func testInit() {
        do {
            let slice = ImageSlice<UInt8>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ])
            XCTAssertEqual(slice.width, 3)
            XCTAssertEqual(slice.height, 2)
            XCTAssertEqual(slice.xRange, 0..<3)
            XCTAssertEqual(slice.yRange, 0..<2)
            XCTAssertEqual(slice[0, 0], 1)
            XCTAssertEqual(slice[1, 0], 2)
            XCTAssertEqual(slice[2, 0], 3)
            XCTAssertEqual(slice[0, 1], 4)
            XCTAssertEqual(slice[1, 1], 5)
            XCTAssertEqual(slice[2, 1], 6)
        }
        
        do {
            let image = Image<UInt8>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
                ])
            let slice = ImageSlice(image)
            XCTAssertEqual(slice.width, 3)
            XCTAssertEqual(slice.height, 2)
            XCTAssertEqual(slice.xRange, 0..<3)
            XCTAssertEqual(slice.yRange, 0..<2)
            XCTAssertEqual(slice[0, 0], 1)
            XCTAssertEqual(slice[1, 0], 2)
            XCTAssertEqual(slice[2, 0], 3)
            XCTAssertEqual(slice[0, 1], 4)
            XCTAssertEqual(slice[1, 1], 5)
            XCTAssertEqual(slice[2, 1], 6)
        }
    }
    
    func testSequence() {
        do {
            let image = Image<RGBA<UInt8>>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test4x4.png")))![1...2, 1...2]
            
            for (i, pixel) in image.enumerated() {
                switch i {
                case 0:
                    XCTAssertEqual(  0, pixel.red)
                    XCTAssertEqual(255, pixel.green)
                    XCTAssertEqual(255, pixel.blue)
                    XCTAssertEqual(255, pixel.alpha)
                case 1:
                    XCTAssertEqual(255, pixel.red)
                    XCTAssertEqual(255, pixel.green)
                    XCTAssertEqual(255, pixel.blue)
                    XCTAssertEqual(255, pixel.alpha)
                case 2:
                    XCTAssertEqual(255, pixel.red)
                    XCTAssertEqual(255, pixel.green)
                    XCTAssertEqual(255, pixel.blue)
                    XCTAssertEqual( 64, pixel.alpha)
                case 3:
                    XCTAssertEqual(255, pixel.red)
                    XCTAssertEqual(255, pixel.green)
                    XCTAssertEqual(255, pixel.blue)
                    XCTAssertEqual(127, pixel.alpha)
                default:
                    XCTFail()
                }
            }
        }
    }
    
    func testSubscriptRange() {
        let image = Image<RGBA<UInt8>>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test4x4.png")))![1...2, 1...2]
        
        let topRight = image[2...2, 1...1]
        
        XCTAssertEqual(1, topRight.width)
        XCTAssertEqual(1, topRight.height)
        
        XCTAssertEqual(255, topRight[2, 1].red)
        XCTAssertEqual(255, topRight[2, 1].green)
        XCTAssertEqual(255, topRight[2, 1].blue)
        XCTAssertEqual(255, topRight[2, 1].alpha)
        
        let bottomLeft = image[1...1, 2...2]
        
        XCTAssertEqual(1, bottomLeft.width)
        XCTAssertEqual(1, bottomLeft.height)
        
        XCTAssertEqual(255, bottomLeft[1, 2].red)
        XCTAssertEqual(255, bottomLeft[1, 2].green)
        XCTAssertEqual(255, bottomLeft[1, 2].blue)
        XCTAssertEqual( 64, bottomLeft[1, 2].alpha)
    }
    
    func testPixel() {
        let image = Image<UInt8>(width: 4, height: 3, pixels: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11])[1...2, 1...1]
        
        XCTAssertNil(image.pixelAt(x: 0, y: 0))
        XCTAssertNil(image.pixelAt(x: 1, y: 0))
        XCTAssertNil(image.pixelAt(x: 2, y: 0))
        XCTAssertNil(image.pixelAt(x: 3, y: 0))
        XCTAssertNil(image.pixelAt(x: 0, y: 1))
        XCTAssertEqual(5, image.pixelAt(x: 1, y: 1)!)
        XCTAssertEqual(6, image.pixelAt(x: 2, y: 1)!)
        XCTAssertNil(image.pixelAt(x: 3, y: 1))
        XCTAssertNil(image.pixelAt(x: 0, y: 2))
        XCTAssertNil(image.pixelAt(x: 1, y: 2))
        XCTAssertNil(image.pixelAt(x: 2, y: 2))
        XCTAssertNil(image.pixelAt(x: 3, y: 2))
        
        XCTAssertNil(image.pixelAt(x: -1, y: 0))
        XCTAssertNil(image.pixelAt(x: 4, y: 0))
        XCTAssertNil(image.pixelAt(x: 0, y: -1))
        XCTAssertNil(image.pixelAt(x: 0, y: 3))
    }

}
