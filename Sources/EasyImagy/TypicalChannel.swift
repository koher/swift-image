public protocol _TypicalChannel {
    init(_: Int)
    init(_: Int8)
    init(_: Int16)
    init(_: Int32)
    init(_: Int64)
    init(_: UInt)
    init(_: UInt8)
    init(_: UInt16)
    init(_: UInt32)
    init(_: UInt64)
    init(_: Float)
    init(_: Double)
}

extension Int: _TypicalChannel {}
extension Int8: _TypicalChannel {}
extension Int16: _TypicalChannel {}
extension Int32: _TypicalChannel {}
extension Int64: _TypicalChannel {}
extension UInt: _TypicalChannel {}
extension UInt8: _TypicalChannel {}
extension UInt16: _TypicalChannel {}
extension UInt32: _TypicalChannel {}
extension UInt64: _TypicalChannel {}
extension Float: _TypicalChannel {}
extension Double: _TypicalChannel {}
