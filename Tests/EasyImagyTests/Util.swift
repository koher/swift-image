import XCTest
import EasyImagy

internal func XCTAssertEqual<I : ImageProtocol, F : FloatingPoint>(
    _ expression1: @autoclosure () throws -> I,
    _ expression2: @autoclosure () throws -> I,
    accuracy: F,
    _ message: @autoclosure () -> String = "",
    file: StaticString = #file,
    line: UInt = #line
) where I.Pixel == F {
    do {
        let e1 = try expression1()
        let e2 = try expression2()
        let m = message()
        
        XCTAssertEqual(e1.width, e2.width, m == "" ? "width" : "\(m) (width)", file: file, line: line)
        XCTAssertEqual(e1.height, e2.height, m == "" ? "height" : "\(m) (height)", file: file, line: line)
        
        for (y1, y2) in zip(e1.yRange, e2.yRange) {
            for (x1, x2) in zip(e1.xRange, e2.xRange) {
                XCTAssertEqual(e1[x1, y1], e2[x2, y2], accuracy: accuracy, m == "" ? "[\(x1), \(y1)], [\(x2), \(y2)]" : "\(m) ([\(x1), \(y1)], [\(x2), \(y2)])", file: file, line: line)
            }
        }
    } catch let error {
        XCTAssertThrowsError(error, message(), file: file, line: line)
    }
}

internal struct GeneralError : Error {
    let message: String? = nil
}
