extension Image where Pixel == RGBA<Int> {
    public static func +(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<Int>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<Int>>, rhs: Image<RGBA<Int>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        return Image<RGBA<Int>>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<RGBA<Int>>) -> Image<RGBA<Int>> {
        return Image<RGBA<Int>>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == RGBA<Int8> {
    public static func +(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<Int8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<Int8>>, rhs: Image<RGBA<Int8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        return Image<RGBA<Int8>>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<RGBA<Int8>>) -> Image<RGBA<Int8>> {
        return Image<RGBA<Int8>>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == RGBA<Int16> {
    public static func +(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<Int16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<Int16>>, rhs: Image<RGBA<Int16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        return Image<RGBA<Int16>>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<RGBA<Int16>>) -> Image<RGBA<Int16>> {
        return Image<RGBA<Int16>>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == RGBA<Int32> {
    public static func +(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<Int32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<Int32>>, rhs: Image<RGBA<Int32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        return Image<RGBA<Int32>>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<RGBA<Int32>>) -> Image<RGBA<Int32>> {
        return Image<RGBA<Int32>>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == RGBA<Int64> {
    public static func +(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<Int64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<Int64>>, rhs: Image<RGBA<Int64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        return Image<RGBA<Int64>>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<RGBA<Int64>>) -> Image<RGBA<Int64>> {
        return Image<RGBA<Int64>>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == RGBA<UInt> {
    public static func +(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<UInt>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<UInt>>, rhs: Image<RGBA<UInt>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<RGBA<UInt>>) -> Image<RGBA<UInt>> {
        return Image<RGBA<UInt>>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel == RGBA<UInt8> {
    public static func +(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<UInt8>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<UInt8>>, rhs: Image<RGBA<UInt8>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<RGBA<UInt8>>) -> Image<RGBA<UInt8>> {
        return Image<RGBA<UInt8>>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel == RGBA<UInt16> {
    public static func +(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<UInt16>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<UInt16>>, rhs: Image<RGBA<UInt16>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<RGBA<UInt16>>) -> Image<RGBA<UInt16>> {
        return Image<RGBA<UInt16>>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel == RGBA<UInt32> {
    public static func +(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<UInt32>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<UInt32>>, rhs: Image<RGBA<UInt32>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<RGBA<UInt32>>) -> Image<RGBA<UInt32>> {
        return Image<RGBA<UInt32>>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel == RGBA<UInt64> {
    public static func +(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<RGBA<UInt64>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<RGBA<UInt64>>, rhs: Image<RGBA<UInt64>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<RGBA<UInt64>>) -> Image<RGBA<UInt64>> {
        return Image<RGBA<UInt64>>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel == RGBA<Float> {
    public static func +(lhs: Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) -> Image<RGBA<Float>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<Float>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) -> Image<RGBA<Float>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<Float>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) -> Image<RGBA<Float>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<Float>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) -> Image<RGBA<Float>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<Float>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<Float>>, rhs: Image<RGBA<Float>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<RGBA<Float>>) -> Image<RGBA<Float>> {
        return Image<RGBA<Float>>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<RGBA<Float>>) -> Image<RGBA<Float>> {
        return Image<RGBA<Float>>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == RGBA<Double> {
    public static func +(lhs: Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) -> Image<RGBA<Double>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<RGBA<Double>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) -> Image<RGBA<Double>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<RGBA<Double>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) -> Image<RGBA<Double>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<RGBA<Double>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) -> Image<RGBA<Double>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<RGBA<Double>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<RGBA<Double>>, rhs: Image<RGBA<Double>>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<RGBA<Double>>) -> Image<RGBA<Double>> {
        return Image<RGBA<Double>>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<RGBA<Double>>) -> Image<RGBA<Double>> {
        return Image<RGBA<Double>>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == RGBA<Bool> {
    public static func &&(lhs: Image<RGBA<Bool>>, rhs: Image<RGBA<Bool>>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 && $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ||(lhs: Image<RGBA<Bool>>, rhs: Image<RGBA<Bool>>) -> Image<RGBA<Bool>> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`||` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 || $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func !(a: Image<RGBA<Bool>>) -> Image<RGBA<Bool>> {
        return Image<RGBA<Bool>>(width: a.width, height: a.height, pixels: a.pixels.map { !$0 })
    }
}

extension Image where Pixel == Int {
    public static func +(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Int>, rhs: Image<Int>) -> Image<Int> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<Int>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Int>, rhs: Image<Int>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Int>, rhs: Image<Int>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Int>, rhs: Image<Int>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Int>, rhs: Image<Int>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Int>, rhs: Image<Int>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Int>, rhs: Image<Int>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Int>, rhs: Image<Int>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Int>, rhs: Image<Int>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<Int>) -> Image<Int> {
        return Image<Int>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<Int>) -> Image<Int> {
        return Image<Int>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == Int8 {
    public static func +(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Int8>, rhs: Image<Int8>) -> Image<Int8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<Int8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Int8>, rhs: Image<Int8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<Int8>) -> Image<Int8> {
        return Image<Int8>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<Int8>) -> Image<Int8> {
        return Image<Int8>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == Int16 {
    public static func +(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Int16>, rhs: Image<Int16>) -> Image<Int16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<Int16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Int16>, rhs: Image<Int16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<Int16>) -> Image<Int16> {
        return Image<Int16>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<Int16>) -> Image<Int16> {
        return Image<Int16>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == Int32 {
    public static func +(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Int32>, rhs: Image<Int32>) -> Image<Int32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<Int32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Int32>, rhs: Image<Int32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<Int32>) -> Image<Int32> {
        return Image<Int32>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<Int32>) -> Image<Int32> {
        return Image<Int32>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == Int64 {
    public static func +(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<Int64>, rhs: Image<Int64>) -> Image<Int64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<Int64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<Int64>, rhs: Image<Int64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<Int64>) -> Image<Int64> {
        return Image<Int64>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<Int64>) -> Image<Int64> {
        return Image<Int64>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == UInt {
    public static func +(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<UInt>, rhs: Image<UInt>) -> Image<UInt> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<UInt>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<UInt>, rhs: Image<UInt>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<UInt>) -> Image<UInt> {
        return Image<UInt>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel == UInt8 {
    public static func +(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<UInt8>, rhs: Image<UInt8>) -> Image<UInt8> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<UInt8>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<UInt8>, rhs: Image<UInt8>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<UInt8>) -> Image<UInt8> {
        return Image<UInt8>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel == UInt16 {
    public static func +(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<UInt16>, rhs: Image<UInt16>) -> Image<UInt16> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<UInt16>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<UInt16>, rhs: Image<UInt16>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<UInt16>) -> Image<UInt16> {
        return Image<UInt16>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel == UInt32 {
    public static func +(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<UInt32>, rhs: Image<UInt32>) -> Image<UInt32> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<UInt32>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<UInt32>, rhs: Image<UInt32>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<UInt32>) -> Image<UInt32> {
        return Image<UInt32>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel == UInt64 {
    public static func +(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*(lhs: Image<UInt64>, rhs: Image<UInt64>) -> Image<UInt64> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image<UInt64>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    public static func %=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] %= rhs.pixels[i]
        }
    }

    public static func &=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] &= rhs.pixels[i]
        }
    }

    public static func |=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] |= rhs.pixels[i]
        }
    }

    public static func ^=(lhs: inout Image<UInt64>, rhs: Image<UInt64>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] ^= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<UInt64>) -> Image<UInt64> {
        return Image<UInt64>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }
}

extension Image where Pixel == Float {
    public static func +(lhs: Image<Float>, rhs: Image<Float>) -> Image<Float> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<Float>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Float>, rhs: Image<Float>) -> Image<Float> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<Float>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Float>, rhs: Image<Float>) -> Image<Float> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<Float>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Float>, rhs: Image<Float>) -> Image<Float> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<Float>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Float>, rhs: Image<Float>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Float>, rhs: Image<Float>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Float>, rhs: Image<Float>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Float>, rhs: Image<Float>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<Float>) -> Image<Float> {
        return Image<Float>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<Float>) -> Image<Float> {
        return Image<Float>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == Double {
    public static func +(lhs: Image<Double>, rhs: Image<Double>) -> Image<Double> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image<Double>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -(lhs: Image<Double>, rhs: Image<Double>) -> Image<Double> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image<Double>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *(lhs: Image<Double>, rhs: Image<Double>) -> Image<Double> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image<Double>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /(lhs: Image<Double>, rhs: Image<Double>) -> Image<Double> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image<Double>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=(lhs: inout Image<Double>, rhs: Image<Double>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] += rhs.pixels[i]
        }
    }

    public static func -=(lhs: inout Image<Double>, rhs: Image<Double>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] -= rhs.pixels[i]
        }
    }

    public static func *=(lhs: inout Image<Double>, rhs: Image<Double>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] *= rhs.pixels[i]
        }
    }

    public static func /=(lhs: inout Image<Double>, rhs: Image<Double>) {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for i in lhs.pixels.indices {
            lhs.pixels[i] /= rhs.pixels[i]
        }
    }

    prefix public static func +(a: Image<Double>) -> Image<Double> {
        return Image<Double>(width: a.width, height: a.height, pixels: a.pixels.map { +$0 })
    }

    prefix public static func -(a: Image<Double>) -> Image<Double> {
        return Image<Double>(width: a.width, height: a.height, pixels: a.pixels.map { -$0 })
    }
}

extension Image where Pixel == Bool {
    public static func &&(lhs: Image<Bool>, rhs: Image<Bool>) -> Image<Bool> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 && $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ||(lhs: Image<Bool>, rhs: Image<Bool>) -> Image<Bool> {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`||` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 || $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func !(a: Image<Bool>) -> Image<Bool> {
        return Image<Bool>(width: a.width, height: a.height, pixels: a.pixels.map { !$0 })
    }
}
