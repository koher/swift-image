#if canImport(UIKit) && canImport(CoreGraphics)
    import XCTest
    import EasyImagy
    import CoreGraphics
    import UIKit

    class UIKitTests: XCTestCase {
        func testInitWithUIImage() {
            do {
                let uiImage = UIImage(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png")))!
                let image = Image<RGBA<UInt8>>(uiImage: uiImage)
                
                XCTAssertEqual(image.width, 2)
                XCTAssertEqual(image.height, 2)
                
                XCTAssertEqual(image[0, 0].red,   255)
                XCTAssertEqual(image[0, 0].green,   0)
                XCTAssertEqual(image[0, 0].blue,    0)
                XCTAssertEqual(image[0, 0].alpha,  64)

                XCTAssertEqual(image[1, 0].red,     0)
                XCTAssertEqual(image[1, 0].green, 255)
                XCTAssertEqual(image[1, 0].blue,    0)
                XCTAssertEqual(image[1, 0].alpha, 127)

                XCTAssertEqual(image[0, 1].red,     0)
                XCTAssertEqual(image[0, 1].green,   0)
                XCTAssertEqual(image[0, 1].blue,  255)
                XCTAssertEqual(image[0, 1].alpha, 191)
                
                XCTAssertEqual(image[1, 1].red,   255)
                XCTAssertEqual(image[1, 1].green, 255)
                XCTAssertEqual(image[1, 1].blue,    0)
                XCTAssertEqual(image[1, 1].alpha, 255)
            }
            
            do { // ImageSlice
                let uiImage = UIImage(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png")))!
                let slice = ImageSlice<RGBA<UInt8>>(uiImage: uiImage)
                
                XCTAssertEqual(slice.width, 2)
                XCTAssertEqual(slice.height, 2)
                
                XCTAssertEqual(slice[0, 0].red,   255)
                XCTAssertEqual(slice[0, 0].green,   0)
                XCTAssertEqual(slice[0, 0].blue,    0)
                XCTAssertEqual(slice[0, 0].alpha,  64)
                
                XCTAssertEqual(slice[1, 0].red,     0)
                XCTAssertEqual(slice[1, 0].green, 255)
                XCTAssertEqual(slice[1, 0].blue,    0)
                XCTAssertEqual(slice[1, 0].alpha, 127)
                
                XCTAssertEqual(slice[0, 1].red,     0)
                XCTAssertEqual(slice[0, 1].green,   0)
                XCTAssertEqual(slice[0, 1].blue,  255)
                XCTAssertEqual(slice[0, 1].alpha, 191)
                
                XCTAssertEqual(slice[1, 1].red,   255)
                XCTAssertEqual(slice[1, 1].green, 255)
                XCTAssertEqual(slice[1, 1].blue,    0)
                XCTAssertEqual(slice[1, 1].alpha, 255)
            }
            
            do { // `PremultipliedRGBA`
                let uiImage = UIImage(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png")))!
                let image = Image<PremultipliedRGBA<UInt8>>(uiImage: uiImage)
                
                XCTAssertEqual(image.width, 2)
                XCTAssertEqual(image.height, 2)
                
                XCTAssertEqual(image[0, 0].red,    64)
                XCTAssertEqual(image[0, 0].green,   0)
                XCTAssertEqual(image[0, 0].blue,    0)
                XCTAssertEqual(image[0, 0].alpha,  64)
                
                XCTAssertEqual(image[1, 0].red,     0)
                XCTAssertEqual(image[1, 0].green, 127)
                XCTAssertEqual(image[1, 0].blue,    0)
                XCTAssertEqual(image[1, 0].alpha, 127)
                
                XCTAssertEqual(image[0, 1].red,     0)
                XCTAssertEqual(image[0, 1].green,   0)
                XCTAssertEqual(image[0, 1].blue,  191)
                XCTAssertEqual(image[0, 1].alpha, 191)
                
                XCTAssertEqual(image[1, 1].red,   255)
                XCTAssertEqual(image[1, 1].green, 255)
                XCTAssertEqual(image[1, 1].blue,    0)
                XCTAssertEqual(image[1, 1].alpha, 255)
            }
            
            do { // With `UIImage` from `CGImage`
                let dataProvider = CGDataProvider.init(data: try! Data(contentsOf: URL(fileURLWithPath: (#file as NSString).deletingLastPathComponent).appendingPathComponent("Test2x2.png")) as CFData)!
                let cgImage = CGImage(pngDataProviderSource: dataProvider, decode: nil, shouldInterpolate: false, intent: .defaultIntent)!
                let uiImage = UIImage(cgImage: cgImage)
                let image = Image<RGBA<UInt8>>(uiImage: uiImage)
                
                XCTAssertEqual(image.width, 2)
                XCTAssertEqual(image.height, 2)
                
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
            
            #if os(iOS) || os(tvOS)
            do { // With `UIImage` from `CIImage`
                let ciImage = CIImage(color: CIColor.red).cropped(to: CGRect(x: 0, y: 0, width: 1, height: 1))
                let uiImage = UIImage(ciImage: ciImage)
                let image = Image<RGBA<UInt8>>(uiImage: uiImage)
                
                XCTAssertEqual(image.width, 1)
                XCTAssertEqual(image.height, 1)
                
                XCTAssertEqual(255, image[0, 0].red)
                XCTAssertEqual(  0, image[0, 0].green)
                XCTAssertEqual(  0, image[0, 0].blue)
                XCTAssertEqual(255, image[0, 0].alpha)
            }
            #endif

            do { // With `UIImage` whose `cgImage` and `ciImage` are `nil`
                let uiImage = UIImage()
                let image = Image<RGBA<UInt8>>(uiImage: uiImage)
                XCTAssertEqual(image.width, 0)
                XCTAssertEqual(image.height, 0)
            }
        }
        
        func testUIImage() {
            do {
                let original = Image<RGBA<UInt8>>(width: 2, height: 2, pixels: [
                    RGBA<UInt8>(red: 0, green: 1, blue: 2, alpha: 255),
                    RGBA<UInt8>(red: 253, green: 254, blue: 255, alpha: 255),
                    RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 102),
                    RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 51),
                ])
                let uiImage = original.uiImage
                XCTAssertEqual(uiImage.size.width, CGFloat(original.width))
                XCTAssertEqual(uiImage.size.height, CGFloat(original.height))
                
                let restored = Image<RGBA<UInt8>>(uiImage: uiImage)
                XCTAssertEqual(restored, original)
            }
            
            do {
                let original = Image<PremultipliedRGBA<UInt8>>(width: 2, height: 2, pixels: [
                    PremultipliedRGBA<UInt8>(red: 0, green: 1, blue: 2, alpha: 255),
                    PremultipliedRGBA<UInt8>(red: 253, green: 254, blue: 255, alpha: 255),
                    PremultipliedRGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 102),
                    PremultipliedRGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 51),
                ])
                let uiImage = original.uiImage
                XCTAssertEqual(uiImage.size.width, CGFloat(original.width))
                XCTAssertEqual(uiImage.size.height, CGFloat(original.height))
                
                let restored = Image<PremultipliedRGBA<UInt8>>(uiImage: uiImage)
                XCTAssertEqual(restored, original)
            }
            
            do {
                let original = Image<UInt8>(width: 2, height: 2, pixels: [0, 1, 127, 255])
                let uiImage = original.uiImage
                XCTAssertEqual(uiImage.size.width, CGFloat(original.width))
                XCTAssertEqual(uiImage.size.height, CGFloat(original.height))
                
                let restored = Image<UInt8>(uiImage: uiImage)
                XCTAssertEqual(restored, original)
            }
            
            do { // `ImageSlice`
                let original = ImageSlice<RGBA<UInt8>>(width: 2, height: 2, pixels: [
                    RGBA<UInt8>(red: 0, green: 1, blue: 2, alpha: 255),
                    RGBA<UInt8>(red: 253, green: 254, blue: 255, alpha: 255),
                    RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 102),
                    RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 51),
                ])
                let uiImage = original.uiImage
                XCTAssertEqual(uiImage.size.width, CGFloat(original.width))
                XCTAssertEqual(uiImage.size.height, CGFloat(original.height))
                
                let restored = ImageSlice<RGBA<UInt8>>(uiImage: uiImage)
                XCTAssertEqual(restored, original)
            }
        }
        
        func testInitWithUIImagePerformance() {
            let original = Image<RGBA<UInt8>>(width: 640, height: 480, pixel: RGBA<UInt8>(
                red: .random(in: 0...255),
                green: .random(in: 0...255),
                blue: .random(in: 0...255),
                alpha: 255
            ))
            let uiImage = original.uiImage
            
            var restored: Image<RGBA<UInt8>>! = nil
            measure {
                restored = Image<RGBA<UInt8>>(uiImage: uiImage)
            }
            XCTAssertEqual(restored, original)
        }
        
        func testUIImagePerformance() {
            let original = Image<RGBA<UInt8>>(width: 640, height: 480, pixel: RGBA<UInt8>(
                red: .random(in: 0...255),
                green: .random(in: 0...255),
                blue: .random(in: 0...255),
                alpha: 255
            ))
            
            var uiImage: UIImage!
            measure {
                uiImage = original.uiImage
            }
            let restored = Image<RGBA<UInt8>>(uiImage: uiImage)
            XCTAssertEqual(restored, original)
        }
    }
#endif
