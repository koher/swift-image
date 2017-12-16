import XCTest
import EasyImagy

#if os(iOS) || os(macOS) || os(tvOS)
    import CoreGraphics

    class ImageCoreGraphicsTests: XCTestCase {
        func testCGImage() {
            do {
                let image = Image<RGBA<UInt8>>(width: 2, height: 2, pixels: [
                    RGBA<UInt8>(red: 0, green: 1, blue: 2, alpha: 255),
                    RGBA<UInt8>(red: 253, green: 254, blue: 255, alpha: 255),
                    RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 102),
                    RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 51),
                ])
                let cgImage = image.cgImage
                XCTAssertEqual(cgImage.width, image.width)
                XCTAssertEqual(cgImage.height, image.height)
                
                let restored = Image<RGBA<UInt8>>(cgImage: cgImage)
                XCTAssertEqual(restored.width, image.width)
                XCTAssertEqual(restored.height, image.height)
                XCTAssertEqual(restored[0, 0], image[0, 0])
                XCTAssertEqual(restored[1, 0], image[1, 0])
                XCTAssertEqual(restored[0, 1], image[0, 1])
                XCTAssertEqual(restored[1, 1], image[1, 1])
            }
            
            do {
                let image = Image<UInt8>(width: 2, height: 2, pixels: [0, 1, 127, 255])
                let cgImage = image.cgImage
                XCTAssertEqual(cgImage.width, image.width)
                XCTAssertEqual(cgImage.height, image.height)
                
                let restored = Image<UInt8>(cgImage: cgImage)
                XCTAssertEqual(restored.width, image.width)
                XCTAssertEqual(restored.height, image.height)
                XCTAssertEqual(restored[0, 0], image[0, 0])
                XCTAssertEqual(restored[1, 0], image[1, 0])
                XCTAssertEqual(restored[0, 1], image[0, 1])
                XCTAssertEqual(restored[1, 1], image[1, 1])
            }
            
            do {
                let image = Image<RGBA<Float>>(width: 2, height: 2, pixels: [
                    RGBA(red: 1.0, green: 0.066666666666666666, blue: 0.13333333333333333, alpha: 1.0),
                    RGBA(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.066666666666666666),
                    RGBA(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0),
                    RGBA(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
                ])
                let cgImage = image.cgImage
                XCTAssertEqual(cgImage.width, image.width)
                XCTAssertEqual(cgImage.height, image.height)
                
                let restored = Image<RGBA<Float>>(cgImage: cgImage)
                XCTAssertEqual(restored, image)
            }
            
            do {
                let image = Image<Float>(width: 2, height: 2, pixels: [
                    0.0, 0.066666666666666666, 0.13333333333333333, 1.0
                ])
                let cgImage = image.cgImage
                XCTAssertEqual(cgImage.width, image.width)
                XCTAssertEqual(cgImage.height, image.height)
                
                let restored = Image<Float>(cgImage: cgImage)
                XCTAssertEqual(restored, image)
            }
            
            do {
                let image = Image<RGBA<Bool>>(width: 2, height: 2, pixels: [
                    RGBA(red: true, green: false, blue: false, alpha: true),
                    RGBA(red: false, green: false, blue: false, alpha: false),
                    RGBA(red: true, green: true, blue: true, alpha: true),
                    RGBA(red: false, green: false, blue: true, alpha: true),
                    ])
                let cgImage = image.cgImage
                XCTAssertEqual(cgImage.width, image.width)
                XCTAssertEqual(cgImage.height, image.height)
                
                let restored = Image<RGBA<Bool>>(cgImage: cgImage)
                XCTAssertEqual(restored, image)
            }
            
            do {
                let image = Image<Bool>(width: 2, height: 2, pixels: [
                    true, false, false, true
                    ])
                let cgImage = image.cgImage
                XCTAssertEqual(cgImage.width, image.width)
                XCTAssertEqual(cgImage.height, image.height)
                
                let restored = Image<Bool>(cgImage: cgImage)
                XCTAssertEqual(restored, image)
            }
        }
    }

#endif
