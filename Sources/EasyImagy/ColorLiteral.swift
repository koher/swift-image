public protocol _ColorLiteralChannel {
    init(_ez_colorLiteralFloatChannel: Float)
}

extension UInt8: _ColorLiteralChannel {
    public init(_ez_colorLiteralFloatChannel floatChannel: Float) {
        self = UInt8(clamp(floatChannel * 255, lower: 0, upper: 255))
    }
}

extension UInt16: _ColorLiteralChannel {
    public init(_ez_colorLiteralFloatChannel floatChannel: Float) {
        self = UInt16(clamp(floatChannel * 65535, lower: 0, upper: 65535))
    }
}

extension Float: _ColorLiteralChannel {
    public init(_ez_colorLiteralFloatChannel floatChannel: Float) {
        self = floatChannel
    }
}

extension Double: _ColorLiteralChannel {
    public init(_ez_colorLiteralFloatChannel floatChannel: Float) {
        self = Double(floatChannel)
    }
}

extension RGB: _ExpressibleByColorLiteral where Channel: _ColorLiteralChannel {
    public init(_colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float) {
        self.init(
            red: .init(_ez_colorLiteralFloatChannel: red * alpha),
            green: .init(_ez_colorLiteralFloatChannel: green * alpha),
            blue: .init(_ez_colorLiteralFloatChannel: blue * alpha)
        )
    }
}

extension RGBA: _ExpressibleByColorLiteral where Channel: _ColorLiteralChannel {
    public init(_colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float) {
        self.init(
            red: .init(_ez_colorLiteralFloatChannel: red),
            green: .init(_ez_colorLiteralFloatChannel: green),
            blue: .init(_ez_colorLiteralFloatChannel: blue),
            alpha: .init(_ez_colorLiteralFloatChannel: alpha)
        )
    }
}

extension PremultipliedRGBA: _ExpressibleByColorLiteral where Channel: _ColorLiteralChannel {
    public init(_colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float) {
        self.init(
            red: .init(_ez_colorLiteralFloatChannel: red * alpha),
            green: .init(_ez_colorLiteralFloatChannel: green * alpha),
            blue: .init(_ez_colorLiteralFloatChannel: blue * alpha),
            alpha: .init(_ez_colorLiteralFloatChannel: alpha)
        )
    }
}
