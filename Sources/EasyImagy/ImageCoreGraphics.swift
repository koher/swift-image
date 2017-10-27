#if os(iOS) || os(OSX) || os(watchOS) || os(tvOS)
    import CoreGraphics
    import Foundation
    
    extension Image where Pixel == RGBA<UInt8> {
        private static var colorSpace: CGColorSpace {
            return CGColorSpaceCreateDeviceRGB()
        }
        
        private static var bitmapInfo: CGBitmapInfo {
            return CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedLast.rawValue | CGBitmapInfo.byteOrder32Big.rawValue)
        }
        
        private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
            let pixels: [RGBA<UInt8>] = Image.drawnPixels(
                width: width,
                height: height,
                defaultPixel: .transparent,
                colorSpace: Image<RGBA<UInt8>>.colorSpace,
                bitmapInfo: Image<RGBA<UInt8>>.bitmapInfo,
                minValue: .min,
                maxValue: .max,
                isEqual: ==,
                toSummable: Int.init,
                product: (*) as (Int, Int) -> Int,
                quotient: (/) as (Int, Int) -> Int,
                toOriginal: UInt8.init,
                setUp: setUp
            )
            
            self.init(width: width, height: height, pixels: pixels)
        }
        
        public init(cgImage: CGImage) {
            let width = cgImage.width
            let height = cgImage.height
            
            self.init(width: width, height: height, setUp: { context in
                let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
                context.draw(cgImage, in: rect)
            })
        }
        
        public var cgImage: CGImage {
            return Image.generatedCGImage(
                image: self,
                colorSpace: Image<RGBA<UInt8>>.colorSpace,
                bitmapInfo: Image<RGBA<UInt8>>.bitmapInfo,
                maxValue: .max,
                toSummable: Int.init,
                product: (*) as (Int, Int) -> Int,
                quotient: (/) as (Int, Int) -> Int,
                toOriginal: UInt8.init
            )
        }
        
        public func resizedTo(width: Int, height: Int, interpolationQuality: CGInterpolationQuality = .default) -> Image<RGBA<UInt8>> {
            return Image(width: width, height: height) { context in
                context.interpolationQuality = interpolationQuality
                context.draw(self.cgImage, in: CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))
            }
        }
    }
    
    extension Image where Pixel == UInt8 {
        private static var colorSpace: CGColorSpace {
            return CGColorSpaceCreateDeviceGray()
        }
        
        private static var bitmapInfo: CGBitmapInfo {
            return CGBitmapInfo()
        }
        
        private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
            let pixels: [UInt8] = Image.drawnPixels(
                width: width,
                height: height,
                defaultPixel: 0,
                colorSpace: Image<UInt8>.colorSpace,
                bitmapInfo: Image<UInt8>.bitmapInfo,
                setUp: setUp
            )
            
            self.init(width: width, height: height, pixels: pixels)
        }
        
        public init(cgImage: CGImage) {
            let width = cgImage.width
            let height = cgImage.height
            
            self.init(width: width, height: height, setUp: { context in
                let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
                context.draw(cgImage, in: rect)
            })
        }
        
        public var cgImage: CGImage {
            return Image<UInt8>.generatedCGImage(
                image: self,
                colorSpace: Image<UInt8>.colorSpace,
                bitmapInfo: Image<UInt8>.bitmapInfo
            )
        }
        
        public func resizedTo(width: Int, height: Int, interpolationQuality: CGInterpolationQuality = .default) -> Image<Pixel> {
            return Image(width: width, height: height) { context in
                context.interpolationQuality = interpolationQuality
                context.draw(self.cgImage, in: CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))
            }
        }
    }
    
    extension Image where Pixel == Float {
        private static var colorSpace: CGColorSpace {
            return CGColorSpaceCreateDeviceGray()
        }
        
        private static var bitmapInfo: CGBitmapInfo {
            return CGBitmapInfo()
        }
        
        private init(width: Int, height: Int, setUp: (CGContext) -> ()) {
            let pixels: [UInt8] = Image.drawnPixels(
                width: width,
                height: height,
                defaultPixel: 0,
                colorSpace: Image<UInt8>.colorSpace,
                bitmapInfo: Image<UInt8>.bitmapInfo,
                setUp: setUp
            )
            
            self.init(width: width, height: height, pixels: pixels.map { Float($0) / 255 })
        }
        
        public init(cgImage: CGImage) {
            let width = cgImage.width
            let height = cgImage.height
            
            self.init(width: width, height: height, setUp: { context in
                let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height))
                context.draw(cgImage, in: rect)
            })
        }
        
        public var cgImage: CGImage {
            return map { UInt8(clamp($0, lower: 0.0, upper: 1.0) * 255) }.cgImage
        }
        
        public func resizedTo(width: Int, height: Int, interpolationQuality: CGInterpolationQuality = .default) -> Image<Pixel> {
            return Image(width: width, height: height) { context in
                context.interpolationQuality = interpolationQuality
                context.draw(self.cgImage, in: CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))
            }
        }
    }
#endif
