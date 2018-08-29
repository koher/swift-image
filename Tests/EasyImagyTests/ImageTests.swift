import XCTest
import EasyImagy
#if canImport(UIKit)
import UIKit
#endif
#if canImport(AppKit)
import AppKit
#endif

class ImageTests: XCTestCase {
#if canImport(UIKit) || canImport(AppKit)
    func testInitNamed() {
        do {
            let image = Image<RGBA<UInt8>>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png")))!
            
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
#endif
    
    func testInitWithImageSlice() {
        let original = Image<UInt8>(width: 5, height: 4, pixels: [
            0, 0, 0, 0, 0,
            0, 1, 2, 3, 0,
            0, 4, 5, 6, 0,
            0, 0, 0, 0, 0,
        ])
        let slice: ImageSlice<UInt8> = original[1...3, 1...2]
        let image = Image(slice)
        XCTAssertEqual(image, Image<UInt8>(width: 3, height: 2, pixels: [
            1, 2, 3,
            4, 5, 6,
        ]))
    }
    
	func testSequence() {
        let image = Image<UInt8>(width: 3, height: 2, pixels: [
            1, 2, 3,
            4, 5, 6,
        ])
        
        var iterator = image.makeIterator()
        
        XCTAssertEqual(iterator.next(), 1)
        XCTAssertEqual(iterator.next(), 2)
        XCTAssertEqual(iterator.next(), 3)
        XCTAssertEqual(iterator.next(), 4)
        XCTAssertEqual(iterator.next(), 5)
        XCTAssertEqual(iterator.next(), 6)
        XCTAssertNil(iterator.next())
	}
	
	func testSubscriptGet() {
        let image = Image<UInt8>(width: 3, height: 2, pixels: [
            1, 2, 3,
            4, 5, 6,
        ])
        
        XCTAssertEqual(image[0, 0], 1)
        XCTAssertEqual(image[1, 0], 2)
        XCTAssertEqual(image[2, 0], 3)

        XCTAssertEqual(image[0, 1], 4)
        XCTAssertEqual(image[1, 1], 5)
        XCTAssertEqual(image[2, 1], 6)
	}
	
	func testSubscriptSet() {
        var image = Image<UInt8>(width: 3, height: 2, pixels: [
            1, 2, 3,
            4, 5, 6,
        ])
        let original = image
        
        image[0, 0] = 11
        image[1, 0] = 12
        image[2, 0] = 13
        image[0, 1] = 14
        image[1, 1] = 15
        image[2, 1] = 16

        XCTAssertEqual(image[0, 0], 11)
        XCTAssertEqual(image[1, 0], 12)
        XCTAssertEqual(image[2, 0], 13)
        
        XCTAssertEqual(image[0, 1], 14)
        XCTAssertEqual(image[1, 1], 15)
        XCTAssertEqual(image[2, 1], 16)

        XCTAssertEqual(original[0, 0], 1)
        XCTAssertEqual(original[1, 0], 2)
        XCTAssertEqual(original[2, 0], 3)
        
        XCTAssertEqual(original[0, 1], 4)
        XCTAssertEqual(original[1, 1], 5)
        XCTAssertEqual(original[2, 1], 6)
    }
    
	func testSubscriptRange() {
        let image = Image<UInt8>(width: 5, height: 4, pixels: [
            0, 0, 0, 0, 0,
            0, 1, 2, 3, 0,
            0, 4, 5, 6, 0,
            0, 0, 0, 0, 0,
        ])
        let slice: ImageSlice<UInt8> = image[1...3, 1...2]

        XCTAssertEqual(slice.width, 3)
        XCTAssertEqual(slice.height, 2)
        
        XCTAssertEqual(slice[1, 1], 1)
        XCTAssertEqual(slice[2, 1], 2)
        XCTAssertEqual(slice[3, 1], 3)
        
        XCTAssertEqual(slice[1, 2], 4)
        XCTAssertEqual(slice[2, 2], 5)
        XCTAssertEqual(slice[3, 2], 6)
	}

    func testPixel() {
        let image = Image<UInt8>(width: 3, height: 2, pixels: [
            1, 2, 3,
            4, 5, 6,
        ])

        XCTAssertEqual(image.pixelAt(x: 0, y: 0), 1)
        XCTAssertEqual(image.pixelAt(x: 1, y: 0), 2)
        XCTAssertEqual(image.pixelAt(x: 2, y: 0), 3)
        
        XCTAssertEqual(image.pixelAt(x: 0, y: 1), 4)
        XCTAssertEqual(image.pixelAt(x: 1, y: 1), 5)
        XCTAssertEqual(image.pixelAt(x: 2, y: 1), 6)

        XCTAssertNil(image.pixelAt(x: -1, y: 0))
        XCTAssertNil(image.pixelAt(x: 3, y: 0))
        XCTAssertNil(image.pixelAt(x: 0, y: -1))
        XCTAssertNil(image.pixelAt(x: 0, y: 2))
    }
    
    func testWithUnsafeBufferPointer() {
        let image = Image<UInt8>(width: 3, height: 2, pixels: [
            1, 2, 3,
            4, 5, 6,
        ])
        
        image.withUnsafeBufferPointer { p in
            XCTAssertEqual(p.count, 6)
            
            XCTAssertEqual(p[0], 1)
            XCTAssertEqual(p[1], 2)
            XCTAssertEqual(p[2], 3)
            XCTAssertEqual(p[3], 4)
            XCTAssertEqual(p[4], 5)
            XCTAssertEqual(p[5], 6)
        }
    }
	
    func testWithUnsafeMutableBufferPointer() {
        var image = Image<UInt8>(width: 3, height: 2, pixels: [
            1, 2, 3,
            4, 5, 6,
        ])
        
        image.withUnsafeMutableBufferPointer { p in
            XCTAssertEqual(p.count, 6)
            
            XCTAssertEqual(p[0], 1)
            XCTAssertEqual(p[1], 2)
            XCTAssertEqual(p[2], 3)
            XCTAssertEqual(p[3], 4)
            XCTAssertEqual(p[4], 5)
            XCTAssertEqual(p[5], 6)
            
            p[0] += 10
            p[1] += 10
            p[2] += 10
            p[3] += 10
            p[4] += 10
            p[5] += 10
        }
        
        XCTAssertEqual(image.pixelAt(x: 0, y: 0), 11)
        XCTAssertEqual(image.pixelAt(x: 1, y: 0), 12)
        XCTAssertEqual(image.pixelAt(x: 2, y: 0), 13)
        
        XCTAssertEqual(image.pixelAt(x: 0, y: 1), 14)
        XCTAssertEqual(image.pixelAt(x: 1, y: 1), 15)
        XCTAssertEqual(image.pixelAt(x: 2, y: 1), 16)
    }
    
    func testWithUnsafeBytes() {
        let image = Image<UInt8>(width: 3, height: 2, pixels: [
            1, 2, 3,
            4, 5, 6,
        ])
        
        image.withUnsafeBytes { p in
            XCTAssertEqual(p.count, 6)
            
            XCTAssertEqual(p[0], 1)
            XCTAssertEqual(p[1], 2)
            XCTAssertEqual(p[2], 3)
            XCTAssertEqual(p[3], 4)
            XCTAssertEqual(p[4], 5)
            XCTAssertEqual(p[5], 6)
        }
    }
    
    func testWithUnsafeMutableBytes() {
        var image = Image<UInt8>(width: 3, height: 2, pixels: [
            1, 2, 3,
            4, 5, 6,
        ])
        
        image.withUnsafeMutableBytes { p in
            XCTAssertEqual(p.count, 6)
            
            XCTAssertEqual(p[0], 1)
            XCTAssertEqual(p[1], 2)
            XCTAssertEqual(p[2], 3)
            XCTAssertEqual(p[3], 4)
            XCTAssertEqual(p[4], 5)
            XCTAssertEqual(p[5], 6)
            
            p[0] += 10
            p[1] += 10
            p[2] += 10
            p[3] += 10
            p[4] += 10
            p[5] += 10
        }
        
        XCTAssertEqual(image.pixelAt(x: 0, y: 0), 11)
        XCTAssertEqual(image.pixelAt(x: 1, y: 0), 12)
        XCTAssertEqual(image.pixelAt(x: 2, y: 0), 13)
        
        XCTAssertEqual(image.pixelAt(x: 0, y: 1), 14)
        XCTAssertEqual(image.pixelAt(x: 1, y: 1), 15)
        XCTAssertEqual(image.pixelAt(x: 2, y: 1), 16)
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
    
#if canImport(UIKit) || canImport(AppKit)
    func testData() {
        do {
            let image = Image<UInt8>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ])
            guard let data: Data = image.data(using: .png) else {
                XCTFail()
                fatalError()
            }
            guard let restored = Image<UInt8>(data: data) else {
                XCTFail()
                fatalError()
            }
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<Double>(width: 3, height: 2, pixels: [
                0.1, 0.2, 0.3,
                0.4, 0.5, 0.6
            ])
            guard let data: Data = image.data(using: .jpeg(compressionQuality: 0.95)) else {
                XCTFail()
                fatalError()
            }
            guard let restored = Image<Double>(data: data) else {
                XCTFail()
                fatalError()
            }
            XCTAssertEqual(restored, image, accuracy: 0.01)
        }
        
        do {
            let image = Image<UInt8>(width: 0, height: 0, pixels: [])
            XCTAssertNil(image.data(using: .png))
        }
        
        do {
            let image = Image<UInt8>(width: 0, height: 42, pixels: [])
            XCTAssertNil(image.data(using: .png))
        }
        
        do {
            let image = Image<UInt8>(width: 42, height: 0, pixels: [])
            XCTAssertNil(image.data(using: .png))
        }
    }
#endif
    
    static var allTests = [
        ("testInitWithImageSlice", testInitWithImageSlice),
        ("testSequence", testSequence),
        ("testSubscriptGet", testSubscriptGet),
        ("testSubscriptSet", testSubscriptSet),
        ("testSubscriptRange", testSubscriptRange),
        ("testPixel", testPixel),
        ("testWithUnsafeBufferPointer", testWithUnsafeBufferPointer),
        ("testWithUnsafeMutableBufferPointer", testWithUnsafeMutableBufferPointer),
        ("testWithUnsafeBytes", testWithUnsafeBytes),
        ("testWithUnsafeMutableBytes", testWithUnsafeMutableBytes),
        ("testCopyOnWritePerformanceOfCopy", testCopyOnWritePerformanceOfCopy),
        ("testCopyOnWritePerformanceOfUpdate", testCopyOnWritePerformanceOfUpdate),
        ("testCopyPerformance", testCopyPerformance),
    ]
}
