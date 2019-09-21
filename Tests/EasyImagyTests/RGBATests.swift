import XCTest
import EasyImagy

class RGBATests: XCTestCase {
    func testInit() {
        do {
            let a = RGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4)
            XCTAssertEqual(a.red, 1)
            XCTAssertEqual(a.green, 2)
            XCTAssertEqual(a.blue, 3)
            XCTAssertEqual(a.alpha, 4)
        }
    }
    
    func testInitWithGray() {
        do {
            let a = RGBA<UInt8>(gray: 127, alpha: 255)
            XCTAssertEqual(a.red, 127)
            XCTAssertEqual(a.green, 127)
            XCTAssertEqual(a.blue, 127)
            XCTAssertEqual(a.alpha, 255)
        }
    }
    
    func testInitWithRGB() {
        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 254)
            let r = RGBA<UInt8>(a)
            XCTAssertEqual(r, RGBA<UInt8>(red: 1, green: 2, blue: 254, alpha: 255))
        }
        
        do {
            let a = RGB<Double>(red: 0.2, green: 0.4, blue: 0.6)
            let r = RGBA<Double>(a)
            XCTAssertEqual(r, RGBA<Double>(red: 0.2, green: 0.4, blue: 0.6, alpha: 1.0))
        }
    }
    
    func testInitWithPremultipliedRGBA() {
        do {
            let a: PremultipliedRGBA<UInt8> = PremultipliedRGBA<UInt8>(red: 1, green: 2, blue: 4, alpha: 127)
            let r: RGBA<UInt8> = RGBA<UInt8>(a)
            XCTAssertEqual(r, RGBA<UInt8>(red: 2, green: 4, blue: 8, alpha: 127))
        }
        do {
            let a: PremultipliedRGBA<Double> = PremultipliedRGBA<Double>(red: 0.125, green: 0.0625, blue: 0.03125, alpha: 0.5)
            let r: RGBA<Double> = RGBA<Double>(a)
            XCTAssertEqual(r, RGBA<Double>(red: 0.25, green: 0.125, blue: 0.0625, alpha: 0.5))
        }
    }

    func testInitWithHex() {
        do {
            let r = RGBA(0xFFEEDDCC)
            XCTAssertEqual(r.red, 255)
            XCTAssertEqual(r.green, 238)
            XCTAssertEqual(r.blue, 221)
            XCTAssertEqual(r.alpha, 204)
        }
    }
    
    func testInitForCasting() {
        // let types = ["Int", "Int8", "Int16", "Int32", "Int64", "UInt", "UInt8", "UInt16", "UInt32", "UInt64", "Float", "Double"]
        // for from in types {
        //     print("""
        //             do {
        //                 let a: RGBA<\(from)> = RGBA<\(from)>(red: 1, green: 2, blue: 3, alpha: 4)
        //     """)
        //     for to in types {
        //         print("""
        //                     do {
        //                         let r: RGBA<\(to)> = RGBA<\(to)>(a)
        //                         XCTAssertEqual(r, RGBA<\(to)>(red: 1, green: 2, blue: 3, alpha: 4))
        //                     }
        //         """)
        //     }
        //     print("""
        //             }
        //     """)
        // }
        do {
            let a: RGBA<Int> = RGBA<Int>(red: 1, green: 2, blue: 3, alpha: 4)
            do {
                let r: RGBA<Int> = RGBA<Int>(a)
                XCTAssertEqual(r, RGBA<Int>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int8> = RGBA<Int8>(a)
                XCTAssertEqual(r, RGBA<Int8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int16> = RGBA<Int16>(a)
                XCTAssertEqual(r, RGBA<Int16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int32> = RGBA<Int32>(a)
                XCTAssertEqual(r, RGBA<Int32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int64> = RGBA<Int64>(a)
                XCTAssertEqual(r, RGBA<Int64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt> = RGBA<UInt>(a)
                XCTAssertEqual(r, RGBA<UInt>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt8> = RGBA<UInt8>(a)
                XCTAssertEqual(r, RGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt16> = RGBA<UInt16>(a)
                XCTAssertEqual(r, RGBA<UInt16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt32> = RGBA<UInt32>(a)
                XCTAssertEqual(r, RGBA<UInt32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt64> = RGBA<UInt64>(a)
                XCTAssertEqual(r, RGBA<UInt64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Float> = RGBA<Float>(a)
                XCTAssertEqual(r, RGBA<Float>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Double> = RGBA<Double>(a)
                XCTAssertEqual(r, RGBA<Double>(red: 1, green: 2, blue: 3, alpha: 4))
            }
        }
        do {
            let a: RGBA<Int8> = RGBA<Int8>(red: 1, green: 2, blue: 3, alpha: 4)
            do {
                let r: RGBA<Int> = RGBA<Int>(a)
                XCTAssertEqual(r, RGBA<Int>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int8> = RGBA<Int8>(a)
                XCTAssertEqual(r, RGBA<Int8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int16> = RGBA<Int16>(a)
                XCTAssertEqual(r, RGBA<Int16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int32> = RGBA<Int32>(a)
                XCTAssertEqual(r, RGBA<Int32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int64> = RGBA<Int64>(a)
                XCTAssertEqual(r, RGBA<Int64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt> = RGBA<UInt>(a)
                XCTAssertEqual(r, RGBA<UInt>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt8> = RGBA<UInt8>(a)
                XCTAssertEqual(r, RGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt16> = RGBA<UInt16>(a)
                XCTAssertEqual(r, RGBA<UInt16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt32> = RGBA<UInt32>(a)
                XCTAssertEqual(r, RGBA<UInt32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt64> = RGBA<UInt64>(a)
                XCTAssertEqual(r, RGBA<UInt64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Float> = RGBA<Float>(a)
                XCTAssertEqual(r, RGBA<Float>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Double> = RGBA<Double>(a)
                XCTAssertEqual(r, RGBA<Double>(red: 1, green: 2, blue: 3, alpha: 4))
            }
        }
        do {
            let a: RGBA<Int16> = RGBA<Int16>(red: 1, green: 2, blue: 3, alpha: 4)
            do {
                let r: RGBA<Int> = RGBA<Int>(a)
                XCTAssertEqual(r, RGBA<Int>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int8> = RGBA<Int8>(a)
                XCTAssertEqual(r, RGBA<Int8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int16> = RGBA<Int16>(a)
                XCTAssertEqual(r, RGBA<Int16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int32> = RGBA<Int32>(a)
                XCTAssertEqual(r, RGBA<Int32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int64> = RGBA<Int64>(a)
                XCTAssertEqual(r, RGBA<Int64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt> = RGBA<UInt>(a)
                XCTAssertEqual(r, RGBA<UInt>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt8> = RGBA<UInt8>(a)
                XCTAssertEqual(r, RGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt16> = RGBA<UInt16>(a)
                XCTAssertEqual(r, RGBA<UInt16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt32> = RGBA<UInt32>(a)
                XCTAssertEqual(r, RGBA<UInt32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt64> = RGBA<UInt64>(a)
                XCTAssertEqual(r, RGBA<UInt64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Float> = RGBA<Float>(a)
                XCTAssertEqual(r, RGBA<Float>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Double> = RGBA<Double>(a)
                XCTAssertEqual(r, RGBA<Double>(red: 1, green: 2, blue: 3, alpha: 4))
            }
        }
        do {
            let a: RGBA<Int32> = RGBA<Int32>(red: 1, green: 2, blue: 3, alpha: 4)
            do {
                let r: RGBA<Int> = RGBA<Int>(a)
                XCTAssertEqual(r, RGBA<Int>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int8> = RGBA<Int8>(a)
                XCTAssertEqual(r, RGBA<Int8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int16> = RGBA<Int16>(a)
                XCTAssertEqual(r, RGBA<Int16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int32> = RGBA<Int32>(a)
                XCTAssertEqual(r, RGBA<Int32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int64> = RGBA<Int64>(a)
                XCTAssertEqual(r, RGBA<Int64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt> = RGBA<UInt>(a)
                XCTAssertEqual(r, RGBA<UInt>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt8> = RGBA<UInt8>(a)
                XCTAssertEqual(r, RGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt16> = RGBA<UInt16>(a)
                XCTAssertEqual(r, RGBA<UInt16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt32> = RGBA<UInt32>(a)
                XCTAssertEqual(r, RGBA<UInt32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt64> = RGBA<UInt64>(a)
                XCTAssertEqual(r, RGBA<UInt64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Float> = RGBA<Float>(a)
                XCTAssertEqual(r, RGBA<Float>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Double> = RGBA<Double>(a)
                XCTAssertEqual(r, RGBA<Double>(red: 1, green: 2, blue: 3, alpha: 4))
            }
        }
        do {
            let a: RGBA<Int64> = RGBA<Int64>(red: 1, green: 2, blue: 3, alpha: 4)
            do {
                let r: RGBA<Int> = RGBA<Int>(a)
                XCTAssertEqual(r, RGBA<Int>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int8> = RGBA<Int8>(a)
                XCTAssertEqual(r, RGBA<Int8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int16> = RGBA<Int16>(a)
                XCTAssertEqual(r, RGBA<Int16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int32> = RGBA<Int32>(a)
                XCTAssertEqual(r, RGBA<Int32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int64> = RGBA<Int64>(a)
                XCTAssertEqual(r, RGBA<Int64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt> = RGBA<UInt>(a)
                XCTAssertEqual(r, RGBA<UInt>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt8> = RGBA<UInt8>(a)
                XCTAssertEqual(r, RGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt16> = RGBA<UInt16>(a)
                XCTAssertEqual(r, RGBA<UInt16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt32> = RGBA<UInt32>(a)
                XCTAssertEqual(r, RGBA<UInt32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt64> = RGBA<UInt64>(a)
                XCTAssertEqual(r, RGBA<UInt64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Float> = RGBA<Float>(a)
                XCTAssertEqual(r, RGBA<Float>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Double> = RGBA<Double>(a)
                XCTAssertEqual(r, RGBA<Double>(red: 1, green: 2, blue: 3, alpha: 4))
            }
        }
        do {
            let a: RGBA<UInt> = RGBA<UInt>(red: 1, green: 2, blue: 3, alpha: 4)
            do {
                let r: RGBA<Int> = RGBA<Int>(a)
                XCTAssertEqual(r, RGBA<Int>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int8> = RGBA<Int8>(a)
                XCTAssertEqual(r, RGBA<Int8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int16> = RGBA<Int16>(a)
                XCTAssertEqual(r, RGBA<Int16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int32> = RGBA<Int32>(a)
                XCTAssertEqual(r, RGBA<Int32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int64> = RGBA<Int64>(a)
                XCTAssertEqual(r, RGBA<Int64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt> = RGBA<UInt>(a)
                XCTAssertEqual(r, RGBA<UInt>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt8> = RGBA<UInt8>(a)
                XCTAssertEqual(r, RGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt16> = RGBA<UInt16>(a)
                XCTAssertEqual(r, RGBA<UInt16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt32> = RGBA<UInt32>(a)
                XCTAssertEqual(r, RGBA<UInt32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt64> = RGBA<UInt64>(a)
                XCTAssertEqual(r, RGBA<UInt64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Float> = RGBA<Float>(a)
                XCTAssertEqual(r, RGBA<Float>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Double> = RGBA<Double>(a)
                XCTAssertEqual(r, RGBA<Double>(red: 1, green: 2, blue: 3, alpha: 4))
            }
        }
        do {
            let a: RGBA<UInt8> = RGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4)
            do {
                let r: RGBA<Int> = RGBA<Int>(a)
                XCTAssertEqual(r, RGBA<Int>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int8> = RGBA<Int8>(a)
                XCTAssertEqual(r, RGBA<Int8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int16> = RGBA<Int16>(a)
                XCTAssertEqual(r, RGBA<Int16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int32> = RGBA<Int32>(a)
                XCTAssertEqual(r, RGBA<Int32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int64> = RGBA<Int64>(a)
                XCTAssertEqual(r, RGBA<Int64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt> = RGBA<UInt>(a)
                XCTAssertEqual(r, RGBA<UInt>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt8> = RGBA<UInt8>(a)
                XCTAssertEqual(r, RGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt16> = RGBA<UInt16>(a)
                XCTAssertEqual(r, RGBA<UInt16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt32> = RGBA<UInt32>(a)
                XCTAssertEqual(r, RGBA<UInt32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt64> = RGBA<UInt64>(a)
                XCTAssertEqual(r, RGBA<UInt64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Float> = RGBA<Float>(a)
                XCTAssertEqual(r, RGBA<Float>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Double> = RGBA<Double>(a)
                XCTAssertEqual(r, RGBA<Double>(red: 1, green: 2, blue: 3, alpha: 4))
            }
        }
        do {
            let a: RGBA<UInt16> = RGBA<UInt16>(red: 1, green: 2, blue: 3, alpha: 4)
            do {
                let r: RGBA<Int> = RGBA<Int>(a)
                XCTAssertEqual(r, RGBA<Int>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int8> = RGBA<Int8>(a)
                XCTAssertEqual(r, RGBA<Int8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int16> = RGBA<Int16>(a)
                XCTAssertEqual(r, RGBA<Int16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int32> = RGBA<Int32>(a)
                XCTAssertEqual(r, RGBA<Int32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int64> = RGBA<Int64>(a)
                XCTAssertEqual(r, RGBA<Int64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt> = RGBA<UInt>(a)
                XCTAssertEqual(r, RGBA<UInt>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt8> = RGBA<UInt8>(a)
                XCTAssertEqual(r, RGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt16> = RGBA<UInt16>(a)
                XCTAssertEqual(r, RGBA<UInt16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt32> = RGBA<UInt32>(a)
                XCTAssertEqual(r, RGBA<UInt32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt64> = RGBA<UInt64>(a)
                XCTAssertEqual(r, RGBA<UInt64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Float> = RGBA<Float>(a)
                XCTAssertEqual(r, RGBA<Float>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Double> = RGBA<Double>(a)
                XCTAssertEqual(r, RGBA<Double>(red: 1, green: 2, blue: 3, alpha: 4))
            }
        }
        do {
            let a: RGBA<UInt32> = RGBA<UInt32>(red: 1, green: 2, blue: 3, alpha: 4)
            do {
                let r: RGBA<Int> = RGBA<Int>(a)
                XCTAssertEqual(r, RGBA<Int>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int8> = RGBA<Int8>(a)
                XCTAssertEqual(r, RGBA<Int8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int16> = RGBA<Int16>(a)
                XCTAssertEqual(r, RGBA<Int16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int32> = RGBA<Int32>(a)
                XCTAssertEqual(r, RGBA<Int32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int64> = RGBA<Int64>(a)
                XCTAssertEqual(r, RGBA<Int64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt> = RGBA<UInt>(a)
                XCTAssertEqual(r, RGBA<UInt>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt8> = RGBA<UInt8>(a)
                XCTAssertEqual(r, RGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt16> = RGBA<UInt16>(a)
                XCTAssertEqual(r, RGBA<UInt16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt32> = RGBA<UInt32>(a)
                XCTAssertEqual(r, RGBA<UInt32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt64> = RGBA<UInt64>(a)
                XCTAssertEqual(r, RGBA<UInt64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Float> = RGBA<Float>(a)
                XCTAssertEqual(r, RGBA<Float>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Double> = RGBA<Double>(a)
                XCTAssertEqual(r, RGBA<Double>(red: 1, green: 2, blue: 3, alpha: 4))
            }
        }
        do {
            let a: RGBA<UInt64> = RGBA<UInt64>(red: 1, green: 2, blue: 3, alpha: 4)
            do {
                let r: RGBA<Int> = RGBA<Int>(a)
                XCTAssertEqual(r, RGBA<Int>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int8> = RGBA<Int8>(a)
                XCTAssertEqual(r, RGBA<Int8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int16> = RGBA<Int16>(a)
                XCTAssertEqual(r, RGBA<Int16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int32> = RGBA<Int32>(a)
                XCTAssertEqual(r, RGBA<Int32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int64> = RGBA<Int64>(a)
                XCTAssertEqual(r, RGBA<Int64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt> = RGBA<UInt>(a)
                XCTAssertEqual(r, RGBA<UInt>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt8> = RGBA<UInt8>(a)
                XCTAssertEqual(r, RGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt16> = RGBA<UInt16>(a)
                XCTAssertEqual(r, RGBA<UInt16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt32> = RGBA<UInt32>(a)
                XCTAssertEqual(r, RGBA<UInt32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt64> = RGBA<UInt64>(a)
                XCTAssertEqual(r, RGBA<UInt64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Float> = RGBA<Float>(a)
                XCTAssertEqual(r, RGBA<Float>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Double> = RGBA<Double>(a)
                XCTAssertEqual(r, RGBA<Double>(red: 1, green: 2, blue: 3, alpha: 4))
            }
        }
        do {
            let a: RGBA<Float> = RGBA<Float>(red: 1, green: 2, blue: 3, alpha: 4)
            do {
                let r: RGBA<Int> = RGBA<Int>(a)
                XCTAssertEqual(r, RGBA<Int>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int8> = RGBA<Int8>(a)
                XCTAssertEqual(r, RGBA<Int8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int16> = RGBA<Int16>(a)
                XCTAssertEqual(r, RGBA<Int16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int32> = RGBA<Int32>(a)
                XCTAssertEqual(r, RGBA<Int32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int64> = RGBA<Int64>(a)
                XCTAssertEqual(r, RGBA<Int64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt> = RGBA<UInt>(a)
                XCTAssertEqual(r, RGBA<UInt>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt8> = RGBA<UInt8>(a)
                XCTAssertEqual(r, RGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt16> = RGBA<UInt16>(a)
                XCTAssertEqual(r, RGBA<UInt16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt32> = RGBA<UInt32>(a)
                XCTAssertEqual(r, RGBA<UInt32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt64> = RGBA<UInt64>(a)
                XCTAssertEqual(r, RGBA<UInt64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Float> = RGBA<Float>(a)
                XCTAssertEqual(r, RGBA<Float>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Double> = RGBA<Double>(a)
                XCTAssertEqual(r, RGBA<Double>(red: 1, green: 2, blue: 3, alpha: 4))
            }
        }
        do {
            let a: RGBA<Double> = RGBA<Double>(red: 1, green: 2, blue: 3, alpha: 4)
            do {
                let r: RGBA<Int> = RGBA<Int>(a)
                XCTAssertEqual(r, RGBA<Int>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int8> = RGBA<Int8>(a)
                XCTAssertEqual(r, RGBA<Int8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int16> = RGBA<Int16>(a)
                XCTAssertEqual(r, RGBA<Int16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int32> = RGBA<Int32>(a)
                XCTAssertEqual(r, RGBA<Int32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Int64> = RGBA<Int64>(a)
                XCTAssertEqual(r, RGBA<Int64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt> = RGBA<UInt>(a)
                XCTAssertEqual(r, RGBA<UInt>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt8> = RGBA<UInt8>(a)
                XCTAssertEqual(r, RGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt16> = RGBA<UInt16>(a)
                XCTAssertEqual(r, RGBA<UInt16>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt32> = RGBA<UInt32>(a)
                XCTAssertEqual(r, RGBA<UInt32>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<UInt64> = RGBA<UInt64>(a)
                XCTAssertEqual(r, RGBA<UInt64>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Float> = RGBA<Float>(a)
                XCTAssertEqual(r, RGBA<Float>(red: 1, green: 2, blue: 3, alpha: 4))
            }
            do {
                let r: RGBA<Double> = RGBA<Double>(a)
                XCTAssertEqual(r, RGBA<Double>(red: 1, green: 2, blue: 3, alpha: 4))
            }
        }
    }
    
    func testRed() {
        do {
            let a: RGBA<UInt8> = .red
            XCTAssertEqual(a, RGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
        }
        do {
            let a: RGBA<Double> = .red
            XCTAssertEqual(a, RGBA<Double>(red: 1, green: 0, blue: 0, alpha: 1))
        }
    }
    
    func testGreen() {
        do {
            let a: RGBA<UInt8> = .green
            XCTAssertEqual(a, RGBA<UInt8>(red: 0, green: 255, blue: 0, alpha: 255))
        }
        do {
            let a: RGBA<Double> = .green
            XCTAssertEqual(a, RGBA<Double>(red: 0, green: 1, blue: 0, alpha: 1))
        }
    }
    
    func testBlue() {
        do {
            let a: RGBA<UInt8> = .blue
            XCTAssertEqual(a, RGBA<UInt8>(red: 0, green: 0, blue: 255, alpha: 255))
        }
        do {
            let a: RGBA<Double> = .blue
            XCTAssertEqual(a, RGBA<Double>(red: 0, green: 0, blue: 1, alpha: 1))
        }
    }
    
//    func testCyan() {
//        do {
//            let a: RGBA<UInt8> = .cyan
//            XCTAssertEqual(a, RGBA<UInt8>(red: 0, green: 255, blue: 255, alpha: 255))
//        }
//        do {
//            let a: RGBA<Double> = .cyan
//            XCTAssertEqual(a, RGBA<Double>(red: 0, green: 1, blue: 1, alpha: 1))
//        }
//    }
//
//    func testMagenta() {
//        do {
//            let a: RGBA<UInt8> = .magenta
//            XCTAssertEqual(a, RGBA<UInt8>(red: 255, green: 0, blue: 255, alpha: 255))
//        }
//        do {
//            let a: RGBA<Double> = .magenta
//            XCTAssertEqual(a, RGBA<Double>(red: 1, green: 0, blue: 1, alpha: 1))
//        }
//    }
//
//    func testYellow() {
//        do {
//            let a: RGBA<UInt8> = .yellow
//            XCTAssertEqual(a, RGBA<UInt8>(red: 255, green: 255, blue: 0, alpha: 255))
//        }
//        do {
//            let a: RGBA<Double> = .yellow
//            XCTAssertEqual(a, RGBA<Double>(red: 1, green: 1, blue: 0, alpha: 1))
//        }
//    }
    
    func testBlack() {
        do {
            let a: RGBA<UInt8> = .black
            XCTAssertEqual(a, RGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
        }
        do {
            let a: RGBA<Double> = .black
            XCTAssertEqual(a, RGBA<Double>(red: 0, green: 0, blue: 0, alpha: 1))
        }
    }
    
    func testWhite() {
        do {
            let a: RGBA<UInt8> = .white
            XCTAssertEqual(a, RGBA<UInt8>(red: 255, green: 255, blue: 255, alpha: 255))
        }
        do {
            let a: RGBA<Double> = .white
            XCTAssertEqual(a, RGBA<Double>(red: 1, green: 1, blue: 1, alpha: 1))
        }
    }
    
//    func testGray() {
//        do {
//            let a: RGBA<UInt8> = .gray
//            XCTAssertEqual(a, RGBA<UInt8>(red: 127, green: 127, blue: 127, alpha: 255))
//        }
//        do {
//            let a: RGBA<Double> = .gray
//            XCTAssertEqual(a, RGBA<Double>(red: 0.5, green: 0.5, blue: 0.5, alpha: 1))
//        }
//    }
//
//    func testOrange() {
//        do {
//            let a: RGBA<UInt8> = .orange
//            XCTAssertEqual(a, RGBA<UInt8>(red: 255, green: 127, blue: 0, alpha: 255))
//        }
//        do {
//            let a: RGBA<Double> = .orange
//            XCTAssertEqual(a, RGBA<Double>(red: 1, green: 0.5, blue: 0, alpha: 1))
//        }
//    }
//
//    func testPurple() {
//        do {
//            let a: RGBA<UInt8> = .purple
//            XCTAssertEqual(a, RGBA<UInt8>(red: 127, green: 0, blue: 127, alpha: 255))
//        }
//        do {
//            let a: RGBA<Double> = .purple
//            XCTAssertEqual(a, RGBA<Double>(red: 0.5, green: 0, blue: 0.5, alpha: 1))
//        }
//    }
    
	func testDescription() {
		XCTAssertEqual("#FF0000FF", RGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255).description)
		XCTAssertEqual("#00FFFF00", RGBA<UInt8>(red: 0, green: 255, blue: 255, alpha: 0).description)
		XCTAssertEqual("#02037F80", RGBA<UInt8>(red: 2, green: 3, blue: 127, alpha: 128).description)
		XCTAssertEqual("#0A0B0C0D", RGBA<UInt8>(red: 10, green: 11, blue: 12, alpha: 13).description)
		XCTAssertEqual("#0E0F1011", RGBA<UInt8>(red: 14, green: 15, blue: 16, alpha: 17).description)
	}
    
    func testGray() {
        do {
            let p = RGBA<UInt16>(red: .max, green: .max, blue: .max)
            XCTAssertEqual(p.gray, .max)
        }
        
        do {
            let p = RGBA<UInt16>(red: .max, green: .max, blue: .max - 1)
            XCTAssertEqual(p.gray, .max - 1)
        }
        
        do {
            let p = RGBA<UInt16>(red: .max, green: .max, blue: .max - 3)
            XCTAssertEqual(p.gray, .max - 1)
        }
        
        do {
            let p = RGBA<UInt16>(red: .max, green: .max, blue: .max - 4)
            XCTAssertEqual(p.gray, .max - 2)
        }
        
        do {
            let p = RGBA<UInt16>(red: .max, green: .max - 1, blue: .max - 2)
            XCTAssertEqual(p.gray, .max - 1)
        }
        
        do {
            let p = RGBA<UInt16>(red: .max, green: .max - 1, blue: .max - 3)
            XCTAssertEqual(p.gray, .max - 2)
        }
    }
    
    func testEqual() {
        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 255)
            XCTAssertTrue(a == a)
        }
        
        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 255)
            let b = RGB<UInt8>(red: 1, green: 2, blue: 255)
            XCTAssertTrue(a == b)
        }
        
        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 255)
            let b = RGB<UInt8>(red: 0, green: 2, blue: 255)
            XCTAssertFalse(a == b)
        }

        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 255)
            let b = RGB<UInt8>(red: 1, green: 3, blue: 255)
            XCTAssertFalse(a == b)
        }

        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 255)
            let b = RGB<UInt8>(red: 1, green: 2, blue: 254)
            XCTAssertFalse(a == b)
        }

        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 255)
            let b = RGB<UInt8>(red: 0, green: 3, blue: 254)
            XCTAssertFalse(a == b)
        }
        
        struct Foo: Equatable {
            var x: Int
            init(_ x: Int) { self.x = x }
            static func ==(lhs: Foo, rhs: Foo) -> Bool {
                return lhs.x == rhs.x
            }
        }
        
        do {
            let a = RGB<Foo>(red: Foo(1), green: Foo(2), blue: Foo(255))
            XCTAssertTrue(a == a)
        }
        
        do {
            let a = RGB<Foo>(red: Foo(1), green: Foo(2), blue: Foo(255))
            let b = RGB<Foo>(red: Foo(1), green: Foo(2), blue: Foo(255))
            XCTAssertTrue(a == b)
        }
        
        do {
            let a = RGB<Foo>(red: Foo(1), green: Foo(2), blue: Foo(255))
            let b = RGB<Foo>(red: Foo(0), green: Foo(2), blue: Foo(255))
            XCTAssertFalse(a == b)
        }
    }
    
    func testZero() {
        do {
            let a: RGB<UInt8> = .zero
            XCTAssertEqual(a, RGB<UInt8>(red: 0, green: 0, blue: 0))
        }
        
        do {
            let a: RGB<Double> = .zero
            XCTAssertEqual(a, RGB<Double>(red: 0, green: 0, blue: 0))
        }
    }
    
    func testAddition() {
        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            let r = a + b
            XCTAssertEqual(r, RGB<UInt8>(red: 5, green: 7, blue: 9))
        }
    }
    
    func testAdditionAssignment() {
        do {
            var a = RGB<UInt8>(red: 1, green: 2, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            a += b
            XCTAssertEqual(a, RGB<UInt8>(red: 5, green: 7, blue: 9))
        }
    }
    
    func testSubtraction() {
        do {
            let a = RGB<UInt8>(red: 255, green: 254, blue: 253)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            let r = a - b
            XCTAssertEqual(r, RGB<UInt8>(red: 251, green: 249, blue: 247))
        }
    }
    
    func testSubtractionAssignment() {
        do {
            var a = RGB<UInt8>(red: 255, green: 254, blue: 253)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            a -= b
            XCTAssertEqual(a, RGB<UInt8>(red: 251, green: 249, blue: 247))
        }
    }
    
    func testMultiplication() {
        do {
            let a = RGB<UInt8>(red: 1, green: 2, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            let r = a * b
            XCTAssertEqual(r, RGB<UInt8>(red: 4, green: 10, blue: 18))
        }
        
        do {
            let a = RGB<Double>(red: 1, green: 2, blue: 3)
            let b = RGB<Double>(red: 4, green: 5, blue: 6)
            let r = a * b
            XCTAssertEqual(r, RGB<Double>(red: 4, green: 10, blue: 18))
        }
    }
    
    func testMultiplicationAssignment() {
        do {
            var a = RGB<UInt8>(red: 1, green: 2, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            a *= b
            XCTAssertEqual(a, RGB<UInt8>(red: 4, green: 10, blue: 18))
        }
        
        do {
            var a = RGB<Double>(red: 1, green: 2, blue: 3)
            let b = RGB<Double>(red: 4, green: 5, blue: 6)
            a *= b
            XCTAssertEqual(a, RGB<Double>(red: 4, green: 10, blue: 18))
        }
    }
    
    func testMinus() {
        do {
            let a = RGB<Int>(red: 1, green: -2, blue: 3)
            XCTAssertEqual(-a, RGB<Int>(red: -1, green: 2, blue: -3))
        }
        
        do {
            let a = RGB<Double>(red: 1, green: -2, blue: 3)
            XCTAssertEqual(-a, RGB<Double>(red: -1, green: 2, blue: -3))
        }
    }
    
    func testDivision() {
        do {
            let a = RGB<UInt8>(red: 8, green: 27, blue: 125)
            let b = RGB<UInt8>(red: 4, green: 9, blue: 25)
            let r = a / b
            XCTAssertEqual(r, RGB<UInt8>(red: 2, green: 3, blue: 5))
        }
        
        do {
            let a = RGB<Double>(red: 8, green: 27, blue: 125)
            let b = RGB<Double>(red: 4, green: 9, blue: 25)
            let r = a / b
            XCTAssertEqual(r, RGB<Double>(red: 2, green: 3, blue: 5))
        }
    }
    
    func testDivisionAssignment() {
        do {
            var a = RGB<UInt8>(red: 8, green: 27, blue: 125)
            let b = RGB<UInt8>(red: 4, green: 9, blue: 25)
            a /= b
            XCTAssertEqual(a, RGB<UInt8>(red: 2, green: 3, blue: 5))
        }
        
        do {
            var a = RGB<Double>(red: 8, green: 27, blue: 125)
            let b = RGB<Double>(red: 4, green: 9, blue: 25)
            a /= b
            XCTAssertEqual(a, RGB<Double>(red: 2, green: 3, blue: 5))
        }
    }

    func testRemainder() {
        do {
            let a = RGB<UInt8>(red: 5, green: 8, blue: 13)
            let b = RGB<UInt8>(red: 2, green: 3, blue: 5)
            let r = a % b
            XCTAssertEqual(r, RGB<UInt8>(red: 1, green: 2, blue: 3))
        }
    }
    
    func testRemainderAssignment() {
        do {
            var a = RGB<UInt8>(red: 5, green: 8, blue: 13)
            let b = RGB<UInt8>(red: 2, green: 3, blue: 5)
            a %= b
            XCTAssertEqual(a, RGB<UInt8>(red: 1, green: 2, blue: 3))
        }
    }

    func testBitwiseAnd() {
        do {
            let a = RGB<UInt8>(red: 0b0011, green: 0b1100, blue: 0b0101)
            let b = RGB<UInt8>(red: 0b0101, green: 0b1010, blue: 0b1100)
            let r = a & b
            XCTAssertEqual(r, RGB<UInt8>(red: 0b0001, green: 0b1000, blue: 0b0100))
        }
    }
    
    func testBitwiseAndAssignment() {
        do {
            var a = RGB<UInt8>(red: 0b0011, green: 0b1100, blue: 0b0101)
            let b = RGB<UInt8>(red: 0b0101, green: 0b1010, blue: 0b1100)
            a &= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0b0001, green: 0b1000, blue: 0b0100))
        }
    }

    func testBitwiseOr() {
        do {
            let a = RGB<UInt8>(red: 0b0011, green: 0b1100, blue: 0b0101)
            let b = RGB<UInt8>(red: 0b0101, green: 0b1010, blue: 0b1100)
            let r = a | b
            XCTAssertEqual(r, RGB<UInt8>(red: 0b0111, green: 0b1110, blue: 0b1101))
        }
    }
    
    func testBitwiseOrAssignment() {
        do {
            var a = RGB<UInt8>(red: 0b0011, green: 0b1100, blue: 0b0101)
            let b = RGB<UInt8>(red: 0b0101, green: 0b1010, blue: 0b1100)
            a |= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0b0111, green: 0b1110, blue: 0b1101))
        }
    }

    func testBitwiseXor() {
        do {
            let a = RGB<UInt8>(red: 0b0011, green: 0b1100, blue: 0b0101)
            let b = RGB<UInt8>(red: 0b0101, green: 0b1010, blue: 0b1100)
            let r = a ^ b
            XCTAssertEqual(r, RGB<UInt8>(red: 0b0110, green: 0b0110, blue: 0b1001))
        }
    }
    
    func testBitwiseXorAssignment() {
        do {
            var a = RGB<UInt8>(red: 0b0011, green: 0b1100, blue: 0b0101)
            let b = RGB<UInt8>(red: 0b0101, green: 0b1010, blue: 0b1100)
            a ^= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0b0110, green: 0b0110, blue: 0b1001))
        }
    }
    
    func testBitwiseNot() {
        do {
            let a = RGB<UInt8>(red: 0b00001111, green: 0b11110000, blue: 0b01010101)
            XCTAssertEqual(~a, RGB<UInt8>(red: 0b11110000, green: 0b00001111, blue: 0b10101010))
        }
    }

    func testLeftShift() {
        do {
            let a = RGB<UInt8>(red: 0b0001, green: 0b0010, blue: 0b0101)
            let b = RGB<Int>(red: 2, green: -1, blue: 1)
            let r = a << b
            XCTAssertEqual(r, RGB<UInt8>(red: 0b0100, green: 0b0001, blue: 0b1010))
        }
    }
    
    func testLeftShiftAssignment() {
        do {
            var a = RGB<UInt8>(red: 0b0001, green: 0b0010, blue: 0b0101)
            let b = RGB<Int>(red: 2, green: -1, blue: 1)
            a <<= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0b0100, green: 0b0001, blue: 0b1010))
        }
    }
    
    func testRightShift() {
        do {
            let a = RGB<UInt8>(red: 0b1000, green: 0b0100, blue: 0b1010)
            let b = RGB<Int>(red: 2, green: -1, blue: 1)
            let r = a >> b
            XCTAssertEqual(r, RGB<UInt8>(red: 0b0010, green: 0b1000, blue: 0b0101))
        }
    }
    
    func testRightShiftAssignment() {
        do {
            var a = RGB<UInt8>(red: 0b1000, green: 0b0100, blue: 0b1010)
            let b = RGB<Int>(red: 2, green: -1, blue: 1)
            a >>= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0b0010, green: 0b1000, blue: 0b0101))
        }
    }
    
    func testOverflowAddition() {
        do {
            let a = RGB<UInt8>(red: 253, green: 254, blue: 255)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            let r = a &+ b
            XCTAssertEqual(r, RGB<UInt8>(red: 1, green: 3, blue: 5))
        }
    }
    
    func testOverflowAdditionAssignment() {
        do {
            var a = RGB<UInt8>(red: 253, green: 254, blue: 255)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            a &+= b
            XCTAssertEqual(a, RGB<UInt8>(red: 1, green: 3, blue: 5))
        }
    }
    
    func testOverflowSubtraction() {
        do {
            let a = RGB<UInt8>(red: 1, green: 3, blue: 5)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            let r = a &- b
            XCTAssertEqual(r, RGB<UInt8>(red: 253, green: 254, blue: 255))
        }
    }
    
    func testOverflowSubtractionAssignment() {
        do {
            var a = RGB<UInt8>(red: 1, green: 3, blue: 5)
            let b = RGB<UInt8>(red: 4, green: 5, blue: 6)
            a &-= b
            XCTAssertEqual(a, RGB<UInt8>(red: 253, green: 254, blue: 255))
        }
    }
    
    func testOverflowMultiplication() {
        do {
            let a = RGB<UInt8>(red: 128, green: 129, blue: 130)
            let b = RGB<UInt8>(red: 2, green: 3, blue: 4)
            let r = a &* b
            XCTAssertEqual(r, RGB<UInt8>(red: 0, green: 131, blue: 8))
        }
    }
    
    func testOverflowMultiplicationAssignment() {
        do {
            var a = RGB<UInt8>(red: 128, green: 129, blue: 130)
            let b = RGB<UInt8>(red: 2, green: 3, blue: 4)
            a &*= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0, green: 131, blue: 8))
        }
    }
    
    func testOverflowLeftShift() {
        do {
            let a = RGB<UInt8>(red: 0b0001, green: 0b0011, blue: 0b0101)
            let b = RGB<UInt8>(red: 11, green: 18, blue: 25)
            let r = a &<< b
            XCTAssertEqual(r, RGB<UInt8>(red: 0b1000, green: 0b1100, blue: 0b1010))
        }
    }
    
    func testOverflowLeftShiftAssignment() {
        do {
            var a = RGB<UInt8>(red: 0b0001, green: 0b0011, blue: 0b0101)
            let b = RGB<UInt8>(red: 11, green: 18, blue: 25)
            a &<<= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0b1000, green: 0b1100, blue: 0b1010))
        }
    }
    
    func testOverflowRightShift() {
        do {
            let a = RGB<UInt8>(red: 0b1000, green: 0b1100, blue: 0b1010)
            let b = RGB<UInt8>(red: 11, green: 18, blue: 25)
            let r = a &>> b
            XCTAssertEqual(r, RGB<UInt8>(red: 0b0001, green: 0b0011, blue: 0b0101))
        }
    }
    
    func testOverflowRightShiftAssignment() {
        do {
            var a = RGB<UInt8>(red: 0b1000, green: 0b1100, blue: 0b1010)
            let b = RGB<UInt8>(red: 11, green: 18, blue: 25)
            a &>>= b
            XCTAssertEqual(a, RGB<UInt8>(red: 0b0001, green: 0b0011, blue: 0b0101))
        }
    }
    
    func testLessThan() {
        do {
            let a = RGB<UInt8>(red: 1, green: 5, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 2, blue: 3)
            let r = a < b
            XCTAssertEqual(r, RGB<Bool>(red: true, green: false, blue: false))
        }
    }
    
    func testLessThanOrEqualTo() {
        do {
            let a = RGB<UInt8>(red: 1, green: 5, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 2, blue: 3)
            let r = a <= b
            XCTAssertEqual(r, RGB<Bool>(red: true, green: false, blue: true))
        }
    }
    
    func testGreaterThan() {
        do {
            let a = RGB<UInt8>(red: 1, green: 5, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 2, blue: 3)
            let r = a > b
            XCTAssertEqual(r, RGB<Bool>(red: false, green: true, blue: false))
        }
    }
    
    func testGreaterThanOrEqualTo() {
        do {
            let a = RGB<UInt8>(red: 1, green: 5, blue: 3)
            let b = RGB<UInt8>(red: 4, green: 2, blue: 3)
            let r = a >= b
            XCTAssertEqual(r, RGB<Bool>(red: false, green: true, blue: true))
        }
    }
    
    func testAnd() {
        do {
            let a = RGB<Bool>(red: false, green: false, blue: true)
            let b = RGB<Bool>(red: false, green: true, blue: false)
            let r = a && b
            XCTAssertEqual(r, RGB<Bool>(red: false, green: false, blue: false))
        }
        
        do {
            let a = RGB<Bool>(red: false, green: true, blue: true)
            let b = RGB<Bool>(red: true, green: false, blue: true)
            let r = a && b
            XCTAssertEqual(r, RGB<Bool>(red: false, green: false, blue: true))
        }
        
        do {
            let a = RGB<Bool>(red: true, green: true, blue: false)
            let b = RGB<Bool>(red: false, green: true, blue: false)
            let r = a && b
            XCTAssertEqual(r, RGB<Bool>(red: false, green: true, blue: false))
        }
        
        do {
            let a = RGB<Bool>(red: true, green: false, blue: false)
            let b = RGB<Bool>(red: true, green: false, blue: true)
            let r = a && b
            XCTAssertEqual(r, RGB<Bool>(red: true, green: false, blue: false))
        }
    }
    
    func testOr() {
        do {
            let a = RGB<Bool>(red: false, green: false, blue: true)
            let b = RGB<Bool>(red: false, green: true, blue: false)
            let r = a || b
            XCTAssertEqual(r, RGB<Bool>(red: false, green: true, blue: true))
        }
        
        do {
            let a = RGB<Bool>(red: false, green: true, blue: true)
            let b = RGB<Bool>(red: true, green: false, blue: true)
            let r = a || b
            XCTAssertEqual(r, RGB<Bool>(red: true, green: true, blue: true))
        }
        
        do {
            let a = RGB<Bool>(red: true, green: true, blue: false)
            let b = RGB<Bool>(red: false, green: true, blue: false)
            let r = a || b
            XCTAssertEqual(r, RGB<Bool>(red: true, green: true, blue: false))
        }
        
        do {
            let a = RGB<Bool>(red: true, green: false, blue: false)
            let b = RGB<Bool>(red: true, green: false, blue: true)
            let r = a || b
            XCTAssertEqual(r, RGB<Bool>(red: true, green: false, blue: true))
        }
    }
    
    func testNot() {
        do {
            let a = RGB<Bool>(red: false, green: true, blue: false)
            XCTAssertEqual(!a, RGB<Bool>(red: true, green: false, blue: true))
        }
        
        do {
            let a = RGB<Bool>(red: true, green: false, blue: true)
            XCTAssertEqual(!a, RGB<Bool>(red: false, green: true, blue: false))
        }
    }
}
