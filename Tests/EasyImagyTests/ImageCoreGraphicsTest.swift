import XCTest
import EasyImagy

#if os(iOS) || os(macOS) || os(tvOS)
    import CoreGraphics

    class ImageCoreGraphicsTests: XCTestCase {
        func testCgImage() {
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
        }
        
        func testResizedTo() {
            do {
                let image = Image<RGBA<UInt8>>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png")))!.resizedTo(width: 4, height: 4, interpolationQuality: CGInterpolationQuality.none)
                
                XCTAssertEqual(4, image.width)
                XCTAssertEqual(4, image.height)
                
                XCTAssertEqual(255, image[0, 0].red)
                XCTAssertEqual(  0, image[0, 0].green)
                XCTAssertEqual(  0, image[0, 0].blue)
                XCTAssertEqual( 64, image[0, 0].alpha)
                
                XCTAssertEqual(255, image[1, 0].red)
                XCTAssertEqual(  0, image[1, 0].green)
                XCTAssertEqual(  0, image[1, 0].blue)
                XCTAssertEqual( 64, image[1, 0].alpha)
                
                XCTAssertEqual(255, image[0, 1].red)
                XCTAssertEqual(  0, image[0, 1].green)
                XCTAssertEqual(  0, image[0, 1].blue)
                XCTAssertEqual( 64, image[0, 1].alpha)
                
                XCTAssertEqual(255, image[1, 1].red)
                XCTAssertEqual(  0, image[1, 1].green)
                XCTAssertEqual(  0, image[1, 1].blue)
                XCTAssertEqual( 64, image[1, 1].alpha)
                
                XCTAssertEqual(  0, image[2, 0].red)
                XCTAssertEqual(255, image[2, 0].green)
                XCTAssertEqual(  0, image[2, 0].blue)
                XCTAssertEqual(127, image[2, 0].alpha)
                
                XCTAssertEqual(  0, image[3, 0].red)
                XCTAssertEqual(255, image[3, 0].green)
                XCTAssertEqual(  0, image[3, 0].blue)
                XCTAssertEqual(127, image[3, 0].alpha)
                
                XCTAssertEqual(  0, image[2, 1].red)
                XCTAssertEqual(255, image[2, 1].green)
                XCTAssertEqual(  0, image[2, 1].blue)
                XCTAssertEqual(127, image[2, 1].alpha)
                
                XCTAssertEqual(  0, image[3, 1].red)
                XCTAssertEqual(255, image[3, 1].green)
                XCTAssertEqual(  0, image[3, 1].blue)
                XCTAssertEqual(127, image[3, 1].alpha)
                
                XCTAssertEqual(  0, image[0, 2].red)
                XCTAssertEqual(  0, image[0, 2].green)
                XCTAssertEqual(255, image[0, 2].blue)
                XCTAssertEqual(191, image[0, 2].alpha)
                
                XCTAssertEqual(  0, image[1, 2].red)
                XCTAssertEqual(  0, image[1, 2].green)
                XCTAssertEqual(255, image[1, 2].blue)
                XCTAssertEqual(191, image[1, 2].alpha)
                
                XCTAssertEqual(  0, image[0, 3].red)
                XCTAssertEqual(  0, image[0, 3].green)
                XCTAssertEqual(255, image[0, 3].blue)
                XCTAssertEqual(191, image[0, 3].alpha)
                
                XCTAssertEqual(  0, image[1, 3].red)
                XCTAssertEqual(  0, image[1, 3].green)
                XCTAssertEqual(255, image[1, 3].blue)
                XCTAssertEqual(191, image[1, 3].alpha)
                
                XCTAssertEqual(255, image[2, 2].red)
                XCTAssertEqual(255, image[2, 2].green)
                XCTAssertEqual(  0, image[2, 2].blue)
                XCTAssertEqual(255, image[2, 2].alpha)
                
                XCTAssertEqual(255, image[3, 2].red)
                XCTAssertEqual(255, image[3, 2].green)
                XCTAssertEqual(  0, image[3, 2].blue)
                XCTAssertEqual(255, image[3, 2].alpha)
                
                XCTAssertEqual(255, image[2, 3].red)
                XCTAssertEqual(255, image[2, 3].green)
                XCTAssertEqual(  0, image[2, 3].blue)
                XCTAssertEqual(255, image[2, 3].alpha)
                
                XCTAssertEqual(255, image[3, 3].red)
                XCTAssertEqual(255, image[3, 3].green)
                XCTAssertEqual(  0, image[3, 3].blue)
                XCTAssertEqual(255, image[3, 3].alpha)
            }
            
            do {
                let image: Image<UInt8> = Image<RGBA<UInt8>>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png")))!.resizedTo(width: 4, height: 4, interpolationQuality: CGInterpolationQuality.none).map { $0.alpha }
                
                XCTAssertEqual( 64, image[0, 0])
                XCTAssertEqual( 64, image[1, 0])
                XCTAssertEqual( 64, image[0, 1])
                XCTAssertEqual( 64, image[1, 1])
                
                XCTAssertEqual(127, image[2, 0])
                XCTAssertEqual(127, image[3, 0])
                XCTAssertEqual(127, image[2, 1])
                XCTAssertEqual(127, image[3, 1])
                
                XCTAssertEqual(191, image[0, 2])
                XCTAssertEqual(191, image[1, 2])
                XCTAssertEqual(191, image[0, 3])
                XCTAssertEqual(191, image[1, 3])
                
                XCTAssertEqual(255, image[2, 2])
                XCTAssertEqual(255, image[3, 2])
                XCTAssertEqual(255, image[2, 3])
                XCTAssertEqual(255, image[3, 3])
            }
            
            do {
                let image: Image<Float> = Image<RGBA<UInt8>>(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png")))!.resizedTo(width: 4, height: 4, interpolationQuality: CGInterpolationQuality.none).map { Float($0.alpha) / 255.0 }
                
                XCTAssertEqual(0.25, image[0, 0], accuracy: 0.002)
                XCTAssertEqual(0.25, image[1, 0], accuracy: 0.002)
                XCTAssertEqual(0.25, image[0, 1], accuracy: 0.002)
                XCTAssertEqual(0.25, image[1, 1], accuracy: 0.002)
                
                XCTAssertEqual(0.5,  image[2, 0], accuracy: 0.002)
                XCTAssertEqual(0.5,  image[3, 0], accuracy: 0.002)
                XCTAssertEqual(0.5,  image[2, 1], accuracy: 0.002)
                XCTAssertEqual(0.5,  image[3, 1], accuracy: 0.002)
                
                XCTAssertEqual(0.75, image[0, 2], accuracy: 0.002)
                XCTAssertEqual(0.75, image[1, 2], accuracy: 0.002)
                XCTAssertEqual(0.75, image[0, 3], accuracy: 0.002)
                XCTAssertEqual(0.75, image[1, 3], accuracy: 0.002)
                
                XCTAssertEqual(1.0,  image[2, 2], accuracy: 0.002)
                XCTAssertEqual(1.0,  image[3, 2], accuracy: 0.002)
                XCTAssertEqual(1.0,  image[2, 3], accuracy: 0.002)
                XCTAssertEqual(1.0,  image[3, 3], accuracy: 0.002)
            }
        }
    }

#endif
