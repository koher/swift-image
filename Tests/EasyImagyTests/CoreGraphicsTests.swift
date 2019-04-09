import XCTest
import EasyImagy

#if canImport(CoreGraphics)
import CoreGraphics
#endif

private let red: CGColor = CGColor(colorSpace: CGColorSpace(name: CGColorSpace.sRGB)!, components: [1, 0, 0, 1])!
private let white: CGColor = CGColor(colorSpace: CGColorSpace(name: CGColorSpace.genericGrayGamma2_2)!, components: [1, 1, 1, 1])!

class CoreGraphicsTests: XCTestCase {
    func testCGImageAndInitWithCGImage() {
        #if canImport(CoreGraphics)
        do {
            let image = Image<RGB<UInt8>>(width: 2, height: 2, pixels: [
                RGB<UInt8>(red: 0, green: 1, blue: 2),
                RGB<UInt8>(red: 3, green: 4, blue: 5),
                RGB<UInt8>(red: 126, green: 127, blue: 128),
                RGB<UInt8>(red: 253, green: 254, blue: 255),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<RGB<UInt8>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<RGB<UInt8>>(width: 2, height: 2, pixels: [
                RGB<UInt8>(red: 0, green: 1, blue: 2),
                RGB<UInt8>(red: 3, green: 4, blue: 5),
                RGB<UInt8>(red: 126, green: 127, blue: 128),
                RGB<UInt8>(red: 253, green: 254, blue: 255),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<RGB<UInt8>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<RGBA<UInt8>>(width: 2, height: 2, pixels: [
                RGBA<UInt8>(red: 0, green: 1, blue: 2, alpha: 255),
                RGBA<UInt8>(red: 253, green: 254, blue: 255, alpha: 255),
                RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 102),
                RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 51),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<RGBA<UInt8>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<RGBA<UInt8>>(width: 2, height: 2, pixels: [
                RGBA<UInt8>(red: 0, green: 1, blue: 2, alpha: 255),
                RGBA<UInt8>(red: 253, green: 254, blue: 255, alpha: 255),
                RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 102),
                RGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 51),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<RGBA<UInt8>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<PremultipliedRGBA<UInt8>>(width: 2, height: 2, pixels: [
                PremultipliedRGBA<UInt8>(red: 0, green: 1, blue: 2, alpha: 255),
                PremultipliedRGBA<UInt8>(red: 253, green: 254, blue: 255, alpha: 255),
                PremultipliedRGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 102),
                PremultipliedRGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 51),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<PremultipliedRGBA<UInt8>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<PremultipliedRGBA<UInt8>>(width: 2, height: 2, pixels: [
                PremultipliedRGBA<UInt8>(red: 0, green: 1, blue: 2, alpha: 255),
                PremultipliedRGBA<UInt8>(red: 253, green: 254, blue: 255, alpha: 255),
                PremultipliedRGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 102),
                PremultipliedRGBA<UInt8>(red: 10, green: 20, blue: 30, alpha: 51),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<PremultipliedRGBA<UInt8>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<UInt8>(width: 2, height: 2, pixels: [0, 1, 127, 255])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<UInt8>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<UInt8>(width: 2, height: 2, pixels: [0, 1, 127, 255])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<UInt8>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<RGB<UInt16>>(width: 2, height: 2, pixels: [
                RGB<UInt16>(red: 0, green: 1, blue: 2),
                RGB<UInt16>(red: 3, green: 4, blue: 5),
                RGB<UInt16>(red: 32766, green: 32767, blue: 32768),
                RGB<UInt16>(red: 65533, green: 65534, blue: 65535),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<RGB<UInt16>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<RGB<UInt16>>(width: 2, height: 2, pixels: [
                RGB<UInt16>(red: 0, green: 1, blue: 2),
                RGB<UInt16>(red: 3, green: 4, blue: 5),
                RGB<UInt16>(red: 32766, green: 32767, blue: 32768),
                RGB<UInt16>(red: 65533, green: 65534, blue: 65535),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<RGB<UInt16>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<RGBA<UInt16>>(width: 2, height: 2, pixels: [
                RGBA<UInt16>(red: 0, green: 1, blue: 2, alpha: 65535),
                RGBA<UInt16>(red: 65533, green: 65534, blue: 65535, alpha: 65535),
                RGBA<UInt16>(red: 10, green: 20, blue: 30, alpha: 26214),
                RGBA<UInt16>(red: 10, green: 20, blue: 30, alpha: 13107),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)

            let restored = Image<RGBA<UInt16>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<RGBA<UInt16>>(width: 2, height: 2, pixels: [
                RGBA<UInt16>(red: 0, green: 1, blue: 2, alpha: 65535),
                RGBA<UInt16>(red: 65533, green: 65534, blue: 65535, alpha: 65535),
                RGBA<UInt16>(red: 10, green: 20, blue: 30, alpha: 26214),
                RGBA<UInt16>(red: 10, green: 20, blue: 30, alpha: 13107),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<RGBA<UInt16>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<PremultipliedRGBA<UInt16>>(width: 2, height: 2, pixels: [
                PremultipliedRGBA<UInt16>(red: 0, green: 1, blue: 2, alpha: 65535),
                PremultipliedRGBA<UInt16>(red: 65533, green: 65534, blue: 65535, alpha: 65535),
                PremultipliedRGBA<UInt16>(red: 10, green: 20, blue: 30, alpha: 26214),
                PremultipliedRGBA<UInt16>(red: 10, green: 20, blue: 30, alpha: 13107),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<PremultipliedRGBA<UInt16>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<PremultipliedRGBA<UInt16>>(width: 2, height: 2, pixels: [
                PremultipliedRGBA<UInt16>(red: 0, green: 1, blue: 2, alpha: 65535),
                PremultipliedRGBA<UInt16>(red: 65533, green: 65534, blue: 65535, alpha: 65535),
                PremultipliedRGBA<UInt16>(red: 10, green: 20, blue: 30, alpha: 26214),
                PremultipliedRGBA<UInt16>(red: 10, green: 20, blue: 30, alpha: 13107),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<PremultipliedRGBA<UInt16>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<UInt16>(width: 3, height: 2, pixels: [0, 1, 32767, 32768, 65534, 65535])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<UInt16>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<UInt16>(width: 3, height: 2, pixels: [0, 1, 32767, 32768, 65534, 65535])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<UInt16>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<RGB<Float>>(width: 2, height: 2, pixels: [
                RGB(red: 0.0, green: 0.2, blue: 0.4),
                RGB(red: 0.6, green: 0.8, blue: 1.0),
                RGB(red: 0.0, green: 0.0, blue: 0.0),
                RGB(red: 1.0, green: 1.0, blue: 1.0),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<RGB<Float>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<RGB<Float>>(width: 2, height: 2, pixels: [
                RGB(red: 0.0, green: 0.2, blue: 0.4),
                RGB(red: 0.6, green: 0.8, blue: 1.0),
                RGB(red: 0.0, green: 0.0, blue: 0.0),
                RGB(red: 1.0, green: 1.0, blue: 1.0),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<RGB<Float>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }

        do {
            let image = Image<RGBA<Float>>(width: 2, height: 2, pixels: [
                RGBA(red: 1.0, green: 0.066666666666666666, blue: 0.13333333333333333, alpha: 1.0),
                RGBA(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.066666666666666666),
                RGBA(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0),
                RGBA(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<RGBA<Float>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<RGBA<Float>>(width: 2, height: 2, pixels: [
                RGBA(red: 1.0, green: 0.066666666666666666, blue: 0.13333333333333333, alpha: 1.0),
                RGBA(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.066666666666666666),
                RGBA(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0),
                RGBA(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<RGBA<Float>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }

        do {
            let image = Image<PremultipliedRGBA<Float>>(width: 2, height: 2, pixels: [
                PremultipliedRGBA(red: 1.0, green: 0.066666666666666666, blue: 0.13333333333333333, alpha: 1.0),
                PremultipliedRGBA(red: 0.066666666666666666, green: 0.066666666666666666, blue: 0.066666666666666666, alpha: 0.066666666666666666),
                PremultipliedRGBA(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0),
                PremultipliedRGBA(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<PremultipliedRGBA<Float>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }

        do {
            let image = ImageSlice<PremultipliedRGBA<Float>>(width: 2, height: 2, pixels: [
                PremultipliedRGBA(red: 1.0, green: 0.066666666666666666, blue: 0.13333333333333333, alpha: 1.0),
                PremultipliedRGBA(red: 0.066666666666666666, green: 0.066666666666666666, blue: 0.066666666666666666, alpha: 0.066666666666666666),
                PremultipliedRGBA(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0),
                PremultipliedRGBA(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<PremultipliedRGBA<Float>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }

        do {
            let image = Image<Float>(width: 2, height: 2, pixels: [
                0.0, 0.066666666666666666, 0.13333333333333333, 1.0
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<Float>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }

        do {
            let image = ImageSlice<Float>(width: 2, height: 2, pixels: [
                0.0, 0.066666666666666666, 0.13333333333333333, 1.0
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<Float>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }

        do {
            let image = Image<RGB<Double>>(width: 2, height: 2, pixels: [
                RGB(red: 0.0, green: 0.2, blue: 0.4),
                RGB(red: 0.6, green: 0.8, blue: 1.0),
                RGB(red: 0.0, green: 0.0, blue: 0.0),
                RGB(red: 1.0, green: 1.0, blue: 1.0),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<RGB<Double>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<RGB<Double>>(width: 2, height: 2, pixels: [
                RGB(red: 0.0, green: 0.2, blue: 0.4),
                RGB(red: 0.6, green: 0.8, blue: 1.0),
                RGB(red: 0.0, green: 0.0, blue: 0.0),
                RGB(red: 1.0, green: 1.0, blue: 1.0),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<RGB<Double>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<RGBA<Double>>(width: 2, height: 2, pixels: [
                RGBA(red: 1.0, green: 0.066666666666666666, blue: 0.13333333333333333, alpha: 1.0),
                RGBA(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.066666666666666666),
                RGBA(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0),
                RGBA(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<RGBA<Double>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<RGBA<Double>>(width: 2, height: 2, pixels: [
                RGBA(red: 1.0, green: 0.066666666666666666, blue: 0.13333333333333333, alpha: 1.0),
                RGBA(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.066666666666666666),
                RGBA(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0),
                RGBA(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<RGBA<Double>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<PremultipliedRGBA<Double>>(width: 2, height: 2, pixels: [
                PremultipliedRGBA(red: 1.0, green: 0.066666666666666666, blue: 0.13333333333333333, alpha: 1.0),
                PremultipliedRGBA(red: 0.066666666666666666, green: 0.066666666666666666, blue: 0.066666666666666666, alpha: 0.066666666666666666),
                PremultipliedRGBA(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0),
                PremultipliedRGBA(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<PremultipliedRGBA<Double>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<PremultipliedRGBA<Double>>(width: 2, height: 2, pixels: [
                PremultipliedRGBA(red: 1.0, green: 0.066666666666666666, blue: 0.13333333333333333, alpha: 1.0),
                PremultipliedRGBA(red: 0.066666666666666666, green: 0.066666666666666666, blue: 0.066666666666666666, alpha: 0.066666666666666666),
                PremultipliedRGBA(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0),
                PremultipliedRGBA(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<PremultipliedRGBA<Double>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<Double>(width: 2, height: 2, pixels: [
                0.0, 0.066666666666666666, 0.13333333333333333, 1.0
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<Double>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<Double>(width: 2, height: 2, pixels: [
                0.0, 0.066666666666666666, 0.13333333333333333, 1.0
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<Double>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<RGB<Bool>>(width: 2, height: 2, pixels: [
                RGB(red: false, green: false, blue: false),
                RGB(red: false, green: false, blue: true),
                RGB(red: true, green: true, blue: false),
                RGB(red: true, green: true, blue: true),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<RGB<Bool>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<RGB<Bool>>(width: 2, height: 2, pixels: [
                RGB(red: false, green: false, blue: false),
                RGB(red: false, green: false, blue: true),
                RGB(red: true, green: true, blue: false),
                RGB(red: true, green: true, blue: true),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<RGB<Bool>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<RGBA<Bool>>(width: 2, height: 2, pixels: [
                RGBA(red: true, green: false, blue: false, alpha: true),
                RGBA(red: false, green: false, blue: false, alpha: false),
                RGBA(red: true, green: true, blue: true, alpha: true),
                RGBA(red: false, green: false, blue: true, alpha: true),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<RGBA<Bool>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<RGBA<Bool>>(width: 2, height: 2, pixels: [
                RGBA(red: true, green: false, blue: false, alpha: true),
                RGBA(red: false, green: false, blue: false, alpha: false),
                RGBA(red: true, green: true, blue: true, alpha: true),
                RGBA(red: false, green: false, blue: true, alpha: true),
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<RGBA<Bool>>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<Bool>(width: 2, height: 2, pixels: [
                true, false, false, true
                ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = Image<Bool>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = ImageSlice<Bool>(width: 2, height: 2, pixels: [
                true, false, false, true
            ])
            let cgImage = image.cgImage
            XCTAssertEqual(cgImage.width, image.width)
            XCTAssertEqual(cgImage.height, image.height)
            
            let restored = ImageSlice<Bool>(cgImage: cgImage)
            XCTAssertEqual(restored, image)
        }
        
        do {
            let image = Image<UInt8>(width: 3, height: 2, pixels: [
                1, 2, 3,
                4, 5, 6,
            ])
            
            let cgImage = image.cgImage
            let restored = Image<UInt8>(cgImage: cgImage)
            
            XCTAssertEqual(restored.width, 3)
            XCTAssertEqual(restored.height, 2)
            
            XCTAssertEqual(restored[0, 0], 1)
            XCTAssertEqual(restored[1, 0], 2)
            XCTAssertEqual(restored[2, 0], 3)
            
            XCTAssertEqual(restored[0, 1], 4)
            XCTAssertEqual(restored[1, 1], 5)
            XCTAssertEqual(restored[2, 1], 6)
        }
        
        do {
            let slice: ImageSlice<UInt8> = Image<UInt8>(width: 5, height: 4, pixels: [
                0, 0, 0, 0, 0,
                0, 1, 2, 3, 0,
                0, 4, 5, 6, 0,
                0, 0, 0, 0, 0,
            ])[1...3, 1...2]
            
            let cgImage = slice.cgImage
            let restored = Image<UInt8>(cgImage: cgImage)
            
            XCTAssertEqual(restored.width, 3)
            XCTAssertEqual(restored.height, 2)
            
            XCTAssertEqual(restored[0, 0], 1)
            XCTAssertEqual(restored[1, 0], 2)
            XCTAssertEqual(restored[2, 0], 3)
            
            XCTAssertEqual(restored[0, 1], 4)
            XCTAssertEqual(restored[1, 1], 5)
            XCTAssertEqual(restored[2, 1], 6)
        }
        
        do {
            let image = Image<PremultipliedRGBA<UInt8>>(width: 1, height: 2, pixels: [
                PremultipliedRGBA<UInt8>(red: 24, green: 49, blue: 99, alpha: 127),
                PremultipliedRGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4),
            ])
            
            let cgImage = image.cgImage
            let restored = Image<PremultipliedRGBA<UInt8>>(cgImage: cgImage)
            
            XCTAssertEqual(restored.width, 1)
            XCTAssertEqual(restored.height, 2)
            
            XCTAssertEqual(restored[0, 0], PremultipliedRGBA<UInt8>(red: 24, green: 49, blue: 99, alpha: 127))
            XCTAssertEqual(restored[0, 1], PremultipliedRGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
        }
        
        do {
            let transparent = PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 0)
            let slice: ImageSlice<PremultipliedRGBA<UInt8>> = Image<PremultipliedRGBA<UInt8>>(width: 3, height: 4, pixels: [
                transparent, transparent, transparent,
                transparent, PremultipliedRGBA<UInt8>(red: 24, green: 49, blue: 99, alpha: 127), transparent,
                transparent, PremultipliedRGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4), transparent,
                transparent, transparent, transparent,
            ])[1...1, 1...2]
            
            let cgImage = slice.cgImage
            let restored = Image<PremultipliedRGBA<UInt8>>(cgImage: cgImage)
            
            XCTAssertEqual(restored.width, 1)
            XCTAssertEqual(restored.height, 2)
            
            XCTAssertEqual(restored[0, 0], PremultipliedRGBA<UInt8>(red: 24, green: 49, blue: 99, alpha: 127))
            XCTAssertEqual(restored[0, 1], PremultipliedRGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
        }
        
        do { // slices which contains the last row of the original images
            let slice: ImageSlice<UInt8> = Image<UInt8>(width: 4, height: 3, pixels: [
                0, 0, 0, 0,
                0, 1, 2, 3,
                0, 4, 5, 6,
            ])[1...3, 1...2]
            
            let cgImage = slice.cgImage
            let restored = Image<UInt8>(cgImage: cgImage)
            
            XCTAssertEqual(restored.width, 3)
            XCTAssertEqual(restored.height, 2)
            
            XCTAssertEqual(restored[0, 0], 1)
            XCTAssertEqual(restored[1, 0], 2)
            XCTAssertEqual(restored[2, 0], 3)
            
            XCTAssertEqual(restored[0, 1], 4)
            XCTAssertEqual(restored[1, 1], 5)
            XCTAssertEqual(restored[2, 1], 6)
        }
        
        do { // slices which contains the last row of the original images
            let transparent = PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 0)
            let slice: ImageSlice<PremultipliedRGBA<UInt8>> = Image<PremultipliedRGBA<UInt8>>(width: 2, height: 3, pixels: [
                transparent, transparent,
                transparent, PremultipliedRGBA<UInt8>(red: 24, green: 49, blue: 99, alpha: 127),
                transparent, PremultipliedRGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4),
            ])[1...1, 1...2]
            
            let cgImage = slice.cgImage
            let restored = Image<PremultipliedRGBA<UInt8>>(cgImage: cgImage)
            
            XCTAssertEqual(restored.width, 1)
            XCTAssertEqual(restored.height, 2)
            
            XCTAssertEqual(restored[0, 0], PremultipliedRGBA<UInt8>(red: 24, green: 49, blue: 99, alpha: 127))
            XCTAssertEqual(restored[0, 1], PremultipliedRGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
        }
        #endif
    }
    
    func testWithCGImage() {
        #if canImport(CoreGraphics)
        // UInt8
        do {
            let original = Image<UInt8>(width: 3, height: 2, pixels: [
                  1, 253,   2,
                254,   3, 255,
            ])
            
            let restored = original.withCGImage { cgImage in
                return Image<UInt8>(cgImage: cgImage)
            }
            
            XCTAssertEqual(restored, original)
        }
        
        do {
            let original: ImageSlice<UInt8> = Image<UInt8>(width: 5, height: 4, pixels: [
                0,   0,   0,   0, 0,
                0,   1, 253,   2, 0,
                0, 254,   3, 255, 0,
                0,   0,   0,   0, 0,
            ])[1...3, 1...2]
            
            let restored = original.withCGImage { cgImage in
                return ImageSlice<UInt8>(cgImage: cgImage)
            }
            
            XCTAssertEqual(restored, original)
        }
        
        do {
            let original = Image<RGB<UInt8>>(width: 1, height: 2, pixels: [
                RGB<UInt8>(red: 24, green: 49, blue: 99),
                RGB<UInt8>(red: 1, green: 2, blue: 3),
            ])
            
            let restored = original.withCGImage { cgImage in
                return Image<RGB<UInt8>>(cgImage: cgImage)
            }
            
            XCTAssertEqual(restored, original)
        }
        
        do {
            let black = RGB<UInt8>(red: 0, green: 0, blue: 0)
            let original: ImageSlice<RGB<UInt8>> = Image<RGB<UInt8>>(width: 3, height: 4, pixels: [
                black, black, black,
                black, RGB<UInt8>(red: 24, green: 49, blue: 99), black,
                black, RGB<UInt8>(red: 1, green: 2, blue: 3), black,
                black, black, black,
            ])[1...1, 1...2]
            
            let restored = original.withCGImage { cgImage in
                return ImageSlice<RGB<UInt8>>(cgImage: cgImage)
            }
            
            XCTAssertEqual(restored, original)
        }

        do {
            let original = Image<PremultipliedRGBA<UInt8>>(width: 1, height: 2, pixels: [
                PremultipliedRGBA<UInt8>(red: 24, green: 49, blue: 99, alpha: 127),
                PremultipliedRGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4),
            ])
            
            let restored = original.withCGImage { cgImage in
                return Image<PremultipliedRGBA<UInt8>>(cgImage: cgImage)
            }
            
            XCTAssertEqual(restored, original)
        }
        
        do {
            let transparent = PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 0)
            let original: ImageSlice<PremultipliedRGBA<UInt8>> = Image<PremultipliedRGBA<UInt8>>(width: 3, height: 4, pixels: [
                transparent, transparent, transparent,
                transparent, PremultipliedRGBA<UInt8>(red: 24, green: 49, blue: 99, alpha: 127), transparent,
                transparent, PremultipliedRGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4), transparent,
                transparent, transparent, transparent,
            ])[1...1, 1...2]
            
            let restored = original.withCGImage { cgImage in
                return ImageSlice<PremultipliedRGBA<UInt8>>(cgImage: cgImage)
            }
            
            XCTAssertEqual(restored, original)
        }
        
        // UInt16
        do {
            let original = Image<UInt16>(width: 3, height: 2, pixels: [
                    1, 65533,     2,
                65534,     3, 65535,
            ])
            
            let restored = original.withCGImage { cgImage in
                return Image<UInt16>(cgImage: cgImage)
            }
            
            XCTAssertEqual(restored, original)
        }
        
        do {
            let original: ImageSlice<UInt16> = Image<UInt16>(width: 5, height: 4, pixels: [
                0,     0,     0,     0, 0,
                0,     1, 65533,     2, 0,
                0, 65534,     3, 65535, 0,
                0,     0,     0,     0, 0,
            ])[1...3, 1...2]
            
            let restored = original.withCGImage { cgImage in
                return ImageSlice<UInt16>(cgImage: cgImage)
            }
            
            XCTAssertEqual(restored, original)
        }
        
        do {
            let original = Image<RGB<UInt16>>(width: 1, height: 2, pixels: [
                RGB<UInt16>(red: 24, green: 49, blue: 99),
                RGB<UInt16>(red: 0, green: 32767, blue: 65535),
            ])
            
            let restored = original.withCGImage { cgImage in
                return Image<RGB<UInt16>>(cgImage: cgImage)
            }
            
            XCTAssertEqual(restored, original)
        }
        
        do {
            let black = RGB<UInt16>(red: 0, green: 0, blue: 0)
            let original: ImageSlice<RGB<UInt16>> = Image<RGB<UInt16>>(width: 3, height: 4, pixels: [
                black, black, black,
                black, RGB<UInt16>(red: 24, green: 49, blue: 99), black,
                black, RGB<UInt16>(red: 0, green: 32767, blue: 65535), black,
                black, black, black,
            ])[1...1, 1...2]
            
            let restored = original.withCGImage { cgImage in
                return ImageSlice<RGB<UInt16>>(cgImage: cgImage)
            }
            
            XCTAssertEqual(restored, original)
        }
        
        do {
            let original = Image<PremultipliedRGBA<UInt16>>(width: 1, height: 2, pixels: [
                PremultipliedRGBA<UInt16>(red: 24, green: 49, blue: 99, alpha: 32767),
                PremultipliedRGBA<UInt16>(red: 1, green: 2, blue: 3, alpha: 4),
            ])
            
            let restored = original.withCGImage { cgImage in
                return Image<PremultipliedRGBA<UInt16>>(cgImage: cgImage)
            }
            
            XCTAssertEqual(restored, original)
        }
        
        do {
            let transparent = PremultipliedRGBA<UInt16>(red: 0, green: 0, blue: 0, alpha: 0)
            let original: ImageSlice<PremultipliedRGBA<UInt16>> = Image<PremultipliedRGBA<UInt16>>(width: 3, height: 4, pixels: [
                transparent, transparent, transparent,
                transparent, PremultipliedRGBA<UInt16>(red: 24, green: 49, blue: 99, alpha: 32767), transparent,
                transparent, PremultipliedRGBA<UInt16>(red: 1, green: 2, blue: 3, alpha: 4), transparent,
                transparent, transparent, transparent,
            ])[1...1, 1...2]
            
            let restored = original.withCGImage { cgImage in
                return ImageSlice<PremultipliedRGBA<UInt16>>(cgImage: cgImage)
            }
            
            XCTAssertEqual(restored, original)
        }
        #endif
    }
    
    func testWithCGContext() {
        #if canImport(CoreGraphics)
        // Draws lines with CoreGraphics as follows:
        //
        // Before
        // ----
        // ----
        // ----
        // ----
        //
        // After
        // -*--
        // -*--
        // ****
        // -*--

        // `Image`, default coordinates
        do {
            var image = Image<PremultipliedRGBA<UInt8>>(width: 4, height: 4, pixel: PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            image.withCGContext { context in
                context.setLineWidth(1)
                context.setStrokeColor(red)
                context.move(to: CGPoint(x: 1, y: -1))
                context.addLine(to: CGPoint(x: 1, y: 4))
                context.move(to: CGPoint(x: -1, y: 2))
                context.addLine(to: CGPoint(x: 4, y: 2))
                context.strokePath()
            }

            XCTAssertEqual(image[0, 0], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[1, 0], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[2, 0], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[3, 0], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))

            XCTAssertEqual(image[0, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[1, 1], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[2, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[3, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))

            XCTAssertEqual(image[0, 2], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[1, 2], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[2, 2], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[3, 2], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))

            XCTAssertEqual(image[0, 3], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[1, 3], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[2, 3], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[3, 3], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
        }
        
        do {
            var image = Image<RGB<UInt8>>(width: 4, height: 4, pixel: RGB<UInt8>(red: 0, green: 0, blue: 0))
            image.withCGContext { context in
                context.setLineWidth(1)
                context.setStrokeColor(red)
                context.move(to: CGPoint(x: 1, y: -1))
                context.addLine(to: CGPoint(x: 1, y: 4))
                context.move(to: CGPoint(x: -1, y: 2))
                context.addLine(to: CGPoint(x: 4, y: 2))
                context.strokePath()
            }
            
            XCTAssertEqual(image[0, 0], RGB<UInt8>(red: 0, green: 0, blue: 0))
            XCTAssertEqual(image[1, 0], RGB<UInt8>(red: 255, green: 0, blue: 0))
            XCTAssertEqual(image[2, 0], RGB<UInt8>(red: 0, green: 0, blue: 0))
            XCTAssertEqual(image[3, 0], RGB<UInt8>(red: 0, green: 0, blue: 0))
            
            XCTAssertEqual(image[0, 1], RGB<UInt8>(red: 0, green: 0, blue: 0))
            XCTAssertEqual(image[1, 1], RGB<UInt8>(red: 255, green: 0, blue: 0))
            XCTAssertEqual(image[2, 1], RGB<UInt8>(red: 0, green: 0, blue: 0))
            XCTAssertEqual(image[3, 1], RGB<UInt8>(red: 0, green: 0, blue: 0))
            
            XCTAssertEqual(image[0, 2], RGB<UInt8>(red: 255, green: 0, blue: 0))
            XCTAssertEqual(image[1, 2], RGB<UInt8>(red: 255, green: 0, blue: 0))
            XCTAssertEqual(image[2, 2], RGB<UInt8>(red: 255, green: 0, blue: 0))
            XCTAssertEqual(image[3, 2], RGB<UInt8>(red: 255, green: 0, blue: 0))
            
            XCTAssertEqual(image[0, 3], RGB<UInt8>(red: 0, green: 0, blue: 0))
            XCTAssertEqual(image[1, 3], RGB<UInt8>(red: 255, green: 0, blue: 0))
            XCTAssertEqual(image[2, 3], RGB<UInt8>(red: 0, green: 0, blue: 0))
            XCTAssertEqual(image[3, 3], RGB<UInt8>(red: 0, green: 0, blue: 0))
        }
        
        do {
            var image = Image<UInt8>(width: 4, height: 4, pixel: 0)
            image.withCGContext { context in
                context.setLineWidth(1)
                context.setStrokeColor(white)
                context.move(to: CGPoint(x: 1, y: -1))
                context.addLine(to: CGPoint(x: 1, y: 4))
                context.move(to: CGPoint(x: -1, y: 2))
                context.addLine(to: CGPoint(x: 4, y: 2))
                context.strokePath()
            }

            XCTAssertEqual(image[0, 0], 0)
            XCTAssertEqual(image[1, 0], 255)
            XCTAssertEqual(image[2, 0], 0)
            XCTAssertEqual(image[3, 0], 0)
            
            XCTAssertEqual(image[0, 1], 0)
            XCTAssertEqual(image[1, 1], 255)
            XCTAssertEqual(image[2, 1], 0)
            XCTAssertEqual(image[3, 1], 0)
            
            XCTAssertEqual(image[0, 2], 255)
            XCTAssertEqual(image[1, 2], 255)
            XCTAssertEqual(image[2, 2], 255)
            XCTAssertEqual(image[3, 2], 255)
            
            XCTAssertEqual(image[0, 3], 0)
            XCTAssertEqual(image[1, 3], 255)
            XCTAssertEqual(image[2, 3], 0)
            XCTAssertEqual(image[3, 3], 0)
        }
        
        // `Image`, `coordinates: .natural`
        do {
            var image = Image<PremultipliedRGBA<UInt8>>(width: 4, height: 4, pixel: PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            image.withCGContext(coordinates: .natural) { context in
                context.setLineWidth(1)
                context.setStrokeColor(red)
                context.move(to: CGPoint(x: 1, y: -1))
                context.addLine(to: CGPoint(x: 1, y: 4))
                context.move(to: CGPoint(x: -1, y: 2))
                context.addLine(to: CGPoint(x: 4, y: 2))
                context.strokePath()
            }
            
            XCTAssertEqual(image[0, 0], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[1, 0], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[2, 0], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[3, 0], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            
            XCTAssertEqual(image[0, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[1, 1], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[2, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[3, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            
            XCTAssertEqual(image[0, 2], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[1, 2], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[2, 2], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[3, 2], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            
            XCTAssertEqual(image[0, 3], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[1, 3], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[2, 3], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[3, 3], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
        }
        
        do {
            var image = Image<UInt8>(width: 4, height: 4, pixel: 0)
            image.withCGContext(coordinates: .natural) { context in
                context.setLineWidth(1)
                context.setStrokeColor(white)
                context.move(to: CGPoint(x: 1, y: -1))
                context.addLine(to: CGPoint(x: 1, y: 4))
                context.move(to: CGPoint(x: -1, y: 2))
                context.addLine(to: CGPoint(x: 4, y: 2))
                context.strokePath()
            }
            
            XCTAssertEqual(image[0, 0], 0)
            XCTAssertEqual(image[1, 0], 255)
            XCTAssertEqual(image[2, 0], 0)
            XCTAssertEqual(image[3, 0], 0)
            
            XCTAssertEqual(image[0, 1], 0)
            XCTAssertEqual(image[1, 1], 255)
            XCTAssertEqual(image[2, 1], 0)
            XCTAssertEqual(image[3, 1], 0)
            
            XCTAssertEqual(image[0, 2], 255)
            XCTAssertEqual(image[1, 2], 255)
            XCTAssertEqual(image[2, 2], 255)
            XCTAssertEqual(image[3, 2], 255)
            
            XCTAssertEqual(image[0, 3], 0)
            XCTAssertEqual(image[1, 3], 255)
            XCTAssertEqual(image[2, 3], 0)
            XCTAssertEqual(image[3, 3], 0)
        }
        
        // `Image`, `coordinates: .original`
        do {
            var image = Image<PremultipliedRGBA<UInt8>>(width: 4, height: 4, pixel: PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            image.withCGContext(coordinates: .original) { context in
                context.setLineWidth(1)
                context.setStrokeColor(red)
                context.move(to: CGPoint(x: 1.5, y: 4.5))
                context.addLine(to: CGPoint(x: 1.5, y: -0.5))
                context.move(to: CGPoint(x: -0.5, y: 1.5))
                context.addLine(to: CGPoint(x: 4.5, y: 1.5))
                context.strokePath()
            }
            
            XCTAssertEqual(image[0, 0], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[1, 0], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[2, 0], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[3, 0], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            
            XCTAssertEqual(image[0, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[1, 1], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[2, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[3, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            
            XCTAssertEqual(image[0, 2], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[1, 2], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[2, 2], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[3, 2], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            
            XCTAssertEqual(image[0, 3], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[1, 3], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[2, 3], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(image[3, 3], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
        }
        
        do {
            var image = Image<UInt8>(width: 4, height: 4, pixel: 0)
            image.withCGContext(coordinates: .original) { context in
                context.setLineWidth(1)
                context.setStrokeColor(white)
                context.move(to: CGPoint(x: 1.5, y: 4.5))
                context.addLine(to: CGPoint(x: 1.5, y: -0.5))
                context.move(to: CGPoint(x: -0.5, y: 1.5))
                context.addLine(to: CGPoint(x: 4.5, y: 1.5))
                context.strokePath()
            }
            
            XCTAssertEqual(image[0, 0], 0)
            XCTAssertEqual(image[1, 0], 255)
            XCTAssertEqual(image[2, 0], 0)
            XCTAssertEqual(image[3, 0], 0)
            
            XCTAssertEqual(image[0, 1], 0)
            XCTAssertEqual(image[1, 1], 255)
            XCTAssertEqual(image[2, 1], 0)
            XCTAssertEqual(image[3, 1], 0)
            
            XCTAssertEqual(image[0, 2], 255)
            XCTAssertEqual(image[1, 2], 255)
            XCTAssertEqual(image[2, 2], 255)
            XCTAssertEqual(image[3, 2], 255)
            
            XCTAssertEqual(image[0, 3], 0)
            XCTAssertEqual(image[1, 3], 255)
            XCTAssertEqual(image[2, 3], 0)
            XCTAssertEqual(image[3, 3], 0)
        }
        
        // `ImageSlice`, default coordinates
        do {
            var slice: ImageSlice<PremultipliedRGBA<UInt8>> = Image<PremultipliedRGBA<UInt8>>(width: 6, height: 6, pixel: PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))[1...4, 1...4]
            slice.withCGContext { context in
                context.setLineWidth(1)
                context.setStrokeColor(red)
                context.move(to: CGPoint(x: 2, y: 0))
                context.addLine(to: CGPoint(x: 2, y: 5))
                context.move(to: CGPoint(x: 0, y: 3))
                context.addLine(to: CGPoint(x: 5, y: 3))
                context.strokePath()
            }
            
            XCTAssertEqual(slice[1, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[2, 1], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[3, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[4, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            
            XCTAssertEqual(slice[1, 2], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[2, 2], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[3, 2], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[4, 2], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            
            XCTAssertEqual(slice[1, 3], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[2, 3], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[3, 3], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[4, 3], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            
            XCTAssertEqual(slice[1, 4], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[2, 4], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[3, 4], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[4, 4], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
        }
        
        do {
            var slice: ImageSlice<UInt8> = Image<UInt8>(width: 6, height: 6, pixel: 0)[1...4, 1...4]
            slice.withCGContext { context in
                context.setLineWidth(1)
                context.setStrokeColor(white)
                context.move(to: CGPoint(x: 2, y: 0))
                context.addLine(to: CGPoint(x: 2, y: 5))
                context.move(to: CGPoint(x: 0, y: 3))
                context.addLine(to: CGPoint(x: 5, y: 3))
                context.strokePath()
            }
            
            XCTAssertEqual(slice[1, 1], 0)
            XCTAssertEqual(slice[2, 1], 255)
            XCTAssertEqual(slice[3, 1], 0)
            XCTAssertEqual(slice[4, 1], 0)
            
            XCTAssertEqual(slice[1, 2], 0)
            XCTAssertEqual(slice[2, 2], 255)
            XCTAssertEqual(slice[3, 2], 0)
            XCTAssertEqual(slice[4, 2], 0)
            
            XCTAssertEqual(slice[1, 3], 255)
            XCTAssertEqual(slice[2, 3], 255)
            XCTAssertEqual(slice[3, 3], 255)
            XCTAssertEqual(slice[4, 3], 255)
            
            XCTAssertEqual(slice[1, 4], 0)
            XCTAssertEqual(slice[2, 4], 255)
            XCTAssertEqual(slice[3, 4], 0)
            XCTAssertEqual(slice[4, 4], 0)
        }
        
        // `ImageSlice`, `coordinates: .natural`
        do {
            var slice: ImageSlice<PremultipliedRGBA<UInt8>> = Image<PremultipliedRGBA<UInt8>>(width: 6, height: 6, pixel: PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))[1...4, 1...4]
            slice.withCGContext(coordinates: .natural) { context in
                context.setLineWidth(1)
                context.setStrokeColor(red)
                context.move(to: CGPoint(x: 2, y: 0))
                context.addLine(to: CGPoint(x: 2, y: 5))
                context.move(to: CGPoint(x: 0, y: 3))
                context.addLine(to: CGPoint(x: 5, y: 3))
                context.strokePath()
            }

            XCTAssertEqual(slice[1, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[2, 1], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[3, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[4, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))

            XCTAssertEqual(slice[1, 2], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[2, 2], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[3, 2], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[4, 2], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))

            XCTAssertEqual(slice[1, 3], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[2, 3], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[3, 3], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[4, 3], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))

            XCTAssertEqual(slice[1, 4], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[2, 4], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[3, 4], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[4, 4], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
        }

        do {
            var slice: ImageSlice<UInt8> = Image<UInt8>(width: 6, height: 6, pixel: 0)[1...4, 1...4]
            slice.withCGContext(coordinates: .natural) { context in
                context.setLineWidth(1)
                context.setStrokeColor(white)
                context.move(to: CGPoint(x: 2, y: 0))
                context.addLine(to: CGPoint(x: 2, y: 5))
                context.move(to: CGPoint(x: 0, y: 3))
                context.addLine(to: CGPoint(x: 5, y: 3))
                context.strokePath()
            }

            XCTAssertEqual(slice[1, 1], 0)
            XCTAssertEqual(slice[2, 1], 255)
            XCTAssertEqual(slice[3, 1], 0)
            XCTAssertEqual(slice[4, 1], 0)

            XCTAssertEqual(slice[1, 2], 0)
            XCTAssertEqual(slice[2, 2], 255)
            XCTAssertEqual(slice[3, 2], 0)
            XCTAssertEqual(slice[4, 2], 0)

            XCTAssertEqual(slice[1, 3], 255)
            XCTAssertEqual(slice[2, 3], 255)
            XCTAssertEqual(slice[3, 3], 255)
            XCTAssertEqual(slice[4, 3], 255)

            XCTAssertEqual(slice[1, 4], 0)
            XCTAssertEqual(slice[2, 4], 255)
            XCTAssertEqual(slice[3, 4], 0)
            XCTAssertEqual(slice[4, 4], 0)
        }

        // `ImageSlice`, `coordinates: .original`
        do {
            var slice: ImageSlice<PremultipliedRGBA<UInt8>> = Image<PremultipliedRGBA<UInt8>>(width: 6, height: 6, pixel: PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))[1...4, 1...4]
            slice.withCGContext(coordinates: .original) { context in
                context.setLineWidth(1)
                context.setStrokeColor(red)
                context.move(to: CGPoint(x: 1.5, y: 4.5))
                context.addLine(to: CGPoint(x: 1.5, y: -0.5))
                context.move(to: CGPoint(x: -0.5, y: 1.5))
                context.addLine(to: CGPoint(x: 4.5, y: 1.5))
                context.strokePath()
            }

            XCTAssertEqual(slice[1, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[2, 1], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[3, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[4, 1], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))

            XCTAssertEqual(slice[1, 2], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[2, 2], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[3, 2], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[4, 2], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))

            XCTAssertEqual(slice[1, 3], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[2, 3], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[3, 3], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[4, 3], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))

            XCTAssertEqual(slice[1, 4], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[2, 4], PremultipliedRGBA<UInt8>(red: 255, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[3, 4], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
            XCTAssertEqual(slice[4, 4], PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 255))
        }

        do {
            var slice: ImageSlice<UInt8> = Image<UInt8>(width: 6, height: 6, pixel: 0)[1...4, 1...4]
            slice.withCGContext(coordinates: .original) { context in
                context.setLineWidth(1)
                context.setStrokeColor(white)
                context.move(to: CGPoint(x: 1.5, y: 4.5))
                context.addLine(to: CGPoint(x: 1.5, y: -0.5))
                context.move(to: CGPoint(x: -0.5, y: 1.5))
                context.addLine(to: CGPoint(x: 4.5, y: 1.5))
                context.strokePath()
            }

            XCTAssertEqual(slice[1, 1], 0)
            XCTAssertEqual(slice[2, 1], 255)
            XCTAssertEqual(slice[3, 1], 0)
            XCTAssertEqual(slice[4, 1], 0)

            XCTAssertEqual(slice[1, 2], 0)
            XCTAssertEqual(slice[2, 2], 255)
            XCTAssertEqual(slice[3, 2], 0)
            XCTAssertEqual(slice[4, 2], 0)

            XCTAssertEqual(slice[1, 3], 255)
            XCTAssertEqual(slice[2, 3], 255)
            XCTAssertEqual(slice[3, 3], 255)
            XCTAssertEqual(slice[4, 3], 255)

            XCTAssertEqual(slice[1, 4], 0)
            XCTAssertEqual(slice[2, 4], 255)
            XCTAssertEqual(slice[3, 4], 0)
            XCTAssertEqual(slice[4, 4], 0)
        }
        
        // `UInt16`
        do {
            var image = Image<PremultipliedRGBA<UInt16>>(width: 4, height: 4, pixel: PremultipliedRGBA<UInt16>(red: 0, green: 0, blue: 0, alpha: 65535))
            image.withCGContext { context in
                context.setLineWidth(1)
                context.setStrokeColor(red)
                context.move(to: CGPoint(x: 1, y: -1))
                context.addLine(to: CGPoint(x: 1, y: 4))
                context.move(to: CGPoint(x: -1, y: 2))
                context.addLine(to: CGPoint(x: 4, y: 2))
                context.strokePath()
            }
            
            XCTAssertEqual(image[0, 0], PremultipliedRGBA<UInt16>(red: 0, green: 0, blue: 0, alpha: 65535))
            XCTAssertEqual(image[1, 0], PremultipliedRGBA<UInt16>(red: 65535, green: 0, blue: 0, alpha: 65535))
            XCTAssertEqual(image[2, 0], PremultipliedRGBA<UInt16>(red: 0, green: 0, blue: 0, alpha: 65535))
            XCTAssertEqual(image[3, 0], PremultipliedRGBA<UInt16>(red: 0, green: 0, blue: 0, alpha: 65535))
            
            XCTAssertEqual(image[0, 1], PremultipliedRGBA<UInt16>(red: 0, green: 0, blue: 0, alpha: 65535))
            XCTAssertEqual(image[1, 1], PremultipliedRGBA<UInt16>(red: 65535, green: 0, blue: 0, alpha: 65535))
            XCTAssertEqual(image[2, 1], PremultipliedRGBA<UInt16>(red: 0, green: 0, blue: 0, alpha: 65535))
            XCTAssertEqual(image[3, 1], PremultipliedRGBA<UInt16>(red: 0, green: 0, blue: 0, alpha: 65535))
            
            XCTAssertEqual(image[0, 2], PremultipliedRGBA<UInt16>(red: 65535, green: 0, blue: 0, alpha: 65535))
            XCTAssertEqual(image[1, 2], PremultipliedRGBA<UInt16>(red: 65535, green: 0, blue: 0, alpha: 65535))
            XCTAssertEqual(image[2, 2], PremultipliedRGBA<UInt16>(red: 65535, green: 0, blue: 0, alpha: 65535))
            XCTAssertEqual(image[3, 2], PremultipliedRGBA<UInt16>(red: 65535, green: 0, blue: 0, alpha: 65535))
            
            XCTAssertEqual(image[0, 3], PremultipliedRGBA<UInt16>(red: 0, green: 0, blue: 0, alpha: 65535))
            XCTAssertEqual(image[1, 3], PremultipliedRGBA<UInt16>(red: 65535, green: 0, blue: 0, alpha: 65535))
            XCTAssertEqual(image[2, 3], PremultipliedRGBA<UInt16>(red: 0, green: 0, blue: 0, alpha: 65535))
            XCTAssertEqual(image[3, 3], PremultipliedRGBA<UInt16>(red: 0, green: 0, blue: 0, alpha: 65535))
        }
        
        do {
            var image = Image<UInt16>(width: 4, height: 4, pixel: 0)
            image.withCGContext { context in
                context.setLineWidth(1)
                context.setStrokeColor(white)
                context.move(to: CGPoint(x: 1, y: -1))
                context.addLine(to: CGPoint(x: 1, y: 4))
                context.move(to: CGPoint(x: -1, y: 2))
                context.addLine(to: CGPoint(x: 4, y: 2))
                context.strokePath()
            }
            
            XCTAssertEqual(image[0, 0], 0)
            XCTAssertEqual(image[1, 0], 65535)
            XCTAssertEqual(image[2, 0], 0)
            XCTAssertEqual(image[3, 0], 0)
            
            XCTAssertEqual(image[0, 1], 0)
            XCTAssertEqual(image[1, 1], 65535)
            XCTAssertEqual(image[2, 1], 0)
            XCTAssertEqual(image[3, 1], 0)
            
            XCTAssertEqual(image[0, 2], 65535)
            XCTAssertEqual(image[1, 2], 65535)
            XCTAssertEqual(image[2, 2], 65535)
            XCTAssertEqual(image[3, 2], 65535)
            
            XCTAssertEqual(image[0, 3], 0)
            XCTAssertEqual(image[1, 3], 65535)
            XCTAssertEqual(image[2, 3], 0)
            XCTAssertEqual(image[3, 3], 0)
        }
        #endif
    }
    
    func testInitWithCGImagePerformance() {
        #if canImport(CoreGraphics)
        let original = Image<RGBA<UInt8>>(width: 640, height: 480, pixel: RGBA<UInt8>(
            red: .random(in: 0...255),
            green: .random(in: 0...255),
            blue: .random(in: 0...255),
            alpha: 255
        ))
        let cgImage = original.cgImage
        
        var restored: Image<RGBA<UInt8>>! = nil
        measure {
            restored = Image<RGBA<UInt8>>(cgImage: cgImage)
        }
        XCTAssertEqual(restored, original)
        #endif
    }
    
    func testCGImagePerformance() {
        #if canImport(CoreGraphics)
        let original = Image<RGBA<UInt8>>(width: 640, height: 480, pixel: RGBA<UInt8>(
            red: .random(in: 0...255),
            green: .random(in: 0...255),
            blue: .random(in: 0...255),
            alpha: 255
        ))
        
        var cgImage: CGImage!
        measure {
            cgImage = original.cgImage
        }
        let restored = Image<RGBA<UInt8>>(cgImage: cgImage)
        XCTAssertEqual(restored, original)
        #endif
    }
    
    func testWithCGImagePerformance() {
        #if canImport(CoreGraphics)
        let image = Image<PremultipliedRGBA<UInt8>>(width: 640, height: 480, pixel: PremultipliedRGBA<UInt8>(
            red: .random(in: 0...255),
            green: .random(in: 0...255),
            blue: .random(in: 0...255),
            alpha: 255
        ))
        
        var size: (width: Int, height: Int)! = nil
        measure {
            size = image.withCGImage { cgImage in
                return (width: cgImage.width, height: cgImage.height)
            }
        }
        XCTAssertEqual(size.width, image.width)
        XCTAssertEqual(size.height, image.height)
        #endif
    }
}
