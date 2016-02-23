import XCTest
import EasyImagy
import UIKit

class ImageSliceTests: XCTestCase {
    func testSequence() {
        do {
            let image = Image(named: "Test4x4", inBundle: NSBundle(forClass: ImageTests.self), compatibleWithTraitCollection: nil)![1...2, 1...2]
            
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
            let image = Image(named: "Test4x4", inBundle: NSBundle(forClass: ImageTests.self), compatibleWithTraitCollection: nil)![-2...1, -2...1]
            
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
            let image = Image(named: "Test4x4", inBundle: NSBundle(forClass: ImageTests.self), compatibleWithTraitCollection: nil)![2...5, 2...5]
            
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
        let image = Image(named: "Test4x4", inBundle: NSBundle(forClass: ImageTests.self), compatibleWithTraitCollection: nil)![1...2, 1...2]
        
        let topRight = image[2...2, 1...1]
        
        XCTAssertEqual(1, topRight.width)
        XCTAssertEqual(1, topRight.height)
        
        XCTAssertEqual(255, topRight[2, 1]!.red)
        XCTAssertEqual(255, topRight[2, 1]!.green)
        XCTAssertEqual(255, topRight[2, 1]!.blue)
        XCTAssertEqual(255, topRight[2, 1]!.alpha)
        
        let bottomLeft = image[1...1, 2...2]
        
        XCTAssertEqual(1, bottomLeft.width)
        XCTAssertEqual(1, bottomLeft.height)
        
        XCTAssertEqual(255, bottomLeft[1, 2]!.red)
        XCTAssertEqual(255, bottomLeft[1, 2]!.green)
        XCTAssertEqual(255, bottomLeft[1, 2]!.blue)
        XCTAssertEqual( 64, bottomLeft[1, 2]!.alpha)
    }
}