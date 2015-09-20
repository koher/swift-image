import XCTest
import EasyImagy
import UIKit

class ImageTests: XCTestCase {
	func testSequence() {
		if true {
			let image = Image(named: "Test2x2", inBundle: NSBundle(forClass: ImageTests.self), compatibleWithTraitCollection: nil)!
			
			var i = 0
			for pixel in image {
				switch i++ {
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
		
		if true {
			let image = Image(named: "Test4x4", inBundle: NSBundle(forClass: ImageTests.self), compatibleWithTraitCollection: nil)![1...2, 1...2]!
			
			var i = 0
			for pixel in image {
				switch i++ {
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
	
	func testSubscriptGet() {
		let image = Image(named: "Test4x4", inBundle: NSBundle(forClass: ImageTests.self), compatibleWithTraitCollection: nil)!
		
		XCTAssertEqual(255, image[0][0]!.red)
		XCTAssertEqual(  0, image[0][0]!.green)
		XCTAssertEqual(  0, image[0][0]!.blue)
		XCTAssertEqual(255, image[0][0]!.alpha)
		
		XCTAssertEqual(  0, image[0][1]!.red)
		XCTAssertEqual(255, image[0][1]!.green)
		XCTAssertEqual(  0, image[0][1]!.blue)
		XCTAssertEqual(255, image[0][1]!.alpha)
		
		XCTAssertEqual(  0, image[0][2]!.red)
		XCTAssertEqual(  0, image[0][2]!.green)
		XCTAssertEqual(255, image[0][2]!.blue)
		XCTAssertEqual(255, image[0][2]!.alpha)
		
		XCTAssertEqual(255, image[0][3]!.red)
		XCTAssertEqual(255, image[0][3]!.green)
		XCTAssertEqual(  0, image[0][3]!.blue)
		XCTAssertEqual(255, image[0][3]!.alpha)
		
		XCTAssertEqual(255, image[1][0]!.red)
		XCTAssertEqual(  0, image[1][0]!.green)
		XCTAssertEqual(255, image[1][0]!.blue)
		XCTAssertEqual(255, image[1][0]!.alpha)
		
		XCTAssertEqual(  0, image[1][1]!.red)
		XCTAssertEqual(255, image[1][1]!.green)
		XCTAssertEqual(255, image[1][1]!.blue)
		XCTAssertEqual(255, image[1][1]!.alpha)
		
		XCTAssertEqual(255, image[1][2]!.red)
		XCTAssertEqual(255, image[1][2]!.green)
		XCTAssertEqual(255, image[1][2]!.blue)
		XCTAssertEqual(255, image[1][2]!.alpha)
		
		XCTAssertEqual(  0, image[1][3]!.red)
		XCTAssertEqual(  0, image[1][3]!.green)
		XCTAssertEqual(  0, image[1][3]!.blue)
		XCTAssertEqual(255, image[1][3]!.alpha)
		
		XCTAssertEqual(  0, image[2][0]!.red)
		XCTAssertEqual(  0, image[2][0]!.green)
		XCTAssertEqual(  0, image[2][0]!.blue)
		XCTAssertEqual(  0, image[2][0]!.alpha)
		
		XCTAssertEqual(255, image[2][1]!.red)
		XCTAssertEqual(255, image[2][1]!.green)
		XCTAssertEqual(255, image[2][1]!.blue)
		XCTAssertEqual( 64, image[2][1]!.alpha)
		
		XCTAssertEqual(255, image[2][2]!.red)
		XCTAssertEqual(255, image[2][2]!.green)
		XCTAssertEqual(255, image[2][2]!.blue)
		XCTAssertEqual(127, image[2][2]!.alpha)
		
		XCTAssertEqual(255, image[2][3]!.red)
		XCTAssertEqual(255, image[2][3]!.green)
		XCTAssertEqual(255, image[2][3]!.blue)
		XCTAssertEqual(191, image[2][3]!.alpha)
		
		XCTAssertEqual(255, image[3][0]!.red)
		XCTAssertEqual(  0, image[3][0]!.green)
		XCTAssertEqual(  0, image[3][0]!.blue)
		XCTAssertEqual( 64, image[3][0]!.alpha)
		
		XCTAssertEqual(  0, image[3][1]!.red)
		XCTAssertEqual(255, image[3][1]!.green)
		XCTAssertEqual(  0, image[3][1]!.blue)
		XCTAssertEqual(127, image[3][1]!.alpha)
		
		XCTAssertEqual(  0, image[3][2]!.red)
		XCTAssertEqual(  0, image[3][2]!.green)
		XCTAssertEqual(255, image[3][2]!.blue)
		XCTAssertEqual(191, image[3][2]!.alpha)
		
		XCTAssertEqual(  0, image[3][3]!.red)
		XCTAssertEqual(  0, image[3][3]!.green)
		XCTAssertEqual(  0, image[3][3]!.blue)
		XCTAssertEqual(127, image[3][3]!.alpha)
	}
	
	func testSubscriptSet() {
		if true {
			var image = Image(named: "Test2x2", inBundle: NSBundle(forClass: ImageTests.self), compatibleWithTraitCollection: nil)!
			var original = image
			
			image[0][0] = Pixel(red:  2, green:  3, blue:  5, alpha:  7)
			image[0][1] = Pixel(red: 11, green: 13, blue: 17, alpha: 19)
			image[1][0] = Pixel(red: 23, green: 29, blue: 31, alpha: 37)
			image[1][1] = Pixel(red: 41, green: 43, blue: 47, alpha: 53)
			
			XCTAssertEqual(  2, image[0][0]!.red)
			XCTAssertEqual(  3, image[0][0]!.green)
			XCTAssertEqual(  5, image[0][0]!.blue)
			XCTAssertEqual(  7, image[0][0]!.alpha)
			
			XCTAssertEqual( 11, image[0][1]!.red)
			XCTAssertEqual( 13, image[0][1]!.green)
			XCTAssertEqual( 17, image[0][1]!.blue)
			XCTAssertEqual( 19, image[0][1]!.alpha)
			
			XCTAssertEqual( 23, image[1][0]!.red)
			XCTAssertEqual( 29, image[1][0]!.green)
			XCTAssertEqual( 31, image[1][0]!.blue)
			XCTAssertEqual( 37, image[1][0]!.alpha)
			
			XCTAssertEqual( 41, image[1][1]!.red)
			XCTAssertEqual( 43, image[1][1]!.green)
			XCTAssertEqual( 47, image[1][1]!.blue)
			XCTAssertEqual( 53, image[1][1]!.alpha)
			
			XCTAssertEqual(255, original[0][0]!.red)
			XCTAssertEqual(  0, original[0][0]!.green)
			XCTAssertEqual(  0, original[0][0]!.blue)
			XCTAssertEqual( 64, original[0][0]!.alpha)
			
			XCTAssertEqual(  0, original[0][1]!.red)
			XCTAssertEqual(255, original[0][1]!.green)
			XCTAssertEqual(  0, original[0][1]!.blue)
			XCTAssertEqual(127, original[0][1]!.alpha)
			
			XCTAssertEqual(  0, original[1][0]!.red)
			XCTAssertEqual(  0, original[1][0]!.green)
			XCTAssertEqual(255, original[1][0]!.blue)
			XCTAssertEqual(191, original[1][0]!.alpha)
			
			XCTAssertEqual(255, original[1][1]!.red)
			XCTAssertEqual(255, original[1][1]!.green)
			XCTAssertEqual(  0, original[1][1]!.blue)
			XCTAssertEqual(255, original[1][1]!.alpha)
		}
		
		if true {
			var image = Image(named: "Test4x4", inBundle: NSBundle(forClass: ImageTests.self), compatibleWithTraitCollection: nil)![1...2, 1...2]!
			var original = image
			
			image[0][0] = Pixel(red:  2, green:  3, blue:  5, alpha:  7)
			image[0][1] = Pixel(red: 11, green: 13, blue: 17, alpha: 19)
			image[1][0] = Pixel(red: 23, green: 29, blue: 31, alpha: 37)
			image[1][1] = Pixel(red: 41, green: 43, blue: 47, alpha: 53)
			
			XCTAssertEqual(  2, image[0][0]!.red)
			XCTAssertEqual(  3, image[0][0]!.green)
			XCTAssertEqual(  5, image[0][0]!.blue)
			XCTAssertEqual(  7, image[0][0]!.alpha)
			
			XCTAssertEqual( 11, image[0][1]!.red)
			XCTAssertEqual( 13, image[0][1]!.green)
			XCTAssertEqual( 17, image[0][1]!.blue)
			XCTAssertEqual( 19, image[0][1]!.alpha)
			
			XCTAssertEqual( 23, image[1][0]!.red)
			XCTAssertEqual( 29, image[1][0]!.green)
			XCTAssertEqual( 31, image[1][0]!.blue)
			XCTAssertEqual( 37, image[1][0]!.alpha)
			
			XCTAssertEqual( 41, image[1][1]!.red)
			XCTAssertEqual( 43, image[1][1]!.green)
			XCTAssertEqual( 47, image[1][1]!.blue)
			XCTAssertEqual( 53, image[1][1]!.alpha)
			
			XCTAssertEqual(  0, original[0][0]!.red)
			XCTAssertEqual(255, original[0][0]!.green)
			XCTAssertEqual(255, original[0][0]!.blue)
			XCTAssertEqual(255, original[0][0]!.alpha)
			
			XCTAssertEqual(255, original[0][1]!.red)
			XCTAssertEqual(255, original[0][1]!.green)
			XCTAssertEqual(255, original[0][1]!.blue)
			XCTAssertEqual(255, original[0][1]!.alpha)
			
			XCTAssertEqual(255, original[1][0]!.red)
			XCTAssertEqual(255, original[1][0]!.green)
			XCTAssertEqual(255, original[1][0]!.blue)
			XCTAssertEqual( 64, original[1][0]!.alpha)
			
			XCTAssertEqual(255, original[1][1]!.red)
			XCTAssertEqual(255, original[1][1]!.green)
			XCTAssertEqual(255, original[1][1]!.blue)
			XCTAssertEqual(127, original[1][1]!.alpha)
		}
	}
	
	func testSubscriptRange() {
		let image = Image(named: "Test4x4", inBundle: NSBundle(forClass: ImageTests.self), compatibleWithTraitCollection: nil)![1...2][1...2]!
		
		XCTAssertEqual(2, image.width)
		XCTAssertEqual(2, image.height)
		
		XCTAssertEqual(  0, image[0][0]!.red)
		XCTAssertEqual(255, image[0][0]!.green)
		XCTAssertEqual(255, image[0][0]!.blue)
		XCTAssertEqual(255, image[0][0]!.alpha)
		
		XCTAssertEqual(255, image[0][1]!.red)
		XCTAssertEqual(255, image[0][1]!.green)
		XCTAssertEqual(255, image[0][1]!.blue)
		XCTAssertEqual(255, image[0][1]!.alpha)
		
		XCTAssertEqual(255, image[1][0]!.red)
		XCTAssertEqual(255, image[1][0]!.green)
		XCTAssertEqual(255, image[1][0]!.blue)
		XCTAssertEqual( 64, image[1][0]!.alpha)
		
		XCTAssertEqual(255, image[1][1]!.red)
		XCTAssertEqual(255, image[1][1]!.green)
		XCTAssertEqual(255, image[1][1]!.blue)
		XCTAssertEqual(127, image[1][1]!.alpha)
		
		let topRight = image[0...0][1...1]!
		
		XCTAssertEqual(1, topRight.width)
		XCTAssertEqual(1, topRight.height)
		
		XCTAssertEqual(255, topRight[0][0]!.red)
		XCTAssertEqual(255, topRight[0][0]!.green)
		XCTAssertEqual(255, topRight[0][0]!.blue)
		XCTAssertEqual(255, topRight[0][0]!.alpha)
		
		let bottomLeft = image[1...1][0...0]!
		
		XCTAssertEqual(1, bottomLeft.width)
		XCTAssertEqual(1, bottomLeft.height)

		XCTAssertEqual(255, bottomLeft[0][0]!.red)
		XCTAssertEqual(255, bottomLeft[0][0]!.green)
		XCTAssertEqual(255, bottomLeft[0][0]!.blue)
		XCTAssertEqual( 64, bottomLeft[0][0]!.alpha)
	}
	
	func testMap() {
		let image = Image(named: "Test2x1", inBundle: NSBundle(forClass: ImageTests.self), compatibleWithTraitCollection: nil)!.map { (var pixel: Pixel) -> Pixel in
			pixel.red /= 2
			pixel.green /= 2
			pixel.blue /= 2
			pixel.alpha /= 2
			return pixel
		}

		XCTAssertEqual(127, image[0][0]!.red)
		XCTAssertEqual(127, image[0][0]!.green)
		XCTAssertEqual(127, image[0][0]!.blue)
		XCTAssertEqual( 63, image[0][0]!.alpha)
		
		XCTAssertEqual(  0, image[0][1]!.red)
		XCTAssertEqual(  0, image[0][1]!.green)
		XCTAssertEqual(  0, image[0][1]!.blue)
		XCTAssertEqual(127, image[0][1]!.alpha)
	}
	
	func testFlipX() {
		let image = Image(named: "Test2x2", inBundle: NSBundle(forClass: ImageTests.self), compatibleWithTraitCollection: nil)!.flipX()

		XCTAssertEqual(  0, image[0][0]!.red)
		XCTAssertEqual(255, image[0][0]!.green)
		XCTAssertEqual(  0, image[0][0]!.blue)
		XCTAssertEqual(127, image[0][0]!.alpha)
		
		XCTAssertEqual(255, image[0][1]!.red)
		XCTAssertEqual(  0, image[0][1]!.green)
		XCTAssertEqual(  0, image[0][1]!.blue)
		XCTAssertEqual( 64, image[0][1]!.alpha)
		
		XCTAssertEqual(255, image[1][0]!.red)
		XCTAssertEqual(255, image[1][0]!.green)
		XCTAssertEqual(  0, image[1][0]!.blue)
		XCTAssertEqual(255, image[1][0]!.alpha)
		
		XCTAssertEqual(  0, image[1][1]!.red)
		XCTAssertEqual(  0, image[1][1]!.green)
		XCTAssertEqual(255, image[1][1]!.blue)
		XCTAssertEqual(191, image[1][1]!.alpha)
		
	}
	
	func testFlipY() {
		let image = Image(named: "Test2x2", inBundle: NSBundle(forClass: ImageTests.self), compatibleWithTraitCollection: nil)!.flipY()
		
		XCTAssertEqual(  0, image[0][0]!.red)
		XCTAssertEqual(  0, image[0][0]!.green)
		XCTAssertEqual(255, image[0][0]!.blue)
		XCTAssertEqual(191, image[0][0]!.alpha)
		
		XCTAssertEqual(255, image[0][1]!.red)
		XCTAssertEqual(255, image[0][1]!.green)
		XCTAssertEqual(  0, image[0][1]!.blue)
		XCTAssertEqual(255, image[0][1]!.alpha)
		
		XCTAssertEqual(255, image[1][0]!.red)
		XCTAssertEqual(  0, image[1][0]!.green)
		XCTAssertEqual(  0, image[1][0]!.blue)
		XCTAssertEqual( 64, image[1][0]!.alpha)
		
		XCTAssertEqual(  0, image[1][1]!.red)
		XCTAssertEqual(255, image[1][1]!.green)
		XCTAssertEqual(  0, image[1][1]!.blue)
		XCTAssertEqual(127, image[1][1]!.alpha)
	}
	
	func testResize() {
		let image = Image(named: "Test2x2", inBundle: NSBundle(forClass: ImageTests.self), compatibleWithTraitCollection: nil)!.resize(width: 4, height: 4, interpolationQuality: CGInterpolationQuality.None)
		
		XCTAssertEqual(4, image.width)
		XCTAssertEqual(4, image.height)
		
		XCTAssertEqual(255, image[0][0]!.red)
		XCTAssertEqual(  0, image[0][0]!.green)
		XCTAssertEqual(  0, image[0][0]!.blue)
		XCTAssertEqual( 64, image[0][0]!.alpha)
		
		XCTAssertEqual(255, image[0][1]!.red)
		XCTAssertEqual(  0, image[0][1]!.green)
		XCTAssertEqual(  0, image[0][1]!.blue)
		XCTAssertEqual( 64, image[0][1]!.alpha)
		
		XCTAssertEqual(255, image[1][0]!.red)
		XCTAssertEqual(  0, image[1][0]!.green)
		XCTAssertEqual(  0, image[1][0]!.blue)
		XCTAssertEqual( 64, image[1][0]!.alpha)
		
		XCTAssertEqual(255, image[1][1]!.red)
		XCTAssertEqual(  0, image[1][1]!.green)
		XCTAssertEqual(  0, image[1][1]!.blue)
		XCTAssertEqual( 64, image[1][1]!.alpha)
		
		XCTAssertEqual(  0, image[0][2]!.red)
		XCTAssertEqual(255, image[0][2]!.green)
		XCTAssertEqual(  0, image[0][2]!.blue)
		XCTAssertEqual(127, image[0][2]!.alpha)
		
		XCTAssertEqual(  0, image[0][3]!.red)
		XCTAssertEqual(255, image[0][3]!.green)
		XCTAssertEqual(  0, image[0][3]!.blue)
		XCTAssertEqual(127, image[0][3]!.alpha)
		
		XCTAssertEqual(  0, image[1][2]!.red)
		XCTAssertEqual(255, image[1][2]!.green)
		XCTAssertEqual(  0, image[1][2]!.blue)
		XCTAssertEqual(127, image[1][2]!.alpha)
		
		XCTAssertEqual(  0, image[1][3]!.red)
		XCTAssertEqual(255, image[1][3]!.green)
		XCTAssertEqual(  0, image[1][3]!.blue)
		XCTAssertEqual(127, image[1][3]!.alpha)
		
		XCTAssertEqual(  0, image[2][0]!.red)
		XCTAssertEqual(  0, image[2][0]!.green)
		XCTAssertEqual(255, image[2][0]!.blue)
		XCTAssertEqual(191, image[2][0]!.alpha)
		
		XCTAssertEqual(  0, image[2][1]!.red)
		XCTAssertEqual(  0, image[2][1]!.green)
		XCTAssertEqual(255, image[2][1]!.blue)
		XCTAssertEqual(191, image[2][1]!.alpha)
		
		XCTAssertEqual(  0, image[3][0]!.red)
		XCTAssertEqual(  0, image[3][0]!.green)
		XCTAssertEqual(255, image[3][0]!.blue)
		XCTAssertEqual(191, image[3][0]!.alpha)
		
		XCTAssertEqual(  0, image[3][1]!.red)
		XCTAssertEqual(  0, image[3][1]!.green)
		XCTAssertEqual(255, image[3][1]!.blue)
		XCTAssertEqual(191, image[3][1]!.alpha)
		
		XCTAssertEqual(255, image[2][2]!.red)
		XCTAssertEqual(255, image[2][2]!.green)
		XCTAssertEqual(  0, image[2][2]!.blue)
		XCTAssertEqual(255, image[2][2]!.alpha)
		
		XCTAssertEqual(255, image[2][3]!.red)
		XCTAssertEqual(255, image[2][3]!.green)
		XCTAssertEqual(  0, image[2][3]!.blue)
		XCTAssertEqual(255, image[2][3]!.alpha)
		
		XCTAssertEqual(255, image[3][2]!.red)
		XCTAssertEqual(255, image[3][2]!.green)
		XCTAssertEqual(  0, image[3][2]!.blue)
		XCTAssertEqual(255, image[3][2]!.alpha)
		
		XCTAssertEqual(255, image[3][3]!.red)
		XCTAssertEqual(255, image[3][3]!.green)
		XCTAssertEqual(  0, image[3][3]!.blue)
		XCTAssertEqual(255, image[3][3]!.alpha)
	}
	
	func testRotate() {
		let image = Image(named: "Test2x1", inBundle: NSBundle(forClass: ImageTests.self), compatibleWithTraitCollection: nil)!

		for times in [-8, -4, 0, 4, 8] {
			let rotated = image.rotate(times)
			
			XCTAssertEqual(2, rotated.width)
			XCTAssertEqual(1, rotated.height)
			
			XCTAssertEqual(255, rotated[0][0]!.red)
			XCTAssertEqual(255, rotated[0][0]!.green)
			XCTAssertEqual(255, rotated[0][0]!.blue)
			XCTAssertEqual(127, rotated[0][0]!.alpha)
			
			XCTAssertEqual(  0, rotated[0][1]!.red)
			XCTAssertEqual(  0, rotated[0][1]!.green)
			XCTAssertEqual(  0, rotated[0][1]!.blue)
			XCTAssertEqual(255, rotated[0][1]!.alpha)
		}
		
		for times in [-7, -3, 1, 5] {
			let rotated = image.rotate(times)

			XCTAssertEqual(1, rotated.width)
			XCTAssertEqual(2, rotated.height)
			
			XCTAssertEqual(255, rotated[0][0]!.red)
			XCTAssertEqual(255, rotated[0][0]!.green)
			XCTAssertEqual(255, rotated[0][0]!.blue)
			XCTAssertEqual(127, rotated[0][0]!.alpha)
			
			XCTAssertEqual(  0, rotated[1][0]!.red)
			XCTAssertEqual(  0, rotated[1][0]!.green)
			XCTAssertEqual(  0, rotated[1][0]!.blue)
			XCTAssertEqual(255, rotated[1][0]!.alpha)
		}
		
		for times in [-6, -2, 2, 6] {
			let rotated = image.rotate(times)
			
			XCTAssertEqual(2, rotated.width)
			XCTAssertEqual(1, rotated.height)
			
			XCTAssertEqual(  0, rotated[0][0]!.red)
			XCTAssertEqual(  0, rotated[0][0]!.green)
			XCTAssertEqual(  0, rotated[0][0]!.blue)
			XCTAssertEqual(255, rotated[0][0]!.alpha)
			
			XCTAssertEqual(255, rotated[0][1]!.red)
			XCTAssertEqual(255, rotated[0][1]!.green)
			XCTAssertEqual(255, rotated[0][1]!.blue)
			XCTAssertEqual(127, rotated[0][1]!.alpha)
		}
		
		for times in [-5, -1, 3, 7] {
			let rotated = image.rotate(times)
			
			XCTAssertEqual(1, rotated.width)
			XCTAssertEqual(2, rotated.height)
			
			XCTAssertEqual(  0, rotated[0][0]!.red)
			XCTAssertEqual(  0, rotated[0][0]!.green)
			XCTAssertEqual(  0, rotated[0][0]!.blue)
			XCTAssertEqual(255, rotated[0][0]!.alpha)
			
			XCTAssertEqual(255, rotated[1][0]!.red)
			XCTAssertEqual(255, rotated[1][0]!.green)
			XCTAssertEqual(255, rotated[1][0]!.blue)
			XCTAssertEqual(127, rotated[1][0]!.alpha)
		}
	}
	
	func testCopyOnWritePerformance() {
		let image = Image(width: 8192, height: 8192)
		measureBlock {
			let copy = image
			XCTAssertEqual(8192 * 8192, copy.count)
		}
	}
	
	func testCopyPerformance() {
		let image = Image(width: 8192, height: 8192)
		measureBlock {
			var copy = image
			copy[0, 0] = Pixel.white
			XCTAssertEqual(8192 * 8192, copy.count)
		}
	}
}
