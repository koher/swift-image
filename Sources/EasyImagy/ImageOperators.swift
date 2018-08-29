extension ImageProtocol where Element : Numeric {
    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == Image<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == Image<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == Image<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == ImageSlice<Double>)
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == Image<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == Image<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == Image<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == ImageSlice<Double>)
    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == Image<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == Image<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == Image<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == ImageSlice<Double>)
    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == Image<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == Image<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == Image<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == ImageSlice<Double>)
    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == Image<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == Image<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == Image<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == ImageSlice<Double>)
    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == Image<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == Image<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == Image<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == ImageSlice<Double>)
    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    @_specialize(exported: true, where Self == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>)
    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }
}

extension ImageProtocol where Element : SignedNumeric {
    @_specialize(exported: true, where Self == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>)
    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element : BinaryInteger {
    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
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
    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
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
    @_specialize(exported: true, where Self == Image<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == Image<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == Image<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == ImageSlice<Double>)
    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == Image<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == Image<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == ImageSlice<Double>)
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
    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == Image<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == Image<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == Image<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == Image<Bool>, I == Image<Bool>)
    @_specialize(exported: true, where Self == Image<Bool>, I == ImageSlice<Bool>)
    @_specialize(exported: true, where Self == ImageSlice<Bool>, I == Image<Bool>)
    @_specialize(exported: true, where Self == ImageSlice<Bool>, I == ImageSlice<Bool>)
    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == Image<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == Image<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == Image<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == Image<Bool>, I == Image<Bool>)
    @_specialize(exported: true, where Self == Image<Bool>, I == ImageSlice<Bool>)
    @_specialize(exported: true, where Self == ImageSlice<Bool>, I == Image<Bool>)
    @_specialize(exported: true, where Self == ImageSlice<Bool>, I == ImageSlice<Bool>)
    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }
}

extension ImageProtocol where Element : Comparable {
    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == Image<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == Image<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == Image<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == ImageSlice<Double>)
    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Bool> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == Image<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == Image<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == Image<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == ImageSlice<Double>)
    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Bool> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == Image<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == Image<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == Image<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == ImageSlice<Double>)
    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Bool> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    @_specialize(exported: true, where Self == Image<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == Image<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == Image<Int>)
    @_specialize(exported: true, where Self == ImageSlice<Int>, I == ImageSlice<Int>)
    @_specialize(exported: true, where Self == Image<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == Image<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == Image<Int8>)
    @_specialize(exported: true, where Self == ImageSlice<Int8>, I == ImageSlice<Int8>)
    @_specialize(exported: true, where Self == Image<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == Image<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == Image<Int16>)
    @_specialize(exported: true, where Self == ImageSlice<Int16>, I == ImageSlice<Int16>)
    @_specialize(exported: true, where Self == Image<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == Image<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == Image<Int32>)
    @_specialize(exported: true, where Self == ImageSlice<Int32>, I == ImageSlice<Int32>)
    @_specialize(exported: true, where Self == Image<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == Image<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == Image<Int64>)
    @_specialize(exported: true, where Self == ImageSlice<Int64>, I == ImageSlice<Int64>)
    @_specialize(exported: true, where Self == Image<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == Image<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == Image<UInt>)
    @_specialize(exported: true, where Self == ImageSlice<UInt>, I == ImageSlice<UInt>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == Image<UInt8>)
    @_specialize(exported: true, where Self == ImageSlice<UInt8>, I == ImageSlice<UInt8>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == Image<UInt16>)
    @_specialize(exported: true, where Self == ImageSlice<UInt16>, I == ImageSlice<UInt16>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == Image<UInt32>)
    @_specialize(exported: true, where Self == ImageSlice<UInt32>, I == ImageSlice<UInt32>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == Image<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == Image<UInt64>)
    @_specialize(exported: true, where Self == ImageSlice<UInt64>, I == ImageSlice<UInt64>)
    @_specialize(exported: true, where Self == Image<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == Image<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == Image<Float>)
    @_specialize(exported: true, where Self == ImageSlice<Float>, I == ImageSlice<Float>)
    @_specialize(exported: true, where Self == Image<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == Image<Double>, I == ImageSlice<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == Image<Double>)
    @_specialize(exported: true, where Self == ImageSlice<Double>, I == ImageSlice<Double>)
    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Bool> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<Bool>(width: lhs.width, height: lhs.height, pixels: pixels)
    }
}

extension ImageProtocol where Element == Bool {
    public static func &&<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 && $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ||<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`||` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 || $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func !(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { !$0 })
    }
}

extension ImageProtocol where Element == RGBA<Int> {
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }

    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element == RGBA<Int8> {
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }

    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element == RGBA<Int16> {
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }

    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element == RGBA<Int32> {
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }

    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element == RGBA<Int64> {
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }

    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element == RGBA<UInt> {
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }
}

extension ImageProtocol where Element == RGBA<UInt8> {
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }
}

extension ImageProtocol where Element == RGBA<UInt16> {
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }
}

extension ImageProtocol where Element == RGBA<UInt32> {
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }
}

extension ImageProtocol where Element == RGBA<UInt64> {
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func %<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 % $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 & $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func |<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 | $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ^<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 ^ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 << $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &+<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &+ $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &-<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &- $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &*<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &* $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &<<<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &<< $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func &>><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 &>> $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    public static func %=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`%=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] %= rhs[x2, y2]
            }
        }
    }

    public static func &=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &= rhs[x2, y2]
            }
        }
    }

    public static func |=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`|=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] |= rhs[x2, y2]
            }
        }
    }

    public static func ^=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`^=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] ^= rhs[x2, y2]
            }
        }
    }

    public static func <<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] <<= rhs[x2, y2]
            }
        }
    }

    public static func >>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] >>= rhs[x2, y2]
            }
        }
    }

    public static func &<<=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&<<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &<<= rhs[x2, y2]
            }
        }
    }

    public static func &>>=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&>>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] &>>= rhs[x2, y2]
            }
        }
    }

    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }
}

extension ImageProtocol where Element == RGBA<Float> {
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }

    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element == RGBA<Double> {
    public static func +<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 + $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func -<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 - $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func *<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 * $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func /<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 / $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func +=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`+=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] += rhs[x2, y2]
            }
        }
    }

    public static func -=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`-=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] -= rhs[x2, y2]
            }
        }
    }

    public static func *=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`*=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] *= rhs[x2, y2]
            }
        }
    }

    public static func /=<I : ImageProtocol>(lhs: inout Self, rhs: I) where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`/=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        for (y1, y2) in zip(lhs.yRange, rhs.yRange) {
            for (x1, x2) in zip(lhs.xRange, rhs.xRange) {
                lhs[x1, y1] /= rhs[x2, y2]
            }
        }
    }

    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }

    public static func <<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 < $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func <=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`<=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 <= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ><I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 > $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func >=<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<RGBA<Bool>> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`>=` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 >= $1 }
        return Image<RGBA<Bool>>(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    prefix public static func +(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { +$0 })
    }

    prefix public static func -(a: Self) -> Image<Pixel> {
        return Image<Pixel>(width: a.width, height: a.height, pixels: a.map { -$0 })
    }
}

extension ImageProtocol where Element == RGBA<Bool> {
    public static func &&<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`&&` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 && $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ||<I : ImageProtocol>(lhs: Self, rhs: I) -> Image<Pixel> where I.Pixel == Pixel {
        precondition(lhs.width == rhs.width && lhs.height == rhs.height, "`||` cannot be applied for images with different sizes: (\(lhs.width), \(lhs.height)), (\(rhs.width), \(rhs.height))")
        let pixels = zip(lhs, rhs).map { $0 || $1 }
        return Image(width: lhs.width, height: lhs.height, pixels: pixels)
    }

    public static func ==<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }

    public static func !=<I : ImageProtocol>(lhs: Self, rhs: I) -> Bool where I.Pixel == Pixel {
        guard lhs.width == rhs.width && lhs.height == rhs.height else { return true }
        return zip(lhs, rhs).reduce(false) { $0 || $1.0 != $1.1 }
    }
}
