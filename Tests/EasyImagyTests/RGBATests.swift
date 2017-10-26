import XCTest
import EasyImagy

class RGBATests: XCTestCase {
    func testInit() {
        do {
            let r = RGBA(0xFFEEDDCC)
            XCTAssertEqual(r.red, 255)
            XCTAssertEqual(r.green, 238)
            XCTAssertEqual(r.blue, 221)
            XCTAssertEqual(r.alpha, 204)
        }
    }
    
	func testDescription() {
		XCTAssertEqual("#FF0000FF", RGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255).description)
		XCTAssertEqual("#00FFFF00", RGBA<UInt8>(red: 0, green: 255, blue: 255, alpha: 0).description)
		XCTAssertEqual("#02037F80", RGBA<UInt8>(red: 2, green: 3, blue: 127, alpha: 128).description)
		XCTAssertEqual("#0A0B0C0D", RGBA<UInt8>(red: 10, green: 11, blue: 12, alpha: 13).description)
		XCTAssertEqual("#0E0F1011", RGBA<UInt8>(red: 14, green: 15, blue: 16, alpha: 17).description)
	}
    
    func testGray() {
        do {
            let p = RGBA<UInt64>(red: .max, green: .max, blue: .max)
            XCTAssertEqual(p.gray, .max)
        }
        
        do {
            let p = RGBA<UInt64>(red: .max, green: .max, blue: .max - 1)
            XCTAssertEqual(p.gray, .max - 1)
        }
        
        do {
            let p = RGBA<UInt64>(red: .max, green: .max, blue: .max - 3)
            XCTAssertEqual(p.gray, .max - 1)
        }
        
        do {
            let p = RGBA<UInt64>(red: .max, green: .max, blue: .max - 4)
            XCTAssertEqual(p.gray, .max - 2)
        }
        
        do {
            let p = RGBA<UInt64>(red: .max, green: .max - 1, blue: .max - 2)
            XCTAssertEqual(p.gray, .max - 1)
        }
        
        do {
            let p = RGBA<UInt64>(red: .max, green: .max - 1, blue: .max - 3)
            XCTAssertEqual(p.gray, .max - 2)
        }
    }
}

// FIXME: remove this after conditional conformance is supported
extension RGBA: Equatable {
    public static func ==(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> Bool {
        if let l = lhs as? RGBA<UInt8>, let r = rhs as? RGBA<UInt8> {
            return l == r
        }
        if let l = lhs as? RGBA<Int>, let r = rhs as? RGBA<Int> {
            return l == r
        }
        if let l = lhs as? RGBA<Float>, let r = rhs as? RGBA<Float> {
            return l == r
        }
        if let l = lhs as? RGBA<Double>, let r = rhs as? RGBA<Double> {
            return l == r
        }
        fatalError()
        
    }
}
