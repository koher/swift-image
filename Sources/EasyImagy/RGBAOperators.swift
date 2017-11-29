extension RGBA where Channel == Int {
    public static func +(lhs: RGBA<Int>, rhs: RGBA<Int>) -> RGBA<Int> {
        return RGBA<Int>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
    }

    public static func -(lhs: RGBA<Int>, rhs: RGBA<Int>) -> RGBA<Int> {
        return RGBA<Int>(red: lhs.red - rhs.red, green: lhs.green - rhs.green, blue: lhs.blue - rhs.blue, alpha: lhs.alpha - rhs.alpha)
    }

    public static func *(lhs: RGBA<Int>, rhs: RGBA<Int>) -> RGBA<Int> {
        return RGBA<Int>(red: lhs.red * rhs.red, green: lhs.green * rhs.green, blue: lhs.blue * rhs.blue, alpha: lhs.alpha * rhs.alpha)
    }

    public static func /(lhs: RGBA<Int>, rhs: RGBA<Int>) -> RGBA<Int> {
        return RGBA<Int>(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    public static func %(lhs: RGBA<Int>, rhs: RGBA<Int>) -> RGBA<Int> {
        return RGBA<Int>(red: lhs.red % rhs.red, green: lhs.green % rhs.green, blue: lhs.blue % rhs.blue, alpha: lhs.alpha % rhs.alpha)
    }

    public static func &(lhs: RGBA<Int>, rhs: RGBA<Int>) -> RGBA<Int> {
        return RGBA<Int>(red: lhs.red & rhs.red, green: lhs.green & rhs.green, blue: lhs.blue & rhs.blue, alpha: lhs.alpha & rhs.alpha)
    }

    public static func |(lhs: RGBA<Int>, rhs: RGBA<Int>) -> RGBA<Int> {
        return RGBA<Int>(red: lhs.red | rhs.red, green: lhs.green | rhs.green, blue: lhs.blue | rhs.blue, alpha: lhs.alpha | rhs.alpha)
    }

    public static func ^(lhs: RGBA<Int>, rhs: RGBA<Int>) -> RGBA<Int> {
        return RGBA<Int>(red: lhs.red ^ rhs.red, green: lhs.green ^ rhs.green, blue: lhs.blue ^ rhs.blue, alpha: lhs.alpha ^ rhs.alpha)
    }

    public static func &+(lhs: RGBA<Int>, rhs: RGBA<Int>) -> RGBA<Int> {
        return RGBA<Int>(red: lhs.red &+ rhs.red, green: lhs.green &+ rhs.green, blue: lhs.blue &+ rhs.blue, alpha: lhs.alpha &+ rhs.alpha)
    }

    public static func &-(lhs: RGBA<Int>, rhs: RGBA<Int>) -> RGBA<Int> {
        return RGBA<Int>(red: lhs.red &- rhs.red, green: lhs.green &- rhs.green, blue: lhs.blue &- rhs.blue, alpha: lhs.alpha &- rhs.alpha)
    }

    public static func &*(lhs: RGBA<Int>, rhs: RGBA<Int>) -> RGBA<Int> {
        return RGBA<Int>(red: lhs.red &* rhs.red, green: lhs.green &* rhs.green, blue: lhs.blue &* rhs.blue, alpha: lhs.alpha &* rhs.alpha)
    }

    public static func +=(lhs: inout RGBA<Int>, rhs: RGBA<Int>) {
        lhs.red += rhs.red
        lhs.green += rhs.green
        lhs.blue += rhs.blue
        lhs.alpha += rhs.alpha
    }

    public static func -=(lhs: inout RGBA<Int>, rhs: RGBA<Int>) {
        lhs.red -= rhs.red
        lhs.green -= rhs.green
        lhs.blue -= rhs.blue
        lhs.alpha -= rhs.alpha
    }

    public static func *=(lhs: inout RGBA<Int>, rhs: RGBA<Int>) {
        lhs.red *= rhs.red
        lhs.green *= rhs.green
        lhs.blue *= rhs.blue
        lhs.alpha *= rhs.alpha
    }

    public static func /=(lhs: inout RGBA<Int>, rhs: RGBA<Int>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
    }

    public static func %=(lhs: inout RGBA<Int>, rhs: RGBA<Int>) {
        lhs.red %= rhs.red
        lhs.green %= rhs.green
        lhs.blue %= rhs.blue
        lhs.alpha %= rhs.alpha
    }

    public static func &=(lhs: inout RGBA<Int>, rhs: RGBA<Int>) {
        lhs.red &= rhs.red
        lhs.green &= rhs.green
        lhs.blue &= rhs.blue
        lhs.alpha &= rhs.alpha
    }

    public static func |=(lhs: inout RGBA<Int>, rhs: RGBA<Int>) {
        lhs.red |= rhs.red
        lhs.green |= rhs.green
        lhs.blue |= rhs.blue
        lhs.alpha |= rhs.alpha
    }

    public static func ^=(lhs: inout RGBA<Int>, rhs: RGBA<Int>) {
        lhs.red ^= rhs.red
        lhs.green ^= rhs.green
        lhs.blue ^= rhs.blue
        lhs.alpha ^= rhs.alpha
    }

    prefix public static func +(a: RGBA<Int>) -> RGBA<Int> {
        return RGBA<Int>(red: +a.red, green: +a.green, blue: +a.blue, alpha: +a.alpha)
    }

    prefix public static func -(a: RGBA<Int>) -> RGBA<Int> {
        return RGBA<Int>(red: -a.red, green: -a.green, blue: -a.blue, alpha: -a.alpha)
    }
}

extension RGBA where Channel == Int8 {
    public static func +(lhs: RGBA<Int8>, rhs: RGBA<Int8>) -> RGBA<Int8> {
        return RGBA<Int8>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
    }

    public static func -(lhs: RGBA<Int8>, rhs: RGBA<Int8>) -> RGBA<Int8> {
        return RGBA<Int8>(red: lhs.red - rhs.red, green: lhs.green - rhs.green, blue: lhs.blue - rhs.blue, alpha: lhs.alpha - rhs.alpha)
    }

    public static func *(lhs: RGBA<Int8>, rhs: RGBA<Int8>) -> RGBA<Int8> {
        return RGBA<Int8>(red: lhs.red * rhs.red, green: lhs.green * rhs.green, blue: lhs.blue * rhs.blue, alpha: lhs.alpha * rhs.alpha)
    }

    public static func /(lhs: RGBA<Int8>, rhs: RGBA<Int8>) -> RGBA<Int8> {
        return RGBA<Int8>(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    public static func %(lhs: RGBA<Int8>, rhs: RGBA<Int8>) -> RGBA<Int8> {
        return RGBA<Int8>(red: lhs.red % rhs.red, green: lhs.green % rhs.green, blue: lhs.blue % rhs.blue, alpha: lhs.alpha % rhs.alpha)
    }

    public static func &(lhs: RGBA<Int8>, rhs: RGBA<Int8>) -> RGBA<Int8> {
        return RGBA<Int8>(red: lhs.red & rhs.red, green: lhs.green & rhs.green, blue: lhs.blue & rhs.blue, alpha: lhs.alpha & rhs.alpha)
    }

    public static func |(lhs: RGBA<Int8>, rhs: RGBA<Int8>) -> RGBA<Int8> {
        return RGBA<Int8>(red: lhs.red | rhs.red, green: lhs.green | rhs.green, blue: lhs.blue | rhs.blue, alpha: lhs.alpha | rhs.alpha)
    }

    public static func ^(lhs: RGBA<Int8>, rhs: RGBA<Int8>) -> RGBA<Int8> {
        return RGBA<Int8>(red: lhs.red ^ rhs.red, green: lhs.green ^ rhs.green, blue: lhs.blue ^ rhs.blue, alpha: lhs.alpha ^ rhs.alpha)
    }

    public static func &+(lhs: RGBA<Int8>, rhs: RGBA<Int8>) -> RGBA<Int8> {
        return RGBA<Int8>(red: lhs.red &+ rhs.red, green: lhs.green &+ rhs.green, blue: lhs.blue &+ rhs.blue, alpha: lhs.alpha &+ rhs.alpha)
    }

    public static func &-(lhs: RGBA<Int8>, rhs: RGBA<Int8>) -> RGBA<Int8> {
        return RGBA<Int8>(red: lhs.red &- rhs.red, green: lhs.green &- rhs.green, blue: lhs.blue &- rhs.blue, alpha: lhs.alpha &- rhs.alpha)
    }

    public static func &*(lhs: RGBA<Int8>, rhs: RGBA<Int8>) -> RGBA<Int8> {
        return RGBA<Int8>(red: lhs.red &* rhs.red, green: lhs.green &* rhs.green, blue: lhs.blue &* rhs.blue, alpha: lhs.alpha &* rhs.alpha)
    }

    public static func +=(lhs: inout RGBA<Int8>, rhs: RGBA<Int8>) {
        lhs.red += rhs.red
        lhs.green += rhs.green
        lhs.blue += rhs.blue
        lhs.alpha += rhs.alpha
    }

    public static func -=(lhs: inout RGBA<Int8>, rhs: RGBA<Int8>) {
        lhs.red -= rhs.red
        lhs.green -= rhs.green
        lhs.blue -= rhs.blue
        lhs.alpha -= rhs.alpha
    }

    public static func *=(lhs: inout RGBA<Int8>, rhs: RGBA<Int8>) {
        lhs.red *= rhs.red
        lhs.green *= rhs.green
        lhs.blue *= rhs.blue
        lhs.alpha *= rhs.alpha
    }

    public static func /=(lhs: inout RGBA<Int8>, rhs: RGBA<Int8>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
    }

    public static func %=(lhs: inout RGBA<Int8>, rhs: RGBA<Int8>) {
        lhs.red %= rhs.red
        lhs.green %= rhs.green
        lhs.blue %= rhs.blue
        lhs.alpha %= rhs.alpha
    }

    public static func &=(lhs: inout RGBA<Int8>, rhs: RGBA<Int8>) {
        lhs.red &= rhs.red
        lhs.green &= rhs.green
        lhs.blue &= rhs.blue
        lhs.alpha &= rhs.alpha
    }

    public static func |=(lhs: inout RGBA<Int8>, rhs: RGBA<Int8>) {
        lhs.red |= rhs.red
        lhs.green |= rhs.green
        lhs.blue |= rhs.blue
        lhs.alpha |= rhs.alpha
    }

    public static func ^=(lhs: inout RGBA<Int8>, rhs: RGBA<Int8>) {
        lhs.red ^= rhs.red
        lhs.green ^= rhs.green
        lhs.blue ^= rhs.blue
        lhs.alpha ^= rhs.alpha
    }

    prefix public static func +(a: RGBA<Int8>) -> RGBA<Int8> {
        return RGBA<Int8>(red: +a.red, green: +a.green, blue: +a.blue, alpha: +a.alpha)
    }

    prefix public static func -(a: RGBA<Int8>) -> RGBA<Int8> {
        return RGBA<Int8>(red: -a.red, green: -a.green, blue: -a.blue, alpha: -a.alpha)
    }
}

extension RGBA where Channel == Int16 {
    public static func +(lhs: RGBA<Int16>, rhs: RGBA<Int16>) -> RGBA<Int16> {
        return RGBA<Int16>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
    }

    public static func -(lhs: RGBA<Int16>, rhs: RGBA<Int16>) -> RGBA<Int16> {
        return RGBA<Int16>(red: lhs.red - rhs.red, green: lhs.green - rhs.green, blue: lhs.blue - rhs.blue, alpha: lhs.alpha - rhs.alpha)
    }

    public static func *(lhs: RGBA<Int16>, rhs: RGBA<Int16>) -> RGBA<Int16> {
        return RGBA<Int16>(red: lhs.red * rhs.red, green: lhs.green * rhs.green, blue: lhs.blue * rhs.blue, alpha: lhs.alpha * rhs.alpha)
    }

    public static func /(lhs: RGBA<Int16>, rhs: RGBA<Int16>) -> RGBA<Int16> {
        return RGBA<Int16>(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    public static func %(lhs: RGBA<Int16>, rhs: RGBA<Int16>) -> RGBA<Int16> {
        return RGBA<Int16>(red: lhs.red % rhs.red, green: lhs.green % rhs.green, blue: lhs.blue % rhs.blue, alpha: lhs.alpha % rhs.alpha)
    }

    public static func &(lhs: RGBA<Int16>, rhs: RGBA<Int16>) -> RGBA<Int16> {
        return RGBA<Int16>(red: lhs.red & rhs.red, green: lhs.green & rhs.green, blue: lhs.blue & rhs.blue, alpha: lhs.alpha & rhs.alpha)
    }

    public static func |(lhs: RGBA<Int16>, rhs: RGBA<Int16>) -> RGBA<Int16> {
        return RGBA<Int16>(red: lhs.red | rhs.red, green: lhs.green | rhs.green, blue: lhs.blue | rhs.blue, alpha: lhs.alpha | rhs.alpha)
    }

    public static func ^(lhs: RGBA<Int16>, rhs: RGBA<Int16>) -> RGBA<Int16> {
        return RGBA<Int16>(red: lhs.red ^ rhs.red, green: lhs.green ^ rhs.green, blue: lhs.blue ^ rhs.blue, alpha: lhs.alpha ^ rhs.alpha)
    }

    public static func &+(lhs: RGBA<Int16>, rhs: RGBA<Int16>) -> RGBA<Int16> {
        return RGBA<Int16>(red: lhs.red &+ rhs.red, green: lhs.green &+ rhs.green, blue: lhs.blue &+ rhs.blue, alpha: lhs.alpha &+ rhs.alpha)
    }

    public static func &-(lhs: RGBA<Int16>, rhs: RGBA<Int16>) -> RGBA<Int16> {
        return RGBA<Int16>(red: lhs.red &- rhs.red, green: lhs.green &- rhs.green, blue: lhs.blue &- rhs.blue, alpha: lhs.alpha &- rhs.alpha)
    }

    public static func &*(lhs: RGBA<Int16>, rhs: RGBA<Int16>) -> RGBA<Int16> {
        return RGBA<Int16>(red: lhs.red &* rhs.red, green: lhs.green &* rhs.green, blue: lhs.blue &* rhs.blue, alpha: lhs.alpha &* rhs.alpha)
    }

    public static func +=(lhs: inout RGBA<Int16>, rhs: RGBA<Int16>) {
        lhs.red += rhs.red
        lhs.green += rhs.green
        lhs.blue += rhs.blue
        lhs.alpha += rhs.alpha
    }

    public static func -=(lhs: inout RGBA<Int16>, rhs: RGBA<Int16>) {
        lhs.red -= rhs.red
        lhs.green -= rhs.green
        lhs.blue -= rhs.blue
        lhs.alpha -= rhs.alpha
    }

    public static func *=(lhs: inout RGBA<Int16>, rhs: RGBA<Int16>) {
        lhs.red *= rhs.red
        lhs.green *= rhs.green
        lhs.blue *= rhs.blue
        lhs.alpha *= rhs.alpha
    }

    public static func /=(lhs: inout RGBA<Int16>, rhs: RGBA<Int16>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
    }

    public static func %=(lhs: inout RGBA<Int16>, rhs: RGBA<Int16>) {
        lhs.red %= rhs.red
        lhs.green %= rhs.green
        lhs.blue %= rhs.blue
        lhs.alpha %= rhs.alpha
    }

    public static func &=(lhs: inout RGBA<Int16>, rhs: RGBA<Int16>) {
        lhs.red &= rhs.red
        lhs.green &= rhs.green
        lhs.blue &= rhs.blue
        lhs.alpha &= rhs.alpha
    }

    public static func |=(lhs: inout RGBA<Int16>, rhs: RGBA<Int16>) {
        lhs.red |= rhs.red
        lhs.green |= rhs.green
        lhs.blue |= rhs.blue
        lhs.alpha |= rhs.alpha
    }

    public static func ^=(lhs: inout RGBA<Int16>, rhs: RGBA<Int16>) {
        lhs.red ^= rhs.red
        lhs.green ^= rhs.green
        lhs.blue ^= rhs.blue
        lhs.alpha ^= rhs.alpha
    }

    prefix public static func +(a: RGBA<Int16>) -> RGBA<Int16> {
        return RGBA<Int16>(red: +a.red, green: +a.green, blue: +a.blue, alpha: +a.alpha)
    }

    prefix public static func -(a: RGBA<Int16>) -> RGBA<Int16> {
        return RGBA<Int16>(red: -a.red, green: -a.green, blue: -a.blue, alpha: -a.alpha)
    }
}

extension RGBA where Channel == Int32 {
    public static func +(lhs: RGBA<Int32>, rhs: RGBA<Int32>) -> RGBA<Int32> {
        return RGBA<Int32>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
    }

    public static func -(lhs: RGBA<Int32>, rhs: RGBA<Int32>) -> RGBA<Int32> {
        return RGBA<Int32>(red: lhs.red - rhs.red, green: lhs.green - rhs.green, blue: lhs.blue - rhs.blue, alpha: lhs.alpha - rhs.alpha)
    }

    public static func *(lhs: RGBA<Int32>, rhs: RGBA<Int32>) -> RGBA<Int32> {
        return RGBA<Int32>(red: lhs.red * rhs.red, green: lhs.green * rhs.green, blue: lhs.blue * rhs.blue, alpha: lhs.alpha * rhs.alpha)
    }

    public static func /(lhs: RGBA<Int32>, rhs: RGBA<Int32>) -> RGBA<Int32> {
        return RGBA<Int32>(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    public static func %(lhs: RGBA<Int32>, rhs: RGBA<Int32>) -> RGBA<Int32> {
        return RGBA<Int32>(red: lhs.red % rhs.red, green: lhs.green % rhs.green, blue: lhs.blue % rhs.blue, alpha: lhs.alpha % rhs.alpha)
    }

    public static func &(lhs: RGBA<Int32>, rhs: RGBA<Int32>) -> RGBA<Int32> {
        return RGBA<Int32>(red: lhs.red & rhs.red, green: lhs.green & rhs.green, blue: lhs.blue & rhs.blue, alpha: lhs.alpha & rhs.alpha)
    }

    public static func |(lhs: RGBA<Int32>, rhs: RGBA<Int32>) -> RGBA<Int32> {
        return RGBA<Int32>(red: lhs.red | rhs.red, green: lhs.green | rhs.green, blue: lhs.blue | rhs.blue, alpha: lhs.alpha | rhs.alpha)
    }

    public static func ^(lhs: RGBA<Int32>, rhs: RGBA<Int32>) -> RGBA<Int32> {
        return RGBA<Int32>(red: lhs.red ^ rhs.red, green: lhs.green ^ rhs.green, blue: lhs.blue ^ rhs.blue, alpha: lhs.alpha ^ rhs.alpha)
    }

    public static func &+(lhs: RGBA<Int32>, rhs: RGBA<Int32>) -> RGBA<Int32> {
        return RGBA<Int32>(red: lhs.red &+ rhs.red, green: lhs.green &+ rhs.green, blue: lhs.blue &+ rhs.blue, alpha: lhs.alpha &+ rhs.alpha)
    }

    public static func &-(lhs: RGBA<Int32>, rhs: RGBA<Int32>) -> RGBA<Int32> {
        return RGBA<Int32>(red: lhs.red &- rhs.red, green: lhs.green &- rhs.green, blue: lhs.blue &- rhs.blue, alpha: lhs.alpha &- rhs.alpha)
    }

    public static func &*(lhs: RGBA<Int32>, rhs: RGBA<Int32>) -> RGBA<Int32> {
        return RGBA<Int32>(red: lhs.red &* rhs.red, green: lhs.green &* rhs.green, blue: lhs.blue &* rhs.blue, alpha: lhs.alpha &* rhs.alpha)
    }

    public static func +=(lhs: inout RGBA<Int32>, rhs: RGBA<Int32>) {
        lhs.red += rhs.red
        lhs.green += rhs.green
        lhs.blue += rhs.blue
        lhs.alpha += rhs.alpha
    }

    public static func -=(lhs: inout RGBA<Int32>, rhs: RGBA<Int32>) {
        lhs.red -= rhs.red
        lhs.green -= rhs.green
        lhs.blue -= rhs.blue
        lhs.alpha -= rhs.alpha
    }

    public static func *=(lhs: inout RGBA<Int32>, rhs: RGBA<Int32>) {
        lhs.red *= rhs.red
        lhs.green *= rhs.green
        lhs.blue *= rhs.blue
        lhs.alpha *= rhs.alpha
    }

    public static func /=(lhs: inout RGBA<Int32>, rhs: RGBA<Int32>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
    }

    public static func %=(lhs: inout RGBA<Int32>, rhs: RGBA<Int32>) {
        lhs.red %= rhs.red
        lhs.green %= rhs.green
        lhs.blue %= rhs.blue
        lhs.alpha %= rhs.alpha
    }

    public static func &=(lhs: inout RGBA<Int32>, rhs: RGBA<Int32>) {
        lhs.red &= rhs.red
        lhs.green &= rhs.green
        lhs.blue &= rhs.blue
        lhs.alpha &= rhs.alpha
    }

    public static func |=(lhs: inout RGBA<Int32>, rhs: RGBA<Int32>) {
        lhs.red |= rhs.red
        lhs.green |= rhs.green
        lhs.blue |= rhs.blue
        lhs.alpha |= rhs.alpha
    }

    public static func ^=(lhs: inout RGBA<Int32>, rhs: RGBA<Int32>) {
        lhs.red ^= rhs.red
        lhs.green ^= rhs.green
        lhs.blue ^= rhs.blue
        lhs.alpha ^= rhs.alpha
    }

    prefix public static func +(a: RGBA<Int32>) -> RGBA<Int32> {
        return RGBA<Int32>(red: +a.red, green: +a.green, blue: +a.blue, alpha: +a.alpha)
    }

    prefix public static func -(a: RGBA<Int32>) -> RGBA<Int32> {
        return RGBA<Int32>(red: -a.red, green: -a.green, blue: -a.blue, alpha: -a.alpha)
    }
}

extension RGBA where Channel == Int64 {
    public static func +(lhs: RGBA<Int64>, rhs: RGBA<Int64>) -> RGBA<Int64> {
        return RGBA<Int64>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
    }

    public static func -(lhs: RGBA<Int64>, rhs: RGBA<Int64>) -> RGBA<Int64> {
        return RGBA<Int64>(red: lhs.red - rhs.red, green: lhs.green - rhs.green, blue: lhs.blue - rhs.blue, alpha: lhs.alpha - rhs.alpha)
    }

    public static func *(lhs: RGBA<Int64>, rhs: RGBA<Int64>) -> RGBA<Int64> {
        return RGBA<Int64>(red: lhs.red * rhs.red, green: lhs.green * rhs.green, blue: lhs.blue * rhs.blue, alpha: lhs.alpha * rhs.alpha)
    }

    public static func /(lhs: RGBA<Int64>, rhs: RGBA<Int64>) -> RGBA<Int64> {
        return RGBA<Int64>(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    public static func %(lhs: RGBA<Int64>, rhs: RGBA<Int64>) -> RGBA<Int64> {
        return RGBA<Int64>(red: lhs.red % rhs.red, green: lhs.green % rhs.green, blue: lhs.blue % rhs.blue, alpha: lhs.alpha % rhs.alpha)
    }

    public static func &(lhs: RGBA<Int64>, rhs: RGBA<Int64>) -> RGBA<Int64> {
        return RGBA<Int64>(red: lhs.red & rhs.red, green: lhs.green & rhs.green, blue: lhs.blue & rhs.blue, alpha: lhs.alpha & rhs.alpha)
    }

    public static func |(lhs: RGBA<Int64>, rhs: RGBA<Int64>) -> RGBA<Int64> {
        return RGBA<Int64>(red: lhs.red | rhs.red, green: lhs.green | rhs.green, blue: lhs.blue | rhs.blue, alpha: lhs.alpha | rhs.alpha)
    }

    public static func ^(lhs: RGBA<Int64>, rhs: RGBA<Int64>) -> RGBA<Int64> {
        return RGBA<Int64>(red: lhs.red ^ rhs.red, green: lhs.green ^ rhs.green, blue: lhs.blue ^ rhs.blue, alpha: lhs.alpha ^ rhs.alpha)
    }

    public static func &+(lhs: RGBA<Int64>, rhs: RGBA<Int64>) -> RGBA<Int64> {
        return RGBA<Int64>(red: lhs.red &+ rhs.red, green: lhs.green &+ rhs.green, blue: lhs.blue &+ rhs.blue, alpha: lhs.alpha &+ rhs.alpha)
    }

    public static func &-(lhs: RGBA<Int64>, rhs: RGBA<Int64>) -> RGBA<Int64> {
        return RGBA<Int64>(red: lhs.red &- rhs.red, green: lhs.green &- rhs.green, blue: lhs.blue &- rhs.blue, alpha: lhs.alpha &- rhs.alpha)
    }

    public static func &*(lhs: RGBA<Int64>, rhs: RGBA<Int64>) -> RGBA<Int64> {
        return RGBA<Int64>(red: lhs.red &* rhs.red, green: lhs.green &* rhs.green, blue: lhs.blue &* rhs.blue, alpha: lhs.alpha &* rhs.alpha)
    }

    public static func +=(lhs: inout RGBA<Int64>, rhs: RGBA<Int64>) {
        lhs.red += rhs.red
        lhs.green += rhs.green
        lhs.blue += rhs.blue
        lhs.alpha += rhs.alpha
    }

    public static func -=(lhs: inout RGBA<Int64>, rhs: RGBA<Int64>) {
        lhs.red -= rhs.red
        lhs.green -= rhs.green
        lhs.blue -= rhs.blue
        lhs.alpha -= rhs.alpha
    }

    public static func *=(lhs: inout RGBA<Int64>, rhs: RGBA<Int64>) {
        lhs.red *= rhs.red
        lhs.green *= rhs.green
        lhs.blue *= rhs.blue
        lhs.alpha *= rhs.alpha
    }

    public static func /=(lhs: inout RGBA<Int64>, rhs: RGBA<Int64>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
    }

    public static func %=(lhs: inout RGBA<Int64>, rhs: RGBA<Int64>) {
        lhs.red %= rhs.red
        lhs.green %= rhs.green
        lhs.blue %= rhs.blue
        lhs.alpha %= rhs.alpha
    }

    public static func &=(lhs: inout RGBA<Int64>, rhs: RGBA<Int64>) {
        lhs.red &= rhs.red
        lhs.green &= rhs.green
        lhs.blue &= rhs.blue
        lhs.alpha &= rhs.alpha
    }

    public static func |=(lhs: inout RGBA<Int64>, rhs: RGBA<Int64>) {
        lhs.red |= rhs.red
        lhs.green |= rhs.green
        lhs.blue |= rhs.blue
        lhs.alpha |= rhs.alpha
    }

    public static func ^=(lhs: inout RGBA<Int64>, rhs: RGBA<Int64>) {
        lhs.red ^= rhs.red
        lhs.green ^= rhs.green
        lhs.blue ^= rhs.blue
        lhs.alpha ^= rhs.alpha
    }

    prefix public static func +(a: RGBA<Int64>) -> RGBA<Int64> {
        return RGBA<Int64>(red: +a.red, green: +a.green, blue: +a.blue, alpha: +a.alpha)
    }

    prefix public static func -(a: RGBA<Int64>) -> RGBA<Int64> {
        return RGBA<Int64>(red: -a.red, green: -a.green, blue: -a.blue, alpha: -a.alpha)
    }
}

extension RGBA where Channel == UInt {
    public static func +(lhs: RGBA<UInt>, rhs: RGBA<UInt>) -> RGBA<UInt> {
        return RGBA<UInt>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
    }

    public static func -(lhs: RGBA<UInt>, rhs: RGBA<UInt>) -> RGBA<UInt> {
        return RGBA<UInt>(red: lhs.red - rhs.red, green: lhs.green - rhs.green, blue: lhs.blue - rhs.blue, alpha: lhs.alpha - rhs.alpha)
    }

    public static func *(lhs: RGBA<UInt>, rhs: RGBA<UInt>) -> RGBA<UInt> {
        return RGBA<UInt>(red: lhs.red * rhs.red, green: lhs.green * rhs.green, blue: lhs.blue * rhs.blue, alpha: lhs.alpha * rhs.alpha)
    }

    public static func /(lhs: RGBA<UInt>, rhs: RGBA<UInt>) -> RGBA<UInt> {
        return RGBA<UInt>(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    public static func %(lhs: RGBA<UInt>, rhs: RGBA<UInt>) -> RGBA<UInt> {
        return RGBA<UInt>(red: lhs.red % rhs.red, green: lhs.green % rhs.green, blue: lhs.blue % rhs.blue, alpha: lhs.alpha % rhs.alpha)
    }

    public static func &(lhs: RGBA<UInt>, rhs: RGBA<UInt>) -> RGBA<UInt> {
        return RGBA<UInt>(red: lhs.red & rhs.red, green: lhs.green & rhs.green, blue: lhs.blue & rhs.blue, alpha: lhs.alpha & rhs.alpha)
    }

    public static func |(lhs: RGBA<UInt>, rhs: RGBA<UInt>) -> RGBA<UInt> {
        return RGBA<UInt>(red: lhs.red | rhs.red, green: lhs.green | rhs.green, blue: lhs.blue | rhs.blue, alpha: lhs.alpha | rhs.alpha)
    }

    public static func ^(lhs: RGBA<UInt>, rhs: RGBA<UInt>) -> RGBA<UInt> {
        return RGBA<UInt>(red: lhs.red ^ rhs.red, green: lhs.green ^ rhs.green, blue: lhs.blue ^ rhs.blue, alpha: lhs.alpha ^ rhs.alpha)
    }

    public static func &+(lhs: RGBA<UInt>, rhs: RGBA<UInt>) -> RGBA<UInt> {
        return RGBA<UInt>(red: lhs.red &+ rhs.red, green: lhs.green &+ rhs.green, blue: lhs.blue &+ rhs.blue, alpha: lhs.alpha &+ rhs.alpha)
    }

    public static func &-(lhs: RGBA<UInt>, rhs: RGBA<UInt>) -> RGBA<UInt> {
        return RGBA<UInt>(red: lhs.red &- rhs.red, green: lhs.green &- rhs.green, blue: lhs.blue &- rhs.blue, alpha: lhs.alpha &- rhs.alpha)
    }

    public static func &*(lhs: RGBA<UInt>, rhs: RGBA<UInt>) -> RGBA<UInt> {
        return RGBA<UInt>(red: lhs.red &* rhs.red, green: lhs.green &* rhs.green, blue: lhs.blue &* rhs.blue, alpha: lhs.alpha &* rhs.alpha)
    }

    public static func +=(lhs: inout RGBA<UInt>, rhs: RGBA<UInt>) {
        lhs.red += rhs.red
        lhs.green += rhs.green
        lhs.blue += rhs.blue
        lhs.alpha += rhs.alpha
    }

    public static func -=(lhs: inout RGBA<UInt>, rhs: RGBA<UInt>) {
        lhs.red -= rhs.red
        lhs.green -= rhs.green
        lhs.blue -= rhs.blue
        lhs.alpha -= rhs.alpha
    }

    public static func *=(lhs: inout RGBA<UInt>, rhs: RGBA<UInt>) {
        lhs.red *= rhs.red
        lhs.green *= rhs.green
        lhs.blue *= rhs.blue
        lhs.alpha *= rhs.alpha
    }

    public static func /=(lhs: inout RGBA<UInt>, rhs: RGBA<UInt>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
    }

    public static func %=(lhs: inout RGBA<UInt>, rhs: RGBA<UInt>) {
        lhs.red %= rhs.red
        lhs.green %= rhs.green
        lhs.blue %= rhs.blue
        lhs.alpha %= rhs.alpha
    }

    public static func &=(lhs: inout RGBA<UInt>, rhs: RGBA<UInt>) {
        lhs.red &= rhs.red
        lhs.green &= rhs.green
        lhs.blue &= rhs.blue
        lhs.alpha &= rhs.alpha
    }

    public static func |=(lhs: inout RGBA<UInt>, rhs: RGBA<UInt>) {
        lhs.red |= rhs.red
        lhs.green |= rhs.green
        lhs.blue |= rhs.blue
        lhs.alpha |= rhs.alpha
    }

    public static func ^=(lhs: inout RGBA<UInt>, rhs: RGBA<UInt>) {
        lhs.red ^= rhs.red
        lhs.green ^= rhs.green
        lhs.blue ^= rhs.blue
        lhs.alpha ^= rhs.alpha
    }

    prefix public static func +(a: RGBA<UInt>) -> RGBA<UInt> {
        return RGBA<UInt>(red: +a.red, green: +a.green, blue: +a.blue, alpha: +a.alpha)
    }
}

extension RGBA where Channel == UInt8 {
    public static func +(lhs: RGBA<UInt8>, rhs: RGBA<UInt8>) -> RGBA<UInt8> {
        return RGBA<UInt8>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
    }

    public static func -(lhs: RGBA<UInt8>, rhs: RGBA<UInt8>) -> RGBA<UInt8> {
        return RGBA<UInt8>(red: lhs.red - rhs.red, green: lhs.green - rhs.green, blue: lhs.blue - rhs.blue, alpha: lhs.alpha - rhs.alpha)
    }

    public static func *(lhs: RGBA<UInt8>, rhs: RGBA<UInt8>) -> RGBA<UInt8> {
        return RGBA<UInt8>(red: lhs.red * rhs.red, green: lhs.green * rhs.green, blue: lhs.blue * rhs.blue, alpha: lhs.alpha * rhs.alpha)
    }

    public static func /(lhs: RGBA<UInt8>, rhs: RGBA<UInt8>) -> RGBA<UInt8> {
        return RGBA<UInt8>(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    public static func %(lhs: RGBA<UInt8>, rhs: RGBA<UInt8>) -> RGBA<UInt8> {
        return RGBA<UInt8>(red: lhs.red % rhs.red, green: lhs.green % rhs.green, blue: lhs.blue % rhs.blue, alpha: lhs.alpha % rhs.alpha)
    }

    public static func &(lhs: RGBA<UInt8>, rhs: RGBA<UInt8>) -> RGBA<UInt8> {
        return RGBA<UInt8>(red: lhs.red & rhs.red, green: lhs.green & rhs.green, blue: lhs.blue & rhs.blue, alpha: lhs.alpha & rhs.alpha)
    }

    public static func |(lhs: RGBA<UInt8>, rhs: RGBA<UInt8>) -> RGBA<UInt8> {
        return RGBA<UInt8>(red: lhs.red | rhs.red, green: lhs.green | rhs.green, blue: lhs.blue | rhs.blue, alpha: lhs.alpha | rhs.alpha)
    }

    public static func ^(lhs: RGBA<UInt8>, rhs: RGBA<UInt8>) -> RGBA<UInt8> {
        return RGBA<UInt8>(red: lhs.red ^ rhs.red, green: lhs.green ^ rhs.green, blue: lhs.blue ^ rhs.blue, alpha: lhs.alpha ^ rhs.alpha)
    }

    public static func &+(lhs: RGBA<UInt8>, rhs: RGBA<UInt8>) -> RGBA<UInt8> {
        return RGBA<UInt8>(red: lhs.red &+ rhs.red, green: lhs.green &+ rhs.green, blue: lhs.blue &+ rhs.blue, alpha: lhs.alpha &+ rhs.alpha)
    }

    public static func &-(lhs: RGBA<UInt8>, rhs: RGBA<UInt8>) -> RGBA<UInt8> {
        return RGBA<UInt8>(red: lhs.red &- rhs.red, green: lhs.green &- rhs.green, blue: lhs.blue &- rhs.blue, alpha: lhs.alpha &- rhs.alpha)
    }

    public static func &*(lhs: RGBA<UInt8>, rhs: RGBA<UInt8>) -> RGBA<UInt8> {
        return RGBA<UInt8>(red: lhs.red &* rhs.red, green: lhs.green &* rhs.green, blue: lhs.blue &* rhs.blue, alpha: lhs.alpha &* rhs.alpha)
    }

    public static func +=(lhs: inout RGBA<UInt8>, rhs: RGBA<UInt8>) {
        lhs.red += rhs.red
        lhs.green += rhs.green
        lhs.blue += rhs.blue
        lhs.alpha += rhs.alpha
    }

    public static func -=(lhs: inout RGBA<UInt8>, rhs: RGBA<UInt8>) {
        lhs.red -= rhs.red
        lhs.green -= rhs.green
        lhs.blue -= rhs.blue
        lhs.alpha -= rhs.alpha
    }

    public static func *=(lhs: inout RGBA<UInt8>, rhs: RGBA<UInt8>) {
        lhs.red *= rhs.red
        lhs.green *= rhs.green
        lhs.blue *= rhs.blue
        lhs.alpha *= rhs.alpha
    }

    public static func /=(lhs: inout RGBA<UInt8>, rhs: RGBA<UInt8>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
    }

    public static func %=(lhs: inout RGBA<UInt8>, rhs: RGBA<UInt8>) {
        lhs.red %= rhs.red
        lhs.green %= rhs.green
        lhs.blue %= rhs.blue
        lhs.alpha %= rhs.alpha
    }

    public static func &=(lhs: inout RGBA<UInt8>, rhs: RGBA<UInt8>) {
        lhs.red &= rhs.red
        lhs.green &= rhs.green
        lhs.blue &= rhs.blue
        lhs.alpha &= rhs.alpha
    }

    public static func |=(lhs: inout RGBA<UInt8>, rhs: RGBA<UInt8>) {
        lhs.red |= rhs.red
        lhs.green |= rhs.green
        lhs.blue |= rhs.blue
        lhs.alpha |= rhs.alpha
    }

    public static func ^=(lhs: inout RGBA<UInt8>, rhs: RGBA<UInt8>) {
        lhs.red ^= rhs.red
        lhs.green ^= rhs.green
        lhs.blue ^= rhs.blue
        lhs.alpha ^= rhs.alpha
    }

    prefix public static func +(a: RGBA<UInt8>) -> RGBA<UInt8> {
        return RGBA<UInt8>(red: +a.red, green: +a.green, blue: +a.blue, alpha: +a.alpha)
    }
}

extension RGBA where Channel == UInt16 {
    public static func +(lhs: RGBA<UInt16>, rhs: RGBA<UInt16>) -> RGBA<UInt16> {
        return RGBA<UInt16>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
    }

    public static func -(lhs: RGBA<UInt16>, rhs: RGBA<UInt16>) -> RGBA<UInt16> {
        return RGBA<UInt16>(red: lhs.red - rhs.red, green: lhs.green - rhs.green, blue: lhs.blue - rhs.blue, alpha: lhs.alpha - rhs.alpha)
    }

    public static func *(lhs: RGBA<UInt16>, rhs: RGBA<UInt16>) -> RGBA<UInt16> {
        return RGBA<UInt16>(red: lhs.red * rhs.red, green: lhs.green * rhs.green, blue: lhs.blue * rhs.blue, alpha: lhs.alpha * rhs.alpha)
    }

    public static func /(lhs: RGBA<UInt16>, rhs: RGBA<UInt16>) -> RGBA<UInt16> {
        return RGBA<UInt16>(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    public static func %(lhs: RGBA<UInt16>, rhs: RGBA<UInt16>) -> RGBA<UInt16> {
        return RGBA<UInt16>(red: lhs.red % rhs.red, green: lhs.green % rhs.green, blue: lhs.blue % rhs.blue, alpha: lhs.alpha % rhs.alpha)
    }

    public static func &(lhs: RGBA<UInt16>, rhs: RGBA<UInt16>) -> RGBA<UInt16> {
        return RGBA<UInt16>(red: lhs.red & rhs.red, green: lhs.green & rhs.green, blue: lhs.blue & rhs.blue, alpha: lhs.alpha & rhs.alpha)
    }

    public static func |(lhs: RGBA<UInt16>, rhs: RGBA<UInt16>) -> RGBA<UInt16> {
        return RGBA<UInt16>(red: lhs.red | rhs.red, green: lhs.green | rhs.green, blue: lhs.blue | rhs.blue, alpha: lhs.alpha | rhs.alpha)
    }

    public static func ^(lhs: RGBA<UInt16>, rhs: RGBA<UInt16>) -> RGBA<UInt16> {
        return RGBA<UInt16>(red: lhs.red ^ rhs.red, green: lhs.green ^ rhs.green, blue: lhs.blue ^ rhs.blue, alpha: lhs.alpha ^ rhs.alpha)
    }

    public static func &+(lhs: RGBA<UInt16>, rhs: RGBA<UInt16>) -> RGBA<UInt16> {
        return RGBA<UInt16>(red: lhs.red &+ rhs.red, green: lhs.green &+ rhs.green, blue: lhs.blue &+ rhs.blue, alpha: lhs.alpha &+ rhs.alpha)
    }

    public static func &-(lhs: RGBA<UInt16>, rhs: RGBA<UInt16>) -> RGBA<UInt16> {
        return RGBA<UInt16>(red: lhs.red &- rhs.red, green: lhs.green &- rhs.green, blue: lhs.blue &- rhs.blue, alpha: lhs.alpha &- rhs.alpha)
    }

    public static func &*(lhs: RGBA<UInt16>, rhs: RGBA<UInt16>) -> RGBA<UInt16> {
        return RGBA<UInt16>(red: lhs.red &* rhs.red, green: lhs.green &* rhs.green, blue: lhs.blue &* rhs.blue, alpha: lhs.alpha &* rhs.alpha)
    }

    public static func +=(lhs: inout RGBA<UInt16>, rhs: RGBA<UInt16>) {
        lhs.red += rhs.red
        lhs.green += rhs.green
        lhs.blue += rhs.blue
        lhs.alpha += rhs.alpha
    }

    public static func -=(lhs: inout RGBA<UInt16>, rhs: RGBA<UInt16>) {
        lhs.red -= rhs.red
        lhs.green -= rhs.green
        lhs.blue -= rhs.blue
        lhs.alpha -= rhs.alpha
    }

    public static func *=(lhs: inout RGBA<UInt16>, rhs: RGBA<UInt16>) {
        lhs.red *= rhs.red
        lhs.green *= rhs.green
        lhs.blue *= rhs.blue
        lhs.alpha *= rhs.alpha
    }

    public static func /=(lhs: inout RGBA<UInt16>, rhs: RGBA<UInt16>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
    }

    public static func %=(lhs: inout RGBA<UInt16>, rhs: RGBA<UInt16>) {
        lhs.red %= rhs.red
        lhs.green %= rhs.green
        lhs.blue %= rhs.blue
        lhs.alpha %= rhs.alpha
    }

    public static func &=(lhs: inout RGBA<UInt16>, rhs: RGBA<UInt16>) {
        lhs.red &= rhs.red
        lhs.green &= rhs.green
        lhs.blue &= rhs.blue
        lhs.alpha &= rhs.alpha
    }

    public static func |=(lhs: inout RGBA<UInt16>, rhs: RGBA<UInt16>) {
        lhs.red |= rhs.red
        lhs.green |= rhs.green
        lhs.blue |= rhs.blue
        lhs.alpha |= rhs.alpha
    }

    public static func ^=(lhs: inout RGBA<UInt16>, rhs: RGBA<UInt16>) {
        lhs.red ^= rhs.red
        lhs.green ^= rhs.green
        lhs.blue ^= rhs.blue
        lhs.alpha ^= rhs.alpha
    }

    prefix public static func +(a: RGBA<UInt16>) -> RGBA<UInt16> {
        return RGBA<UInt16>(red: +a.red, green: +a.green, blue: +a.blue, alpha: +a.alpha)
    }
}

extension RGBA where Channel == UInt32 {
    public static func +(lhs: RGBA<UInt32>, rhs: RGBA<UInt32>) -> RGBA<UInt32> {
        return RGBA<UInt32>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
    }

    public static func -(lhs: RGBA<UInt32>, rhs: RGBA<UInt32>) -> RGBA<UInt32> {
        return RGBA<UInt32>(red: lhs.red - rhs.red, green: lhs.green - rhs.green, blue: lhs.blue - rhs.blue, alpha: lhs.alpha - rhs.alpha)
    }

    public static func *(lhs: RGBA<UInt32>, rhs: RGBA<UInt32>) -> RGBA<UInt32> {
        return RGBA<UInt32>(red: lhs.red * rhs.red, green: lhs.green * rhs.green, blue: lhs.blue * rhs.blue, alpha: lhs.alpha * rhs.alpha)
    }

    public static func /(lhs: RGBA<UInt32>, rhs: RGBA<UInt32>) -> RGBA<UInt32> {
        return RGBA<UInt32>(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    public static func %(lhs: RGBA<UInt32>, rhs: RGBA<UInt32>) -> RGBA<UInt32> {
        return RGBA<UInt32>(red: lhs.red % rhs.red, green: lhs.green % rhs.green, blue: lhs.blue % rhs.blue, alpha: lhs.alpha % rhs.alpha)
    }

    public static func &(lhs: RGBA<UInt32>, rhs: RGBA<UInt32>) -> RGBA<UInt32> {
        return RGBA<UInt32>(red: lhs.red & rhs.red, green: lhs.green & rhs.green, blue: lhs.blue & rhs.blue, alpha: lhs.alpha & rhs.alpha)
    }

    public static func |(lhs: RGBA<UInt32>, rhs: RGBA<UInt32>) -> RGBA<UInt32> {
        return RGBA<UInt32>(red: lhs.red | rhs.red, green: lhs.green | rhs.green, blue: lhs.blue | rhs.blue, alpha: lhs.alpha | rhs.alpha)
    }

    public static func ^(lhs: RGBA<UInt32>, rhs: RGBA<UInt32>) -> RGBA<UInt32> {
        return RGBA<UInt32>(red: lhs.red ^ rhs.red, green: lhs.green ^ rhs.green, blue: lhs.blue ^ rhs.blue, alpha: lhs.alpha ^ rhs.alpha)
    }

    public static func &+(lhs: RGBA<UInt32>, rhs: RGBA<UInt32>) -> RGBA<UInt32> {
        return RGBA<UInt32>(red: lhs.red &+ rhs.red, green: lhs.green &+ rhs.green, blue: lhs.blue &+ rhs.blue, alpha: lhs.alpha &+ rhs.alpha)
    }

    public static func &-(lhs: RGBA<UInt32>, rhs: RGBA<UInt32>) -> RGBA<UInt32> {
        return RGBA<UInt32>(red: lhs.red &- rhs.red, green: lhs.green &- rhs.green, blue: lhs.blue &- rhs.blue, alpha: lhs.alpha &- rhs.alpha)
    }

    public static func &*(lhs: RGBA<UInt32>, rhs: RGBA<UInt32>) -> RGBA<UInt32> {
        return RGBA<UInt32>(red: lhs.red &* rhs.red, green: lhs.green &* rhs.green, blue: lhs.blue &* rhs.blue, alpha: lhs.alpha &* rhs.alpha)
    }

    public static func +=(lhs: inout RGBA<UInt32>, rhs: RGBA<UInt32>) {
        lhs.red += rhs.red
        lhs.green += rhs.green
        lhs.blue += rhs.blue
        lhs.alpha += rhs.alpha
    }

    public static func -=(lhs: inout RGBA<UInt32>, rhs: RGBA<UInt32>) {
        lhs.red -= rhs.red
        lhs.green -= rhs.green
        lhs.blue -= rhs.blue
        lhs.alpha -= rhs.alpha
    }

    public static func *=(lhs: inout RGBA<UInt32>, rhs: RGBA<UInt32>) {
        lhs.red *= rhs.red
        lhs.green *= rhs.green
        lhs.blue *= rhs.blue
        lhs.alpha *= rhs.alpha
    }

    public static func /=(lhs: inout RGBA<UInt32>, rhs: RGBA<UInt32>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
    }

    public static func %=(lhs: inout RGBA<UInt32>, rhs: RGBA<UInt32>) {
        lhs.red %= rhs.red
        lhs.green %= rhs.green
        lhs.blue %= rhs.blue
        lhs.alpha %= rhs.alpha
    }

    public static func &=(lhs: inout RGBA<UInt32>, rhs: RGBA<UInt32>) {
        lhs.red &= rhs.red
        lhs.green &= rhs.green
        lhs.blue &= rhs.blue
        lhs.alpha &= rhs.alpha
    }

    public static func |=(lhs: inout RGBA<UInt32>, rhs: RGBA<UInt32>) {
        lhs.red |= rhs.red
        lhs.green |= rhs.green
        lhs.blue |= rhs.blue
        lhs.alpha |= rhs.alpha
    }

    public static func ^=(lhs: inout RGBA<UInt32>, rhs: RGBA<UInt32>) {
        lhs.red ^= rhs.red
        lhs.green ^= rhs.green
        lhs.blue ^= rhs.blue
        lhs.alpha ^= rhs.alpha
    }

    prefix public static func +(a: RGBA<UInt32>) -> RGBA<UInt32> {
        return RGBA<UInt32>(red: +a.red, green: +a.green, blue: +a.blue, alpha: +a.alpha)
    }
}

extension RGBA where Channel == UInt64 {
    public static func +(lhs: RGBA<UInt64>, rhs: RGBA<UInt64>) -> RGBA<UInt64> {
        return RGBA<UInt64>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
    }

    public static func -(lhs: RGBA<UInt64>, rhs: RGBA<UInt64>) -> RGBA<UInt64> {
        return RGBA<UInt64>(red: lhs.red - rhs.red, green: lhs.green - rhs.green, blue: lhs.blue - rhs.blue, alpha: lhs.alpha - rhs.alpha)
    }

    public static func *(lhs: RGBA<UInt64>, rhs: RGBA<UInt64>) -> RGBA<UInt64> {
        return RGBA<UInt64>(red: lhs.red * rhs.red, green: lhs.green * rhs.green, blue: lhs.blue * rhs.blue, alpha: lhs.alpha * rhs.alpha)
    }

    public static func /(lhs: RGBA<UInt64>, rhs: RGBA<UInt64>) -> RGBA<UInt64> {
        return RGBA<UInt64>(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    public static func %(lhs: RGBA<UInt64>, rhs: RGBA<UInt64>) -> RGBA<UInt64> {
        return RGBA<UInt64>(red: lhs.red % rhs.red, green: lhs.green % rhs.green, blue: lhs.blue % rhs.blue, alpha: lhs.alpha % rhs.alpha)
    }

    public static func &(lhs: RGBA<UInt64>, rhs: RGBA<UInt64>) -> RGBA<UInt64> {
        return RGBA<UInt64>(red: lhs.red & rhs.red, green: lhs.green & rhs.green, blue: lhs.blue & rhs.blue, alpha: lhs.alpha & rhs.alpha)
    }

    public static func |(lhs: RGBA<UInt64>, rhs: RGBA<UInt64>) -> RGBA<UInt64> {
        return RGBA<UInt64>(red: lhs.red | rhs.red, green: lhs.green | rhs.green, blue: lhs.blue | rhs.blue, alpha: lhs.alpha | rhs.alpha)
    }

    public static func ^(lhs: RGBA<UInt64>, rhs: RGBA<UInt64>) -> RGBA<UInt64> {
        return RGBA<UInt64>(red: lhs.red ^ rhs.red, green: lhs.green ^ rhs.green, blue: lhs.blue ^ rhs.blue, alpha: lhs.alpha ^ rhs.alpha)
    }

    public static func &+(lhs: RGBA<UInt64>, rhs: RGBA<UInt64>) -> RGBA<UInt64> {
        return RGBA<UInt64>(red: lhs.red &+ rhs.red, green: lhs.green &+ rhs.green, blue: lhs.blue &+ rhs.blue, alpha: lhs.alpha &+ rhs.alpha)
    }

    public static func &-(lhs: RGBA<UInt64>, rhs: RGBA<UInt64>) -> RGBA<UInt64> {
        return RGBA<UInt64>(red: lhs.red &- rhs.red, green: lhs.green &- rhs.green, blue: lhs.blue &- rhs.blue, alpha: lhs.alpha &- rhs.alpha)
    }

    public static func &*(lhs: RGBA<UInt64>, rhs: RGBA<UInt64>) -> RGBA<UInt64> {
        return RGBA<UInt64>(red: lhs.red &* rhs.red, green: lhs.green &* rhs.green, blue: lhs.blue &* rhs.blue, alpha: lhs.alpha &* rhs.alpha)
    }

    public static func +=(lhs: inout RGBA<UInt64>, rhs: RGBA<UInt64>) {
        lhs.red += rhs.red
        lhs.green += rhs.green
        lhs.blue += rhs.blue
        lhs.alpha += rhs.alpha
    }

    public static func -=(lhs: inout RGBA<UInt64>, rhs: RGBA<UInt64>) {
        lhs.red -= rhs.red
        lhs.green -= rhs.green
        lhs.blue -= rhs.blue
        lhs.alpha -= rhs.alpha
    }

    public static func *=(lhs: inout RGBA<UInt64>, rhs: RGBA<UInt64>) {
        lhs.red *= rhs.red
        lhs.green *= rhs.green
        lhs.blue *= rhs.blue
        lhs.alpha *= rhs.alpha
    }

    public static func /=(lhs: inout RGBA<UInt64>, rhs: RGBA<UInt64>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
    }

    public static func %=(lhs: inout RGBA<UInt64>, rhs: RGBA<UInt64>) {
        lhs.red %= rhs.red
        lhs.green %= rhs.green
        lhs.blue %= rhs.blue
        lhs.alpha %= rhs.alpha
    }

    public static func &=(lhs: inout RGBA<UInt64>, rhs: RGBA<UInt64>) {
        lhs.red &= rhs.red
        lhs.green &= rhs.green
        lhs.blue &= rhs.blue
        lhs.alpha &= rhs.alpha
    }

    public static func |=(lhs: inout RGBA<UInt64>, rhs: RGBA<UInt64>) {
        lhs.red |= rhs.red
        lhs.green |= rhs.green
        lhs.blue |= rhs.blue
        lhs.alpha |= rhs.alpha
    }

    public static func ^=(lhs: inout RGBA<UInt64>, rhs: RGBA<UInt64>) {
        lhs.red ^= rhs.red
        lhs.green ^= rhs.green
        lhs.blue ^= rhs.blue
        lhs.alpha ^= rhs.alpha
    }

    prefix public static func +(a: RGBA<UInt64>) -> RGBA<UInt64> {
        return RGBA<UInt64>(red: +a.red, green: +a.green, blue: +a.blue, alpha: +a.alpha)
    }
}

extension RGBA where Channel == Float {
    public static func +(lhs: RGBA<Float>, rhs: RGBA<Float>) -> RGBA<Float> {
        return RGBA<Float>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
    }

    public static func -(lhs: RGBA<Float>, rhs: RGBA<Float>) -> RGBA<Float> {
        return RGBA<Float>(red: lhs.red - rhs.red, green: lhs.green - rhs.green, blue: lhs.blue - rhs.blue, alpha: lhs.alpha - rhs.alpha)
    }

    public static func *(lhs: RGBA<Float>, rhs: RGBA<Float>) -> RGBA<Float> {
        return RGBA<Float>(red: lhs.red * rhs.red, green: lhs.green * rhs.green, blue: lhs.blue * rhs.blue, alpha: lhs.alpha * rhs.alpha)
    }

    public static func /(lhs: RGBA<Float>, rhs: RGBA<Float>) -> RGBA<Float> {
        return RGBA<Float>(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    public static func +=(lhs: inout RGBA<Float>, rhs: RGBA<Float>) {
        lhs.red += rhs.red
        lhs.green += rhs.green
        lhs.blue += rhs.blue
        lhs.alpha += rhs.alpha
    }

    public static func -=(lhs: inout RGBA<Float>, rhs: RGBA<Float>) {
        lhs.red -= rhs.red
        lhs.green -= rhs.green
        lhs.blue -= rhs.blue
        lhs.alpha -= rhs.alpha
    }

    public static func *=(lhs: inout RGBA<Float>, rhs: RGBA<Float>) {
        lhs.red *= rhs.red
        lhs.green *= rhs.green
        lhs.blue *= rhs.blue
        lhs.alpha *= rhs.alpha
    }

    public static func /=(lhs: inout RGBA<Float>, rhs: RGBA<Float>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
    }

    prefix public static func +(a: RGBA<Float>) -> RGBA<Float> {
        return RGBA<Float>(red: +a.red, green: +a.green, blue: +a.blue, alpha: +a.alpha)
    }

    prefix public static func -(a: RGBA<Float>) -> RGBA<Float> {
        return RGBA<Float>(red: -a.red, green: -a.green, blue: -a.blue, alpha: -a.alpha)
    }
}

extension RGBA where Channel == Double {
    public static func +(lhs: RGBA<Double>, rhs: RGBA<Double>) -> RGBA<Double> {
        return RGBA<Double>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
    }

    public static func -(lhs: RGBA<Double>, rhs: RGBA<Double>) -> RGBA<Double> {
        return RGBA<Double>(red: lhs.red - rhs.red, green: lhs.green - rhs.green, blue: lhs.blue - rhs.blue, alpha: lhs.alpha - rhs.alpha)
    }

    public static func *(lhs: RGBA<Double>, rhs: RGBA<Double>) -> RGBA<Double> {
        return RGBA<Double>(red: lhs.red * rhs.red, green: lhs.green * rhs.green, blue: lhs.blue * rhs.blue, alpha: lhs.alpha * rhs.alpha)
    }

    public static func /(lhs: RGBA<Double>, rhs: RGBA<Double>) -> RGBA<Double> {
        return RGBA<Double>(red: lhs.red / rhs.red, green: lhs.green / rhs.green, blue: lhs.blue / rhs.blue, alpha: lhs.alpha / rhs.alpha)
    }

    public static func +=(lhs: inout RGBA<Double>, rhs: RGBA<Double>) {
        lhs.red += rhs.red
        lhs.green += rhs.green
        lhs.blue += rhs.blue
        lhs.alpha += rhs.alpha
    }

    public static func -=(lhs: inout RGBA<Double>, rhs: RGBA<Double>) {
        lhs.red -= rhs.red
        lhs.green -= rhs.green
        lhs.blue -= rhs.blue
        lhs.alpha -= rhs.alpha
    }

    public static func *=(lhs: inout RGBA<Double>, rhs: RGBA<Double>) {
        lhs.red *= rhs.red
        lhs.green *= rhs.green
        lhs.blue *= rhs.blue
        lhs.alpha *= rhs.alpha
    }

    public static func /=(lhs: inout RGBA<Double>, rhs: RGBA<Double>) {
        lhs.red /= rhs.red
        lhs.green /= rhs.green
        lhs.blue /= rhs.blue
        lhs.alpha /= rhs.alpha
    }

    prefix public static func +(a: RGBA<Double>) -> RGBA<Double> {
        return RGBA<Double>(red: +a.red, green: +a.green, blue: +a.blue, alpha: +a.alpha)
    }

    prefix public static func -(a: RGBA<Double>) -> RGBA<Double> {
        return RGBA<Double>(red: -a.red, green: -a.green, blue: -a.blue, alpha: -a.alpha)
    }
}

extension RGBA where Channel == Bool {
    public static func &&(lhs: RGBA<Bool>, rhs: RGBA<Bool>) -> RGBA<Bool> {
        return RGBA<Bool>(red: lhs.red && rhs.red, green: lhs.green && rhs.green, blue: lhs.blue && rhs.blue, alpha: lhs.alpha && rhs.alpha)
    }

    public static func ||(lhs: RGBA<Bool>, rhs: RGBA<Bool>) -> RGBA<Bool> {
        return RGBA<Bool>(red: lhs.red || rhs.red, green: lhs.green || rhs.green, blue: lhs.blue || rhs.blue, alpha: lhs.alpha || rhs.alpha)
    }

    prefix public static func !(a: RGBA<Bool>) -> RGBA<Bool> {
        return RGBA<Bool>(red: !a.red, green: !a.green, blue: !a.blue, alpha: !a.alpha)
    }
}
