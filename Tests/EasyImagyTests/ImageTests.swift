import XCTest
import EasyImagy
#if os(iOS)
import UIKit
#endif
#if os(OSX)
import AppKit
#endif

class ImageTests: XCTestCase {
    func testInitNamed() {
        do {
            let image = Image<RGBA>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png")))!
            
            XCTAssertEqual(255, image[0, 0].red)
            XCTAssertEqual(  0, image[0, 0].green)
            XCTAssertEqual(  0, image[0, 0].blue)
            XCTAssertEqual( 64, image[0, 0].alpha)
            
            XCTAssertEqual(  0, image[1, 0].red)
            XCTAssertEqual(255, image[1, 0].green)
            XCTAssertEqual(  0, image[1, 0].blue)
            XCTAssertEqual(127, image[1, 0].alpha)
            
            XCTAssertEqual(  0, image[0, 1].red)
            XCTAssertEqual(  0, image[0, 1].green)
            XCTAssertEqual(255, image[0, 1].blue)
            XCTAssertEqual(191, image[0, 1].alpha)
            
            XCTAssertEqual(255, image[1, 1].red)
            XCTAssertEqual(255, image[1, 1].green)
            XCTAssertEqual(  0, image[1, 1].blue)
            XCTAssertEqual(255, image[1, 1].alpha)
        }
    }
    
    func testInitWithImageSlice() {
        let image = Image<RGBA>(Image(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test4x4.png")))![1...2, 1...2])
        
        XCTAssertEqual(2, image.width)
        XCTAssertEqual(2, image.height)
        
        XCTAssertEqual(  0, image[0, 0].red)
        XCTAssertEqual(255, image[0, 0].green)
        XCTAssertEqual(255, image[0, 0].blue)
        XCTAssertEqual(255, image[0, 0].alpha)
        
        XCTAssertEqual(255, image[1, 0].red)
        XCTAssertEqual(255, image[1, 0].green)
        XCTAssertEqual(255, image[1, 0].blue)
        XCTAssertEqual(255, image[1, 0].alpha)
        
        XCTAssertEqual(255, image[0, 1].red)
        XCTAssertEqual(255, image[0, 1].green)
        XCTAssertEqual(255, image[0, 1].blue)
        XCTAssertEqual( 64, image[0, 1].alpha)
        
        XCTAssertEqual(255, image[1, 1].red)
        XCTAssertEqual(255, image[1, 1].green)
        XCTAssertEqual(255, image[1, 1].blue)
        XCTAssertEqual(127, image[1, 1].alpha)

    }
    
    
	func testSequence() {
        let image = Image<RGBA>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png")))!
        
        for (i, pixel) in image.enumerated() {
            switch i {
            case 0:
                XCTAssertEqual(255, pixel.red)
                XCTAssertEqual(  0, pixel.green)
                XCTAssertEqual(  0, pixel.blue)
                XCTAssertEqual( 64, pixel.alpha)
            case 1:
                XCTAssertEqual(  0, pixel.red)
                XCTAssertEqual(255, pixel.green)
                XCTAssertEqual(  0, pixel.blue)
                XCTAssertEqual(127, pixel.alpha)
            case 2:
                XCTAssertEqual(  0, pixel.red)
                XCTAssertEqual(  0, pixel.green)
                XCTAssertEqual(255, pixel.blue)
                XCTAssertEqual(191, pixel.alpha)
            case 3:
                XCTAssertEqual(255, pixel.red)
                XCTAssertEqual(255, pixel.green)
                XCTAssertEqual(  0, pixel.blue)
                XCTAssertEqual(255, pixel.alpha)
            default:
                XCTFail()
            }
        }
	}
	
	func testSubscriptGet() {
		let image = Image<RGBA>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test4x4.png")))!
		
		XCTAssertEqual(255, image[0, 0].red)
		XCTAssertEqual(  0, image[0, 0].green)
		XCTAssertEqual(  0, image[0, 0].blue)
		XCTAssertEqual(255, image[0, 0].alpha)
		
		XCTAssertEqual(  0, image[1, 0].red)
		XCTAssertEqual(255, image[1, 0].green)
		XCTAssertEqual(  0, image[1, 0].blue)
		XCTAssertEqual(255, image[1, 0].alpha)
		
		XCTAssertEqual(  0, image[2, 0].red)
		XCTAssertEqual(  0, image[2, 0].green)
		XCTAssertEqual(255, image[2, 0].blue)
		XCTAssertEqual(255, image[2, 0].alpha)
		
		XCTAssertEqual(255, image[3, 0].red)
		XCTAssertEqual(255, image[3, 0].green)
		XCTAssertEqual(  0, image[3, 0].blue)
		XCTAssertEqual(255, image[3, 0].alpha)
		
		XCTAssertEqual(255, image[0, 1].red)
		XCTAssertEqual(  0, image[0, 1].green)
		XCTAssertEqual(255, image[0, 1].blue)
		XCTAssertEqual(255, image[0, 1].alpha)
		
		XCTAssertEqual(  0, image[1, 1].red)
		XCTAssertEqual(255, image[1, 1].green)
		XCTAssertEqual(255, image[1, 1].blue)
		XCTAssertEqual(255, image[1, 1].alpha)
		
		XCTAssertEqual(255, image[2, 1].red)
		XCTAssertEqual(255, image[2, 1].green)
		XCTAssertEqual(255, image[2, 1].blue)
		XCTAssertEqual(255, image[2, 1].alpha)
		
		XCTAssertEqual(  0, image[3, 1].red)
		XCTAssertEqual(  0, image[3, 1].green)
		XCTAssertEqual(  0, image[3, 1].blue)
		XCTAssertEqual(255, image[3, 1].alpha)
		
		XCTAssertEqual(  0, image[0, 2].red)
		XCTAssertEqual(  0, image[0, 2].green)
		XCTAssertEqual(  0, image[0, 2].blue)
		XCTAssertEqual(  0, image[0, 2].alpha)
		
		XCTAssertEqual(255, image[1, 2].red)
		XCTAssertEqual(255, image[1, 2].green)
		XCTAssertEqual(255, image[1, 2].blue)
		XCTAssertEqual( 64, image[1, 2].alpha)
		
		XCTAssertEqual(255, image[2, 2].red)
		XCTAssertEqual(255, image[2, 2].green)
		XCTAssertEqual(255, image[2, 2].blue)
		XCTAssertEqual(127, image[2, 2].alpha)
		
		XCTAssertEqual(255, image[3, 2].red)
		XCTAssertEqual(255, image[3, 2].green)
		XCTAssertEqual(255, image[3, 2].blue)
		XCTAssertEqual(191, image[3, 2].alpha)
		
		XCTAssertEqual(255, image[0, 3].red)
		XCTAssertEqual(  0, image[0, 3].green)
		XCTAssertEqual(  0, image[0, 3].blue)
		XCTAssertEqual( 64, image[0, 3].alpha)
		
		XCTAssertEqual(  0, image[1, 3].red)
		XCTAssertEqual(255, image[1, 3].green)
		XCTAssertEqual(  0, image[1, 3].blue)
		XCTAssertEqual(127, image[1, 3].alpha)
		
		XCTAssertEqual(  0, image[2, 3].red)
		XCTAssertEqual(  0, image[2, 3].green)
		XCTAssertEqual(255, image[2, 3].blue)
		XCTAssertEqual(191, image[2, 3].alpha)
		
		XCTAssertEqual(  0, image[3, 3].red)
		XCTAssertEqual(  0, image[3, 3].green)
		XCTAssertEqual(  0, image[3, 3].blue)
		XCTAssertEqual(127, image[3, 3].alpha)
	}
	
	func testSubscriptSet() {
        var image = Image<RGBA>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png")))!
        var original = image
        
        image[0, 0] = RGBA(red:  2, green:  3, blue:  5, alpha:  7)
        image[1, 0] = RGBA(red: 11, green: 13, blue: 17, alpha: 19)
        image[0, 1] = RGBA(red: 23, green: 29, blue: 31, alpha: 37)
        image[1, 1] = RGBA(red: 41, green: 43, blue: 47, alpha: 53)
        
        XCTAssertEqual(  2, image[0, 0].red)
        XCTAssertEqual(  3, image[0, 0].green)
        XCTAssertEqual(  5, image[0, 0].blue)
        XCTAssertEqual(  7, image[0, 0].alpha)
        
        XCTAssertEqual( 11, image[1, 0].red)
        XCTAssertEqual( 13, image[1, 0].green)
        XCTAssertEqual( 17, image[1, 0].blue)
        XCTAssertEqual( 19, image[1, 0].alpha)
        
        XCTAssertEqual( 23, image[0, 1].red)
        XCTAssertEqual( 29, image[0, 1].green)
        XCTAssertEqual( 31, image[0, 1].blue)
        XCTAssertEqual( 37, image[0, 1].alpha)
        
        XCTAssertEqual( 41, image[1, 1].red)
        XCTAssertEqual( 43, image[1, 1].green)
        XCTAssertEqual( 47, image[1, 1].blue)
        XCTAssertEqual( 53, image[1, 1].alpha)
        
        XCTAssertEqual(255, original[0, 0].red)
        XCTAssertEqual(  0, original[0, 0].green)
        XCTAssertEqual(  0, original[0, 0].blue)
        XCTAssertEqual( 64, original[0, 0].alpha)
        
        XCTAssertEqual(  0, original[1, 0].red)
        XCTAssertEqual(255, original[1, 0].green)
        XCTAssertEqual(  0, original[1, 0].blue)
        XCTAssertEqual(127, original[1, 0].alpha)
        
        XCTAssertEqual(  0, original[0, 1].red)
        XCTAssertEqual(  0, original[0, 1].green)
        XCTAssertEqual(255, original[0, 1].blue)
        XCTAssertEqual(191, original[0, 1].alpha)
        
        XCTAssertEqual(255, original[1, 1].red)
        XCTAssertEqual(255, original[1, 1].green)
        XCTAssertEqual(  0, original[1, 1].blue)
        XCTAssertEqual(255, original[1, 1].alpha)
	}
    
	func testSubscriptRange() {
		let image = Image<RGBA>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test4x4.png")))![1...2, 1...2]
		
		XCTAssertEqual(2, image.width)
		XCTAssertEqual(2, image.height)
		
		XCTAssertEqual(  0, image[1, 1].red)
		XCTAssertEqual(255, image[1, 1].green)
		XCTAssertEqual(255, image[1, 1].blue)
		XCTAssertEqual(255, image[1, 1].alpha)
		
		XCTAssertEqual(255, image[2, 1].red)
		XCTAssertEqual(255, image[2, 1].green)
		XCTAssertEqual(255, image[2, 1].blue)
		XCTAssertEqual(255, image[2, 1].alpha)
		
		XCTAssertEqual(255, image[1, 2].red)
		XCTAssertEqual(255, image[1, 2].green)
		XCTAssertEqual(255, image[1, 2].blue)
		XCTAssertEqual( 64, image[1, 2].alpha)
		
		XCTAssertEqual(255, image[2, 2].red)
		XCTAssertEqual(255, image[2, 2].green)
		XCTAssertEqual(255, image[2, 2].blue)
		XCTAssertEqual(127, image[2, 2].alpha)
	}
    
    func testSubscriptInterpolation() {
        let image = Image<RGBA>(width: 3, height: 3, pixels: [
            RGBA<UInt8>(red:  0, green:  0, blue:  0, alpha:  0),
            RGBA<UInt8>(red:  2, green:  4, blue:  6, alpha:  8),
            RGBA<UInt8>(red:  4, green:  8, blue: 12, alpha: 16),
            RGBA<UInt8>(red:  6, green: 12, blue: 18, alpha: 24),
            RGBA<UInt8>(red:  8, green: 16, blue: 24, alpha: 32),
            RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 40),
            RGBA<UInt8>(red: 12, green: 24, blue: 36, alpha: 48),
            RGBA<UInt8>(red: 14, green: 28, blue: 42, alpha: 56),
            RGBA<UInt8>(red: 16, green: 32, blue: 48, alpha: 64),
        ])
        
        XCTAssertEqual(image[0, 0], image[0.0, 0.0])
        XCTAssertEqual(image[1, 0], image[1.0, 0.0])
        XCTAssertEqual(image[2, 0], image[2.0, 0.0])
        XCTAssertEqual(image[0, 1], image[0.0, 1.0])
        XCTAssertEqual(image[1, 1], image[1.0, 1.0])
        XCTAssertEqual(image[2, 1], image[2.0, 1.0])
        XCTAssertEqual(image[0, 2], image[0.0, 2.0])
        XCTAssertEqual(image[1, 2], image[1.0, 2.0])
        XCTAssertEqual(image[2, 2], image[2.0, 2.0])

        XCTAssertEqual(image[0, 0], image[-1.0, 0.0])
        XCTAssertEqual(image[2, 0], image[ 3.0, 0.0])
        XCTAssertEqual(image[0, 1], image[-1.0, 1.0])
        XCTAssertEqual(image[2, 1], image[ 3.0, 1.0])
        XCTAssertEqual(image[0, 2], image[-1.0, 2.0])
        XCTAssertEqual(image[2, 2], image[ 3.0, 2.0])
        
        XCTAssertEqual(image[0, 0], image[0.0, -1.0])
        XCTAssertEqual(image[0, 2], image[0.0,  3.0])
        XCTAssertEqual(image[1, 0], image[1.0, -1.0])
        XCTAssertEqual(image[1, 2], image[1.0,  3.0])
        XCTAssertEqual(image[2, 0], image[2.0, -1.0])
        XCTAssertEqual(image[2, 2], image[2.0,  3.0])

        XCTAssertEqual(image[0, 0], image[-1.0, -1.0])
        XCTAssertEqual(image[2, 0], image[ 3.0, -1.0])
        XCTAssertEqual(image[0, 2], image[-1.0,  3.0])
        XCTAssertEqual(image[2, 2], image[ 3.0,  3.0])

        XCTAssertEqual(RGBA(red: 1, green: 2, blue: 3, alpha: 4), image[0.5, 0.0])
        XCTAssertEqual(RGBA(red: 3, green: 6, blue: 9, alpha: 12), image[0.0, 0.5])
        XCTAssertEqual(RGBA(red: 4, green: 8, blue: 12, alpha: 16), image[0.5, 0.5])
        
        XCTAssertEqual(RGBA(red: 9, green: 18, blue: 27, alpha: 36), image[1.5, 1.0])
        XCTAssertEqual(RGBA(red: 11, green: 22, blue: 33, alpha: 44), image[1.0, 1.5])
        XCTAssertEqual(RGBA(red: 12, green: 24, blue: 36, alpha: 48), image[1.5, 1.5])
        
        XCTAssertEqual(RGBA(red: 3, green: 6, blue: 9, alpha: 12), image[0.75, 0.25])
        XCTAssertEqual(RGBA(red: 5, green: 10, blue: 15, alpha: 20), image[0.25, 0.75])
        XCTAssertEqual(RGBA(red: 11, green: 22, blue: 33, alpha: 44), image[1.75, 1.25])
        XCTAssertEqual(RGBA(red: 13, green: 26, blue: 39, alpha: 52), image[1.25, 1.75])
        
        XCTAssertEqual(RGBA(red: 1, green: 2, blue: 3, alpha: 4), image[0.5, -1.0])
        XCTAssertEqual(RGBA(red: 3, green: 6, blue: 9, alpha: 12), image[-1.0, 0.5])

        XCTAssertEqual(RGBA(red: 15, green: 30, blue: 45, alpha: 60), image[1.5, 3.0])
        XCTAssertEqual(RGBA(red: 13, green: 26, blue: 39, alpha: 52), image[3.0, 1.5])
    }
    
    func testPixel() {
        let image = Image<UInt8>(width: 3, height: 2, pixels: [0, 1, 2, 3, 4, 5])

        XCTAssertEqual(0, image.pixelAt(x: 0, y: 0)!)
        XCTAssertEqual(1, image.pixelAt(x: 1, y: 0)!)
        XCTAssertEqual(2, image.pixelAt(x: 2, y: 0)!)
        XCTAssertEqual(3, image.pixelAt(x: 0, y: 1)!)
        XCTAssertEqual(4, image.pixelAt(x: 1, y: 1)!)
        XCTAssertEqual(5, image.pixelAt(x: 2, y: 1)!)

        XCTAssertNil(image.pixelAt(x: -1, y: 0))
        XCTAssertNil(image.pixelAt(x: 3, y: 0))
        XCTAssertNil(image.pixelAt(x: 0, y: -1))
        XCTAssertNil(image.pixelAt(x: 0, y: 2))
    }
	
	func testMap() {
		let image = Image<RGBA<UInt8>>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x1.png")))!.map { pixel in
			RGBA<UInt8>(red: pixel.red / 2, green: pixel.green / 2, blue: pixel.blue / 2, alpha: pixel.alpha / 2)
		}
        
		XCTAssertEqual(127, image[0, 0].red)
		XCTAssertEqual(127, image[0, 0].green)
		XCTAssertEqual(127, image[0, 0].blue)
		XCTAssertEqual( 63, image[0, 0].alpha)
		
		XCTAssertEqual(  0, image[1, 0].red)
		XCTAssertEqual(  0, image[1, 0].green)
		XCTAssertEqual(  0, image[1, 0].blue)
		XCTAssertEqual(127, image[1, 0].alpha)
	}
    
    func testMapWithIndices() {
        do {
            let original = Image<RGBA<UInt8>>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png")))!
            let image = original.map { (x: Int, y: Int, pixel: RGBA<UInt8>) -> RGBA<UInt8> in
                return RGBA<UInt8>(red: UInt8(x + 42), green: UInt8(y + 42), blue: UInt8((Int(pixel.red) + Int(pixel.blue)) / 2), alpha: UInt8((Int(pixel.green) + Int(pixel.alpha)) / 2))
            }
            
            XCTAssertEqual( 42, image[0, 0].red)
            XCTAssertEqual( 42, image[0, 0].green)
            XCTAssertEqual(127, image[0, 0].blue)
            XCTAssertEqual( 32, image[0, 0].alpha)
            
            XCTAssertEqual( 43, image[1, 0].red)
            XCTAssertEqual( 42, image[1, 0].green)
            XCTAssertEqual(  0, image[1, 0].blue)
            XCTAssertEqual(191, image[1, 0].alpha)
            
            XCTAssertEqual( 42, image[0, 1].red)
            XCTAssertEqual( 43, image[0, 1].green)
            XCTAssertEqual(127, image[0, 1].blue)
            XCTAssertEqual( 95, image[0, 1].alpha)
            
            XCTAssertEqual( 43, image[1, 1].red)
            XCTAssertEqual( 43, image[1, 1].green)
            XCTAssertEqual(127, image[1, 1].blue)
            XCTAssertEqual(255, image[1, 1].alpha)
        }
        
        do {
            let original = Image<RGBA<UInt8>>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x1.png")))!
            let image = original.map { (x: Int, y: Int, pixel: RGBA<UInt8>) -> RGBA<UInt8> in
                RGBA<UInt8>(red: x + 42, green: y + 42, blue: (pixel.redInt + pixel.blueInt) / 2, alpha: (pixel.greenInt + pixel.alphaInt) / 2)
            }
            
            XCTAssertEqual( 42, image[0, 0].red)
            XCTAssertEqual( 42, image[0, 0].green)
            XCTAssertEqual(255, image[0, 0].blue)
            XCTAssertEqual(191, image[0, 0].alpha)
            
            XCTAssertEqual( 43, image[1, 0].red)
            XCTAssertEqual( 42, image[1, 0].green)
            XCTAssertEqual(  0, image[1, 0].blue)
            XCTAssertEqual(127, image[1, 0].alpha)
        }
    }
	
	func testXReversed() {
		let image = Image<RGBA>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png")))!.xReversed()

		XCTAssertEqual(  0, image[0, 0].red)
		XCTAssertEqual(255, image[0, 0].green)
		XCTAssertEqual(  0, image[0, 0].blue)
		XCTAssertEqual(127, image[0, 0].alpha)
		
		XCTAssertEqual(255, image[1, 0].red)
		XCTAssertEqual(  0, image[1, 0].green)
		XCTAssertEqual(  0, image[1, 0].blue)
		XCTAssertEqual( 64, image[1, 0].alpha)
		
		XCTAssertEqual(255, image[0, 1].red)
		XCTAssertEqual(255, image[0, 1].green)
		XCTAssertEqual(  0, image[0, 1].blue)
		XCTAssertEqual(255, image[0, 1].alpha)
		
		XCTAssertEqual(  0, image[1, 1].red)
		XCTAssertEqual(  0, image[1, 1].green)
		XCTAssertEqual(255, image[1, 1].blue)
		XCTAssertEqual(191, image[1, 1].alpha)
	}
	
	func testYReversed() {
		let image = Image<RGBA>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png")))!.yReversed()
		
		XCTAssertEqual(  0, image[0, 0].red)
		XCTAssertEqual(  0, image[0, 0].green)
		XCTAssertEqual(255, image[0, 0].blue)
		XCTAssertEqual(191, image[0, 0].alpha)
		
		XCTAssertEqual(255, image[1, 0].red)
		XCTAssertEqual(255, image[1, 0].green)
		XCTAssertEqual(  0, image[1, 0].blue)
		XCTAssertEqual(255, image[1, 0].alpha)
		
		XCTAssertEqual(255, image[0, 1].red)
		XCTAssertEqual(  0, image[0, 1].green)
		XCTAssertEqual(  0, image[0, 1].blue)
		XCTAssertEqual( 64, image[0, 1].alpha)
		
		XCTAssertEqual(  0, image[1, 1].red)
		XCTAssertEqual(255, image[1, 1].green)
		XCTAssertEqual(  0, image[1, 1].blue)
		XCTAssertEqual(127, image[1, 1].alpha)
	}
	
	func testRotated() {
		let image = Image<RGBA>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x1.png")))!

		for times in [-8, -4, 0, 4, 8] {
			let rotated = image.rotated(times)
			
			XCTAssertEqual(2, rotated.width)
			XCTAssertEqual(1, rotated.height)
			
			XCTAssertEqual(255, rotated[0, 0].red)
			XCTAssertEqual(255, rotated[0, 0].green)
			XCTAssertEqual(255, rotated[0, 0].blue)
			XCTAssertEqual(127, rotated[0, 0].alpha)
			
			XCTAssertEqual(  0, rotated[1, 0].red)
			XCTAssertEqual(  0, rotated[1, 0].green)
			XCTAssertEqual(  0, rotated[1, 0].blue)
			XCTAssertEqual(255, rotated[1, 0].alpha)
		}
		
		for times in [-7, -3, 1, 5] {
			let rotated = image.rotated(times)

			XCTAssertEqual(1, rotated.width)
			XCTAssertEqual(2, rotated.height)
			
			XCTAssertEqual(255, rotated[0, 0].red)
			XCTAssertEqual(255, rotated[0, 0].green)
			XCTAssertEqual(255, rotated[0, 0].blue)
			XCTAssertEqual(127, rotated[0, 0].alpha)
			
			XCTAssertEqual(  0, rotated[0, 1].red)
			XCTAssertEqual(  0, rotated[0, 1].green)
			XCTAssertEqual(  0, rotated[0, 1].blue)
			XCTAssertEqual(255, rotated[0, 1].alpha)
		}
		
		for times in [-6, -2, 2, 6] {
			let rotated = image.rotated(times)
			
			XCTAssertEqual(2, rotated.width)
			XCTAssertEqual(1, rotated.height)
			
			XCTAssertEqual(  0, rotated[0, 0].red)
			XCTAssertEqual(  0, rotated[0, 0].green)
			XCTAssertEqual(  0, rotated[0, 0].blue)
			XCTAssertEqual(255, rotated[0, 0].alpha)
			
			XCTAssertEqual(255, rotated[1, 0].red)
			XCTAssertEqual(255, rotated[1, 0].green)
			XCTAssertEqual(255, rotated[1, 0].blue)
			XCTAssertEqual(127, rotated[1, 0].alpha)
		}
		
		for times in [-5, -1, 3, 7] {
			let rotated = image.rotated(times)
			
			XCTAssertEqual(1, rotated.width)
			XCTAssertEqual(2, rotated.height)
			
			XCTAssertEqual(  0, rotated[0, 0].red)
			XCTAssertEqual(  0, rotated[0, 0].green)
			XCTAssertEqual(  0, rotated[0, 0].blue)
			XCTAssertEqual(255, rotated[0, 0].alpha)
			
			XCTAssertEqual(255, rotated[0, 1].red)
			XCTAssertEqual(255, rotated[0, 1].green)
			XCTAssertEqual(255, rotated[0, 1].blue)
			XCTAssertEqual(127, rotated[0, 1].alpha)
		}
	}
    
    func testConvoluted() {
        let image = Image<Int>(width: 2, height: 2, pixels: [1, 2, 3, 4])
        
        let kernel = Image<Int>(width: 5, height: 5, pixels: [
            1, 1, 1, 1, 1,
            1, 1, 1, 1, 1,
            1, 1, 1, 1, 1,
            1, 1, 1, 1, 1,
            1, 1, 1, 1, 1,
        ])
        
        let convoluted = image.convoluted(by: kernel)
        
        XCTAssertEqual(55, convoluted[0, 0])
        XCTAssertEqual(60, convoluted[1, 0])
        XCTAssertEqual(65, convoluted[0, 1])
        XCTAssertEqual(70, convoluted[1, 1])
    }
    
	func testCopyOnWritePerformanceOfCopy() { // Fast
        let image = Image<RGBA<UInt8>>(width: 8192, height: 8192, pixel: RGBA.transparent)
		measure {
			let copy = image
			XCTAssertEqual(8192 * 8192, copy.count)
		}
	}
	
    func testCopyOnWritePerformanceOfUpdate() { // Fast
        var image = Image<RGBA<UInt8>>(width: 8192, height: 8192, pixel: RGBA.transparent)
        measure {
            image[0, 0] = .white
            XCTAssertEqual(8192 * 8192, image.count)
        }
    }
    
	func testCopyPerformance() { // Slow
		let image = Image<RGBA<UInt8>>(width: 8192, height: 8192, pixel: RGBA.transparent)
		measure {
			var copy = image
			copy[0, 0] = .white
			XCTAssertEqual(8192 * 8192, copy.count)
		}
	}
}
