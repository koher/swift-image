import XCTest
import EasyImagy

class ColorLiteralTests: XCTestCase {
    func testRGBInitWithColorLiteral() {
        do { // `UInt8`
            let red: RGB<UInt8> = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            XCTAssertEqual(red, RGB<UInt8>(red: 255, green: 0, blue: 0))
            
            let color: RGB<UInt8> = #colorLiteral(red: 0.2, green: 0.4, blue: 0.6, alpha: 0.8)
            XCTAssertEqual(color, RGB<UInt8>(red: 40, green: 81, blue: 122))
        }
        
        do { // `UInt16`
            let red: RGB<UInt16> = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            XCTAssertEqual(red, RGB<UInt16>(red: 65535, green: 0, blue: 0))
            
            let color: RGB<UInt16> = #colorLiteral(red: 0.2, green: 0.4, blue: 0.6, alpha: 0.8)
            XCTAssertEqual(color, RGB<UInt16>(red: 10485, green: 20971, blue: 31456))
        }
        
        do { // `Float`
            let red: RGB<Float> = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            XCTAssertEqual(red, RGB<Float>(red: 1.0, green: 0.0, blue: 0.0))
            
            let color: RGB<Float> = #colorLiteral(red: 0.2, green: 0.4, blue: 0.6, alpha: 0.8)
            XCTAssertEqual(color, RGB<Float>(red: 0.16, green: 0.32, blue: 0.48), accuracy: 1.0e-5)
        }
        
        do { // `Double`
            let red: RGB<Double> = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            XCTAssertEqual(red, RGB<Double>(red: 1.0, green: 0.0, blue: 0.0))
            
            let color: RGB<Double> = #colorLiteral(red: 0.2, green: 0.4, blue: 0.6, alpha: 0.8)
            XCTAssertEqual(color, RGB<Double>(red: 0.16, green: 0.32, blue: 0.48), accuracy: 1.0e-5)
        }
    }
    
    func testRGBAInitWithColorLiteral() {
        do { // `UInt8`
            let red: RGBA<UInt8> = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            XCTAssertEqual(red, RGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            
            let color: RGBA<UInt8> = #colorLiteral(red: 0.2, green: 0.4, blue: 0.6, alpha: 0.8)
            XCTAssertEqual(color, RGBA<UInt8>(red: 51, green: 102, blue: 153, alpha: 204))
        }
        
        do { // `UInt16`
            let red: RGBA<UInt16> = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            XCTAssertEqual(red, RGBA<UInt16>(red: 65535, green: 0, blue: 0, alpha: 65535))
            
            let color: RGBA<UInt16> = #colorLiteral(red: 0.2, green: 0.4, blue: 0.6, alpha: 0.8)
            XCTAssertEqual(color, RGBA<UInt16>(red: 13107, green: 26214, blue: 39321, alpha: 52428))
        }
        
        do { // `Float`
            let red: RGBA<Float> = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            XCTAssertEqual(red, RGBA<Float>(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0))
            
            let color: RGBA<Float> = #colorLiteral(red: 0.2, green: 0.4, blue: 0.6, alpha: 0.8)
            XCTAssertEqual(color, RGBA<Float>(red: 0.2, green: 0.4, blue: 0.6, alpha: 0.8), accuracy: 1.0e-5)
        }
        
        do { // `Double`
            let red: RGBA<Double> = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            XCTAssertEqual(red, RGBA<Double>(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0))
            
            let color: RGBA<Double> = #colorLiteral(red: 0.2, green: 0.4, blue: 0.6, alpha: 0.8)
            XCTAssertEqual(color, RGBA<Double>(red: 0.2, green: 0.4, blue: 0.6, alpha: 0.8), accuracy: 1.0e-5)
        }
    }
    
    func testPremultipliedRGBAInitWithColorLiteral() {
        do { // `UInt8`
            let red: PremultipliedRGBA<UInt8> = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            XCTAssertEqual(red, PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            
            let color: PremultipliedRGBA<UInt8> = #colorLiteral(red: 0.2, green: 0.4, blue: 0.6, alpha: 0.8)
            XCTAssertEqual(color, PremultipliedRGBA<UInt8>(red: 40, green: 81, blue: 122, alpha: 204))
        }
        
        do { // `UInt16`
            let red: PremultipliedRGBA<UInt16> = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            XCTAssertEqual(red, PremultipliedRGBA<UInt16>(red: 65535, green: 0, blue: 0, alpha: 65535))
            
            let color: PremultipliedRGBA<UInt16> = #colorLiteral(red: 0.2, green: 0.4, blue: 0.6, alpha: 0.8)
            XCTAssertEqual(color, PremultipliedRGBA<UInt16>(red: 10485, green: 20971, blue: 31456, alpha: 52428))
        }
        
        do { // `Float`
            let red: PremultipliedRGBA<Float> = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            XCTAssertEqual(red, PremultipliedRGBA<Float>(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0))
            
            let color: PremultipliedRGBA<Float> = #colorLiteral(red: 0.2, green: 0.4, blue: 0.6, alpha: 0.8)
            XCTAssertEqual(color, PremultipliedRGBA<Float>(red: 0.16, green: 0.32, blue: 0.48, alpha: 0.8), accuracy: 1.0e-5)
        }
        
        do { // `Double`
            let red: PremultipliedRGBA<Double> = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            XCTAssertEqual(red, PremultipliedRGBA<Double>(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0))
            
            let color: PremultipliedRGBA<Double> = #colorLiteral(red: 0.2, green: 0.4, blue: 0.6, alpha: 0.8)
            XCTAssertEqual(color, PremultipliedRGBA<Double>(red: 0.16, green: 0.32, blue: 0.48, alpha: 0.8), accuracy: 1.0e-5)
        }
    }
}
