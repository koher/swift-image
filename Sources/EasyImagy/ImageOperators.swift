extension ImageProtocol where Element : Numeric {
    @inlinable
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    @inlinable
    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }
}

extension ImageProtocol where Element : SignedNumeric {
    @inlinable
    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element : BinaryInteger {
    @inlinable
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }
}

extension ImageProtocol where Element : FixedWidthInteger {
    @inlinable
    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }
}

extension ImageProtocol where Element : FloatingPoint {
    @inlinable
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }
}

extension Image : Equatable where Pixel : Equatable {}
extension ImageSlice : Equatable where Pixel : Equatable {}
extension ImageProtocol where Element : Equatable {
    @inlinable
    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @inlinable
    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }
}

extension ImageProtocol where Element : Comparable {
    @inlinable
    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Bool> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Bool> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Bool> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Bool> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }
}

extension ImageProtocol where Element == Bool {
    @inlinable
    public static func &&<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 && $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ||<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`||` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 || $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    prefix public static func !(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { !$0 })
    }
}

extension ImageProtocol where Element == RGBA<Int> {
    @inlinable
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @inlinable
    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    @inlinable
    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }

    @inlinable
    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element == RGBA<Int8> {
    @inlinable
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @inlinable
    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    @inlinable
    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }

    @inlinable
    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element == RGBA<Int16> {
    @inlinable
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @inlinable
    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    @inlinable
    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }

    @inlinable
    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element == RGBA<Int32> {
    @inlinable
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @inlinable
    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    @inlinable
    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }

    @inlinable
    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element == RGBA<Int64> {
    @inlinable
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @inlinable
    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    @inlinable
    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }

    @inlinable
    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element == RGBA<UInt> {
    @inlinable
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @inlinable
    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    @inlinable
    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }
}

extension ImageProtocol where Element == RGBA<UInt8> {
    @inlinable
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @inlinable
    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    @inlinable
    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }
}

extension ImageProtocol where Element == RGBA<UInt16> {
    @inlinable
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @inlinable
    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    @inlinable
    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }
}

extension ImageProtocol where Element == RGBA<UInt32> {
    @inlinable
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @inlinable
    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    @inlinable
    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }
}

extension ImageProtocol where Element == RGBA<UInt64> {
    @inlinable
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @inlinable
    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    @inlinable
    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }
}

extension ImageProtocol where Element == RGBA<Float> {
    @inlinable
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @inlinable
    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    @inlinable
    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }

    @inlinable
    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element == RGBA<Double> {
    @inlinable
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    @inlinable
    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @inlinable
    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    @inlinable
    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }

    @inlinable
    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element == RGBA<Bool> {
    @inlinable
    public static func &&<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 && $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ||<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`||` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 || $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @inlinable
    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @inlinable
    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }
}
