extension RGBA where Channel : Numeric {
    public static func +(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
    }

    public static func -(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red - rhs.red, green: lhs.green - rhs.green, blue: lhs.blue - rhs.blue, alpha: lhs.alpha - rhs.alpha)
    }

    public static func *(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red * rhs.red, green: lhs.green * rhs.green, blue: lhs.blue * rhs.blue, alpha: lhs.alpha * rhs.alpha)
    }

    public static func +=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red += rhs.red
        lhs.green += rhs.green
        lhs.blue += rhs.blue
        lhs.alpha += rhs.alpha
    }

    public static func -=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red -= rhs.red
        lhs.green -= rhs.green
        lhs.blue -= rhs.blue
        lhs.alpha -= rhs.alpha
    }

    public static func *=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red *= rhs.red
        lhs.green *= rhs.green
        lhs.blue *= rhs.blue
        lhs.alpha *= rhs.alpha
    }

    prefix public static func +(a: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: +a.red, green: +a.green, blue: +a.blue, alpha: +a.alpha)
    }
}

extension RGBA where Channel : SignedNumeric {
    prefix public static func -(a: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: -a.red, green: -a.green, blue: -a.blue, alpha: -a.alpha)
    }
}

extension RGBA where Channel : BinaryInteger {
    public static func /(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    public static func %(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red % rhs.red, green: lhs.green % rhs.green, blue: lhs.blue % rhs.blue, alpha: lhs.alpha % rhs.alpha)
    }

    public static func &(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red & rhs.red, green: lhs.green & rhs.green, blue: lhs.blue & rhs.blue, alpha: lhs.alpha & rhs.alpha)
    }

    public static func |(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red | rhs.red, green: lhs.green | rhs.green, blue: lhs.blue | rhs.blue, alpha: lhs.alpha | rhs.alpha)
    }

    public static func ^(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red ^ rhs.red, green: lhs.green ^ rhs.green, blue: lhs.blue ^ rhs.blue, alpha: lhs.alpha ^ rhs.alpha)
    }

    public static func <<(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red << rhs.red, green: lhs.green << rhs.green, blue: lhs.blue << rhs.blue, alpha: lhs.alpha << rhs.alpha)
    }

    public static func >>(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red >> rhs.red, green: lhs.green >> rhs.green, blue: lhs.blue >> rhs.blue, alpha: lhs.alpha >> rhs.alpha)
    }

    public static func /=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
    }

    public static func %=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red %= rhs.red
        lhs.green %= rhs.green
        lhs.blue %= rhs.blue
        lhs.alpha %= rhs.alpha
    }

    public static func &=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red &= rhs.red
        lhs.green &= rhs.green
        lhs.blue &= rhs.blue
        lhs.alpha &= rhs.alpha
    }

    public static func |=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red |= rhs.red
        lhs.green |= rhs.green
        lhs.blue |= rhs.blue
        lhs.alpha |= rhs.alpha
    }

    public static func ^=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red ^= rhs.red
        lhs.green ^= rhs.green
        lhs.blue ^= rhs.blue
        lhs.alpha ^= rhs.alpha
    }

    public static func <<=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red <<= rhs.red
        lhs.green <<= rhs.green
        lhs.blue <<= rhs.blue
        lhs.alpha <<= rhs.alpha
    }

    public static func >>=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red >>= rhs.red
        lhs.green >>= rhs.green
        lhs.blue >>= rhs.blue
        lhs.alpha >>= rhs.alpha
    }
}

extension RGBA where Channel : FixedWidthInteger {
    public static func &+(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red &+ rhs.red, green: lhs.green &+ rhs.green, blue: lhs.blue &+ rhs.blue, alpha: lhs.alpha &+ rhs.alpha)
    }

    public static func &-(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red &- rhs.red, green: lhs.green &- rhs.green, blue: lhs.blue &- rhs.blue, alpha: lhs.alpha &- rhs.alpha)
    }

    public static func &*(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red &* rhs.red, green: lhs.green &* rhs.green, blue: lhs.blue &* rhs.blue, alpha: lhs.alpha &* rhs.alpha)
    }

    public static func &<<(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red &<< rhs.red, green: lhs.green &<< rhs.green, blue: lhs.blue &<< rhs.blue, alpha: lhs.alpha &<< rhs.alpha)
    }

    public static func &>>(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red &>> rhs.red, green: lhs.green &>> rhs.green, blue: lhs.blue &>> rhs.blue, alpha: lhs.alpha &>> rhs.alpha)
    }

    public static func &<<=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red &<<= rhs.red
        lhs.green &<<= rhs.green
        lhs.blue &<<= rhs.blue
        lhs.alpha &<<= rhs.alpha
    }

    public static func &>>=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red &>>= rhs.red
        lhs.green &>>= rhs.green
        lhs.blue &>>= rhs.blue
        lhs.alpha &>>= rhs.alpha
    }
}

extension RGBA where Channel : FloatingPoint {
    public static func /(lhs: RGBA<Channel>, rhs: RGBA<Channel>) -> RGBA<Channel> {
        return RGBA(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    public static func /=(lhs: inout RGBA<Channel>, rhs: RGBA<Channel>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
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
