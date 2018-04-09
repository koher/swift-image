extension RGBA where Channel : Numeric {
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func +(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func -(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red - rhs.red, green: lhs.green - rhs.green, blue: lhs.blue - rhs.blue, alpha: lhs.alpha - rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func *(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red * rhs.red, green: lhs.green * rhs.green, blue: lhs.blue * rhs.blue, alpha: lhs.alpha * rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func +=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red += rhs.red
        lhs.green += rhs.green
        lhs.blue += rhs.blue
        lhs.alpha += rhs.alpha
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func -=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red -= rhs.red
        lhs.green -= rhs.green
        lhs.blue -= rhs.blue
        lhs.alpha -= rhs.alpha
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func *=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red *= rhs.red
        lhs.green *= rhs.green
        lhs.blue *= rhs.blue
        lhs.alpha *= rhs.alpha
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    prefix public static func +(a: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: +a.red, green: +a.green, blue: +a.blue, alpha: +a.alpha)
    }
}

extension RGBA where Channel : SignedNumeric {
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    prefix public static func -(a: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: -a.red, green: -a.green, blue: -a.blue, alpha: -a.alpha)
    }
}

extension RGBA where Channel : BinaryInteger {
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func /(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func %(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red % rhs.red, green: lhs.green % rhs.green, blue: lhs.blue % rhs.blue, alpha: lhs.alpha % rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func &(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red & rhs.red, green: lhs.green & rhs.green, blue: lhs.blue & rhs.blue, alpha: lhs.alpha & rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func |(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red | rhs.red, green: lhs.green | rhs.green, blue: lhs.blue | rhs.blue, alpha: lhs.alpha | rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func ^(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red ^ rhs.red, green: lhs.green ^ rhs.green, blue: lhs.blue ^ rhs.blue, alpha: lhs.alpha ^ rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func <<(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red << rhs.red, green: lhs.green << rhs.green, blue: lhs.blue << rhs.blue, alpha: lhs.alpha << rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func >>(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red >> rhs.red, green: lhs.green >> rhs.green, blue: lhs.blue >> rhs.blue, alpha: lhs.alpha >> rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func /=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func %=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red %= rhs.red
        lhs.green %= rhs.green
        lhs.blue %= rhs.blue
        lhs.alpha %= rhs.alpha
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func &=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red &= rhs.red
        lhs.green &= rhs.green
        lhs.blue &= rhs.blue
        lhs.alpha &= rhs.alpha
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func |=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red |= rhs.red
        lhs.green |= rhs.green
        lhs.blue |= rhs.blue
        lhs.alpha |= rhs.alpha
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func ^=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red ^= rhs.red
        lhs.green ^= rhs.green
        lhs.blue ^= rhs.blue
        lhs.alpha ^= rhs.alpha
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func <<=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red <<= rhs.red
        lhs.green <<= rhs.green
        lhs.blue <<= rhs.blue
        lhs.alpha <<= rhs.alpha
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func >>=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red >>= rhs.red
        lhs.green >>= rhs.green
        lhs.blue >>= rhs.blue
        lhs.alpha >>= rhs.alpha
    }
}

extension RGBA where Channel : FixedWidthInteger {
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func &+(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red &+ rhs.red, green: lhs.green &+ rhs.green, blue: lhs.blue &+ rhs.blue, alpha: lhs.alpha &+ rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func &-(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red &- rhs.red, green: lhs.green &- rhs.green, blue: lhs.blue &- rhs.blue, alpha: lhs.alpha &- rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func &*(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red &* rhs.red, green: lhs.green &* rhs.green, blue: lhs.blue &* rhs.blue, alpha: lhs.alpha &* rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func &<<(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red &<< rhs.red, green: lhs.green &<< rhs.green, blue: lhs.blue &<< rhs.blue, alpha: lhs.alpha &<< rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func &>>(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red &>> rhs.red, green: lhs.green &>> rhs.green, blue: lhs.blue &>> rhs.blue, alpha: lhs.alpha &>> rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func &<<=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red &<<= rhs.red
        lhs.green &<<= rhs.green
        lhs.blue &<<= rhs.blue
        lhs.alpha &<<= rhs.alpha
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    public static func &>>=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red &>>= rhs.red
        lhs.green &>>= rhs.green
        lhs.blue &>>= rhs.blue
        lhs.alpha &>>= rhs.alpha
    }
}

extension RGBA where Channel : FloatingPoint {
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func /(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func /=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
    }
}

extension RGBA : Equatable where Channel : Equatable {
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    @_specialize(exported: true, where Channel == Bool)
    public static func ==(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> Bool {
        return lhs.red == rhs.red && lhs.green == rhs.green && lhs.blue == rhs.blue && lhs.alpha == rhs.alpha
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    @_specialize(exported: true, where Channel == Bool)
    public static func !=(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> Bool {
        return lhs.red != rhs.red || lhs.green != rhs.green || lhs.blue != rhs.blue || lhs.alpha != rhs.alpha
    }
}

extension RGBA where Channel : Comparable {
    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func <(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Bool> {
        return RGBA<Bool>(red: lhs.red < rhs.red, green: lhs.green < rhs.green, blue: lhs.blue < rhs.blue, alpha: lhs.alpha < rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func <=(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Bool> {
        return RGBA<Bool>(red: lhs.red <= rhs.red, green: lhs.green <= rhs.green, blue: lhs.blue <= rhs.blue, alpha: lhs.alpha <= rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func >(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Bool> {
        return RGBA<Bool>(red: lhs.red > rhs.red, green: lhs.green > rhs.green, blue: lhs.blue > rhs.blue, alpha: lhs.alpha > rhs.alpha)
    }

    @_specialize(exported: true, where Channel == Int)
    @_specialize(exported: true, where Channel == Int8)
    @_specialize(exported: true, where Channel == Int16)
    @_specialize(exported: true, where Channel == Int32)
    @_specialize(exported: true, where Channel == Int64)
    @_specialize(exported: true, where Channel == UInt)
    @_specialize(exported: true, where Channel == UInt8)
    @_specialize(exported: true, where Channel == UInt16)
    @_specialize(exported: true, where Channel == UInt32)
    @_specialize(exported: true, where Channel == UInt64)
    @_specialize(exported: true, where Channel == Float)
    @_specialize(exported: true, where Channel == Double)
    public static func >=(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Bool> {
        return RGBA<Bool>(red: lhs.red >= rhs.red, green: lhs.green >= rhs.green, blue: lhs.blue >= rhs.blue, alpha: lhs.alpha >= rhs.alpha)
    }
}

extension RGBA where Channel == Bool {
    public static func &&(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red && rhs.red, green: lhs.green && rhs.green, blue: lhs.blue && rhs.blue, alpha: lhs.alpha && rhs.alpha)
    }

    public static func ||(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red || rhs.red, green: lhs.green || rhs.green, blue: lhs.blue || rhs.blue, alpha: lhs.alpha || rhs.alpha)
    }

    prefix public static func !(a: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: !a.red, green: !a.green, blue: !a.blue, alpha: !a.alpha)
    }
}
