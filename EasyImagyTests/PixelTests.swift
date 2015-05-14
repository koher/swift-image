import XCTest
import EasyImagy

class PixelTests: XCTestCase {
	func testDescription() {
		XCTAssertEqual("#FF0000FF", Pixel(red: 255, green: 0, blue: 0, alpha: 255).description)
		XCTAssertEqual("#00FFFF00", Pixel(red: 0, green: 255, blue: 255, alpha: 0).description)
		XCTAssertEqual("#02037F80", Pixel(red: 2, green: 3, blue: 127, alpha: 128).description)
		XCTAssertEqual("#0A0B0C0D", Pixel(red: 10, green: 11, blue: 12, alpha: 13).description)
		XCTAssertEqual("#0E0F1011", Pixel(red: 14, green: 15, blue: 16, alpha: 17).description)
	}
}