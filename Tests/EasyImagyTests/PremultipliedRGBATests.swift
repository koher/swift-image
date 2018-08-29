import XCTest
import EasyImagy

class PremultipliedRGBATests: XCTestCase {
    func testInit() {
        do {
            let r = PremultipliedRGBA<UInt8>(RGBA<UInt8>(red: 255, green: 255, blue: 255, alpha: 123))
            XCTAssertEqual(r, PremultipliedRGBA<UInt8>(red: 123, green: 123, blue: 123, alpha: 123))
        }
        
        do {
            let r = PremultipliedRGBA<UInt8>(RGBA<UInt8>(red: 50, green: 100, blue: 200, alpha: 127))
            XCTAssertEqual(r, PremultipliedRGBA<UInt8>(red: 24, green: 49, blue: 99, alpha: 127))
        }
        
        do {
            let r = PremultipliedRGBA<Double>(RGBA<Double>(red: 0.5, green: 0.25, blue: 0.125, alpha: 0.5))
            XCTAssertEqual(r, PremultipliedRGBA<Double>(red: 0.25, green: 0.125, blue: 0.0625, alpha: 0.5))
        }

        do {
            let r = PremultipliedRGBA<UInt8>(0xCCDDEEFF)
            XCTAssertEqual(r, PremultipliedRGBA<UInt8>(red: 204, green: 221, blue: 238, alpha: 255))
        }
    }
    
    static var allTests = [
        ("testInit", testInit),
    ]
}
