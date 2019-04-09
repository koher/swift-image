import XCTest
import EasyImagy

class AppUIKitTests: XCTestCase {
    func testPNGData() {
        #if (canImport(AppKit) || canImport(UIKit)) && canImport(CoreGraphics)
        do {
            let image = Image<RGBA<UInt8>>(width: 3, height: 2, pixels: [
                RGBA<UInt8>(red: 0, green: 1, blue: 2),
                RGBA<UInt8>(red: 3, green: 4, blue: 5),
                RGBA<UInt8>(red: 6, green: 7, blue: 8),
                RGBA<UInt8>(red: 9, green: 10, blue: 11),
                RGBA<UInt8>(red: 12, green: 13, blue: 14),
                RGBA<UInt8>(red: 15, green: 16, blue: 17),
                ])
            let data = image.pngData()!
            let restored = Image<RGBA<UInt8>>(data: data)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<UInt8>(width: 3, height: 2, pixels: [
                0, 1, 2,
                3, 4, 5,
                ])
            let data = image.pngData()!
            let restored = Image<UInt8>(data: data)
            XCTAssertEqual(restored, image)
        }
        #endif
    }
    
    func testJPEGData() {
        #if (canImport(AppKit) || canImport(UIKit)) && canImport(CoreGraphics)
        do {
            let image = Image<RGBA<Double>>(width: 3, height: 2, pixels: [
                RGBA<Double>(red: 0.00, green: 0.01, blue: 0.02),
                RGBA<Double>(red: 0.03, green: 0.04, blue: 0.05),
                RGBA<Double>(red: 0.06, green: 0.07, blue: 0.08),
                RGBA<Double>(red: 0.09, green: 0.10, blue: 0.11),
                RGBA<Double>(red: 0.12, green: 0.13, blue: 0.14),
                RGBA<Double>(red: 0.15, green: 0.16, blue: 0.17),
                ])
            let data = image.jpegData(compressionQuality: 1.0)!
            let restored = Image<RGBA<Double>>(data: data)!
            XCTAssertEqual(restored, image, accuracy: 0.01)
        }
        
        do {
            let image = Image<Double>(width: 3, height: 2, pixels: [
                0.00, 0.01, 0.02,
                0.03, 0.04, 0.05,
                ])
            let data = image.jpegData(compressionQuality: 1.0)!
            let restored = Image<Double>(data: data)!
            XCTAssertEqual(restored, image, accuracy: 0.01)
        }
        #endif
    }
}
