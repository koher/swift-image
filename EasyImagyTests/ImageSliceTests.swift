import XCTest
import EasyImagy
#if os(iOS)
    import UIKit
#endif
#if os(OSX)
    import AppKit
#endif

class ImageSliceTests: XCTestCase {
    func testSequence() {
        do {
            let image = Image<RGBA>(named: "Test4x4", inBundle: NSBundle(forClass: ImageTests.self))![1...2, 1...2]
            
            for (i, pixel) in image.enumerate() {
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
        
        do {
            let image = Image<RGBA>(named: "Test4x4", inBundle: NSBundle(forClass: ImageTests.self))![-2...1, -2...1]
            
            for (i, pixel) in image.enumerate() {
                switch i {
                case 0:
                    XCTAssertEqual(255, pixel.red)
                    XCTAssertEqual(  0, pixel.green)
                    XCTAssertEqual(  0, pixel.blue)
                    XCTAssertEqual(255, pixel.alpha)
                case 1:
                    XCTAssertEqual(  0, pixel.red)
                    XCTAssertEqual(255, pixel.green)
                    XCTAssertEqual(  0, pixel.blue)
                    XCTAssertEqual(255, pixel.alpha)
                case 2:
                    XCTAssertEqual(255, pixel.red)
                    XCTAssertEqual(  0, pixel.green)
                    XCTAssertEqual(255, pixel.blue)
                    XCTAssertEqual(255, pixel.alpha)
                case 3:
                    XCTAssertEqual(  0, pixel.red)
                    XCTAssertEqual(255, pixel.green)
                    XCTAssertEqual(255, pixel.blue)
                    XCTAssertEqual(255, pixel.alpha)
                default:
                    XCTFail()
                }
            }
        }
        
        do {
            let image = Image<RGBA>(named: "Test4x4", inBundle: NSBundle(forClass: ImageTests.self))![2...5, 2...5]
            
            for (i, pixel) in image.enumerate() {
                switch i {
                case 0:
                    XCTAssertEqual(255, pixel.red)
                    XCTAssertEqual(255, pixel.green)
                    XCTAssertEqual(255, pixel.blue)
                    XCTAssertEqual(127, pixel.alpha)
                case 1:
                    XCTAssertEqual(255, pixel.red)
                    XCTAssertEqual(255, pixel.green)
                    XCTAssertEqual(255, pixel.blue)
                    XCTAssertEqual(191, pixel.alpha)
                case 2:
                    XCTAssertEqual(  0, pixel.red)
                    XCTAssertEqual(  0, pixel.green)
                    XCTAssertEqual(255, pixel.blue)
                    XCTAssertEqual(191, pixel.alpha)
                case 3:
                    XCTAssertEqual(  0, pixel.red)
                    XCTAssertEqual(  0, pixel.green)
                    XCTAssertEqual(  0, pixel.blue)
                    XCTAssertEqual(127, pixel.alpha)
                default:
                    XCTFail()
                }
            }
        }
    }
    
    func testSubscriptRange() {
        let image = Image<RGBA>(named: "Test4x4", inBundle: NSBundle(forClass: ImageTests.self))![1...2, 1...2]
        
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
        
        XCTAssertEqual( 0, image.pixel(0, 0)!)
        XCTAssertEqual( 1, image.pixel(1, 0)!)
        XCTAssertEqual( 2, image.pixel(2, 0)!)
        XCTAssertEqual( 3, image.pixel(3, 0)!)
        XCTAssertEqual( 4, image.pixel(0, 1)!)
        XCTAssertEqual( 5, image.pixel(1, 1)!)
        XCTAssertEqual( 6, image.pixel(2, 1)!)
        XCTAssertEqual( 7, image.pixel(3, 1)!)
        XCTAssertEqual( 8, image.pixel(0, 2)!)
        XCTAssertEqual( 9, image.pixel(1, 2)!)
        XCTAssertEqual(10, image.pixel(2, 2)!)
        XCTAssertEqual(11, image.pixel(3, 2)!)
        
        XCTAssertNil(image.pixel(-1, 0))
        XCTAssertNil(image.pixel(4, 0))
        XCTAssertNil(image.pixel(0, -1))
        XCTAssertNil(image.pixel(0, 3))
    }

}