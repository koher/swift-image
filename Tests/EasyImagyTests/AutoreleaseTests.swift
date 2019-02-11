import XCTest
import EasyImagy

#if canImport(AppKit) || canImport(UIKit)

class AutoreleaseTests: XCTestCase {
    func testPNGData() {
        let image = Image<UInt8>(width: 100, height: 100, pixel: 42)
        
        for _ in 0..<100 {
            let _ = image.data(using: .png)
        }
        
        XCTAssertTrue(true) // Break here and check if `CGImage` instances are released.
    }
    
    func testJPEGData() {
        let image = Image<UInt8>(width: 100, height: 100, pixel: 42)
        
        for _ in 0..<100 {
            let _ = image.data(using: .jpeg(compressionQuality: 0.8))
        }
        
        XCTAssertTrue(true) // Break here and check if `CGImage` instances are released.
    }
}

#endif
