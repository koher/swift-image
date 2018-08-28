import XCTest
import EasyImagy

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
            let original = Image<UInt8>(width: 5, height: 4, pixels: [
                0, 0, 0, 0, 0,
                0, 1, 2, 3, 0,
                0, 4, 5, 6, 0,
                0, 0, 0, 0, 0,
            ])
            let slice: ImageSlice<UInt8> = original[1...3, 1...2]

            var iterator = slice.makeIterator()
            
            XCTAssertEqual(iterator.next(), 1)
            XCTAssertEqual(iterator.next(), 2)
            XCTAssertEqual(iterator.next(), 3)
            XCTAssertEqual(iterator.next(), 4)
            XCTAssertEqual(iterator.next(), 5)
            XCTAssertEqual(iterator.next(), 6)
            XCTAssertNil(iterator.next())
        }
    }
    
    func testSubscriptRange() {
        do {
            let original = Image<UInt8>(width: 5, height: 4, pixels: [
                0, 0, 0, 0, 0,
                0, 1, 2, 3, 0,
                0, 4, 5, 6, 0,
                0, 0, 0, 0, 0,
            ])
            let slice: ImageSlice<UInt8> = original[1...3, 1...2]
            
            do {
                let slice2: ImageSlice<UInt8> = slice[1...1, 1...2]
                
                XCTAssertEqual(slice2.width, 1)
                XCTAssertEqual(slice2.height, 2)
                
                XCTAssertEqual(slice[1, 1], 1)
                XCTAssertEqual(slice[1, 2], 4)
            }
            
            do {
                let slice2: ImageSlice<UInt8> = slice[2...3, 2...2]
                
                XCTAssertEqual(slice2.width, 2)
                XCTAssertEqual(slice2.height, 1)
                
                XCTAssertEqual(slice[2, 2], 5)
                XCTAssertEqual(slice[3, 2], 6)
            }
        }
        
        do {
            let original = Image<UInt8>(width: 4, height: 5, pixels: [
                0, 0, 0, 0,
                0, 1, 2, 0,
                0, 3, 4, 0,
                0, 5, 6, 0,
                0, 0, 0, 0,
            ])
            let slice: ImageSlice<UInt8> = original[1...2, 1...3]
            
            do {
                let slice2: ImageSlice<UInt8> = slice[1...2, 1...1]
                
                XCTAssertEqual(slice2.width, 2)
                XCTAssertEqual(slice2.height, 1)
                
                XCTAssertEqual(slice[1, 1], 1)
                XCTAssertEqual(slice[2, 1], 2)
            }
            
            do {
                let slice2: ImageSlice<UInt8> = slice[2...2, 2...3]
                
                XCTAssertEqual(slice2.width, 1)
                XCTAssertEqual(slice2.height, 2)
                
                XCTAssertEqual(slice[2, 2], 4)
                XCTAssertEqual(slice[2, 3], 6)
            }
        }
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
    
    static var allTests = [
        ("testInit", testInit),
        ("testSequence", testSequence),
        ("testSubscriptRange", testSubscriptRange),
        ("testPixel", testPixel),
    ]
}
