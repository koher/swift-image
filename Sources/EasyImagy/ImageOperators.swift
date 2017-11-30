extension Image where Pixel : Numeric {
    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    public static func +(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    public static func -(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    public static func *(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    public static func +=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    public static func -=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    public static func *=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    prefix public static func +(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel : SignedNumeric {
    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    prefix public static func -(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel : BinaryInteger {
    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func /(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func %(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func &(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func |(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func ^(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func <<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func >>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func /=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func %=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func &=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func |=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func ^=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func <<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] <<= rhs.pixels[i]
        }
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func >>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] >>= rhs.pixels[i]
        }
    }
}

extension Image where Pixel : FixedWidthInteger {
    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func &+(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func &-(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func &*(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func &<<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func &>>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func &<<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &<<= rhs.pixels[i]
        }
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    public static func &>>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &>>= rhs.pixels[i]
        }
    }
}

extension Image where Pixel : FloatingPoint {
    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    public static func /(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    public static func /=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }
}

// FIXME: with conditional conformance
extension Image where Pixel : Equatable {
    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    @_specialize(exported: true, where Pixel == Bool)
    public static func ==(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`==` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    @_specialize(exported: true, where Pixel == Bool)
    public static func !=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`!=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }
}

extension Image where Pixel : Comparable {
    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    public static func <(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Bool> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    public static func <=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Bool> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    public static func >(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Bool> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Pixel == Int)
    @_specialize(exported: true, where Pixel == Int8)
    @_specialize(exported: true, where Pixel == Int16)
    @_specialize(exported: true, where Pixel == Int32)
    @_specialize(exported: true, where Pixel == Int64)
    @_specialize(exported: true, where Pixel == UInt)
    @_specialize(exported: true, where Pixel == UInt8)
    @_specialize(exported: true, where Pixel == UInt16)
    @_specialize(exported: true, where Pixel == UInt32)
    @_specialize(exported: true, where Pixel == UInt64)
    @_specialize(exported: true, where Pixel == Float)
    @_specialize(exported: true, where Pixel == Double)
    @_specialize(exported: true, where Pixel == Float80)
    public static func >=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Bool> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }
}

extension Image where Pixel == Bool {
    public static func &&(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 && $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ||(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`||` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 || $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func !(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { !$0 })
    }
}

extension Image where Pixel == RGBA<Int> {
    public static func +(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    public static func <<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] <<= rhs.pixels[i]
        }
    }

    public static func >>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] >>= rhs.pixels[i]
        }
    }

    public static func &<<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &<<= rhs.pixels[i]
        }
    }

    public static func &>>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &>>= rhs.pixels[i]
        }
    }

    public static func ==(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`==` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`!=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == RGBA<Int8> {
    public static func +(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    public static func <<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] <<= rhs.pixels[i]
        }
    }

    public static func >>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] >>= rhs.pixels[i]
        }
    }

    public static func &<<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &<<= rhs.pixels[i]
        }
    }

    public static func &>>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &>>= rhs.pixels[i]
        }
    }

    public static func ==(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`==` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`!=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == RGBA<Int16> {
    public static func +(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    public static func <<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] <<= rhs.pixels[i]
        }
    }

    public static func >>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] >>= rhs.pixels[i]
        }
    }

    public static func &<<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &<<= rhs.pixels[i]
        }
    }

    public static func &>>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &>>= rhs.pixels[i]
        }
    }

    public static func ==(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`==` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`!=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == RGBA<Int32> {
    public static func +(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    public static func <<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] <<= rhs.pixels[i]
        }
    }

    public static func >>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] >>= rhs.pixels[i]
        }
    }

    public static func &<<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &<<= rhs.pixels[i]
        }
    }

    public static func &>>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &>>= rhs.pixels[i]
        }
    }

    public static func ==(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`==` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`!=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == RGBA<Int64> {
    public static func +(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    public static func <<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] <<= rhs.pixels[i]
        }
    }

    public static func >>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] >>= rhs.pixels[i]
        }
    }

    public static func &<<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &<<= rhs.pixels[i]
        }
    }

    public static func &>>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &>>= rhs.pixels[i]
        }
    }

    public static func ==(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`==` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`!=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == RGBA<UInt> {
    public static func +(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    public static func <<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] <<= rhs.pixels[i]
        }
    }

    public static func >>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] >>= rhs.pixels[i]
        }
    }

    public static func &<<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &<<= rhs.pixels[i]
        }
    }

    public static func &>>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &>>= rhs.pixels[i]
        }
    }

    public static func ==(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`==` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`!=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel == RGBA<UInt8> {
    public static func +(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    public static func <<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] <<= rhs.pixels[i]
        }
    }

    public static func >>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] >>= rhs.pixels[i]
        }
    }

    public static func &<<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &<<= rhs.pixels[i]
        }
    }

    public static func &>>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &>>= rhs.pixels[i]
        }
    }

    public static func ==(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`==` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`!=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel == RGBA<UInt16> {
    public static func +(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    public static func <<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] <<= rhs.pixels[i]
        }
    }

    public static func >>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] >>= rhs.pixels[i]
        }
    }

    public static func &<<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &<<= rhs.pixels[i]
        }
    }

    public static func &>>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &>>= rhs.pixels[i]
        }
    }

    public static func ==(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`==` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`!=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel == RGBA<UInt32> {
    public static func +(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    public static func <<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] <<= rhs.pixels[i]
        }
    }

    public static func >>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] >>= rhs.pixels[i]
        }
    }

    public static func &<<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &<<= rhs.pixels[i]
        }
    }

    public static func &>>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &>>= rhs.pixels[i]
        }
    }

    public static func ==(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`==` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`!=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel == RGBA<UInt64> {
    public static func +(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>>(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    public static func <<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] <<= rhs.pixels[i]
        }
    }

    public static func >>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] >>= rhs.pixels[i]
        }
    }

    public static func &<<=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &<<= rhs.pixels[i]
        }
    }

    public static func &>>=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &>>= rhs.pixels[i]
        }
    }

    public static func ==(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`==` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`!=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel == RGBA<Float> {
    public static func +(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func ==(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`==` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`!=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == RGBA<Double> {
    public static func +(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func ==(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`==` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`!=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == RGBA<Float80> {
    public static func +(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Pixel>, rhs: Image<Pixel>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func ==(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`==` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`!=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<Pixel>) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == RGBA<Bool> {
    public static func &&(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 && $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ||(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Image<Pixel> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`||` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 || $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ==(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`==` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=(lhs: Image<Pixel>, rhs: Image<Pixel>) -> Bool {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`!=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }
}
