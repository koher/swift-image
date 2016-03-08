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
		XCTAssertEqual("#FF0000FF", RGBA(red: 255, green: 0, blue: 0, alpha: 255).description)
		XCTAssertEqual("#00FFFF00", RGBA(red: 0, green: 255, blue: 255, alpha: 0).description)
		XCTAssertEqual("#02037F80", RGBA(red: 2, green: 3, blue: 127, alpha: 128).description)
		XCTAssertEqual("#0A0B0C0D", RGBA(red: 10, green: 11, blue: 12, alpha: 13).description)
		XCTAssertEqual("#0E0F1011", RGBA(red: 14, green: 15, blue: 16, alpha: 17).description)
	}
}