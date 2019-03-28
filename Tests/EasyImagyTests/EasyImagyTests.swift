import XCTest
#if canImport(UIKit)
import UIKit
#endif
#if canImport(AppKit)
import AppKit
#endif
import EasyImagy

class EasyImagySample: XCTestCase {
    func testSample() {
        /**/ #if canImport(UIKit) || canImport(AppKit)
        /**/ let x = 0
        /**/ let y = 0
        /**/ #if canImport(UIKit)
        /**/ let imageView: UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        /**/ imageView.image = Image<RGBA<UInt8>>(width: 1, height: 1, pixel: .black).uiImage
        /**/ #endif

        /**/ if never() {
        var image = Image<RGBA<UInt8>>(named: "ImageName")!
        /**/ _ = image[0, 0]
        /**/ }
        /**/ var image = Image<RGBA<UInt8>>(width: 1, height: 1, pixel: .black)
        
        let pixel: RGBA<UInt8> = image[x, y]
        image[x, y] = RGBA(red: 255, green: 0, blue: 0, alpha: 127)
        image[x, y] = RGBA(0xFF00007F) // red: 255, green: 0, blue: 0, alpha: 127
        
        // Iterates over all pixels
        for pixel in image {
            // ...
            /**/ _ = pixel.description
        }
        
        // Image processing (e.g. binarizations)
        let binarized: Image<Bool> = image.map { $0.gray >= 127 }
        
        // From/to `UIImage`
        /**/ #if canImport(UIKit)
        image = Image<RGBA<UInt8>>(uiImage: imageView.image!)
        imageView.image = image.uiImage
        /**/ #endif

        /**/ _ = pixel
        /**/ _ = binarized[0, 0]
        /**/ #endif
    }

    func testIntroduction() {
        do {
            /**/ if never() {
            var image: Image<UInt8> = Image(width: 640, height: 480, pixels: [255, 248, /* ... */])
            
            /**/ image[0, 0] = 0
            /**/ }
            /**/ var image: Image<UInt8> = Image(width: 1, height: 1, pixel: 0)
            /**/ let x = 0
            /**/ let y = 0
            let pixel: UInt8 = image[x, y]
            image[x, y] = 255
            /**/ _ = pixel
            
            let width: Int = image.width // 640
            let height: Int = image.height // 480
            /**/ _ = width
            /**/ _ = height
        }

        do {
            /**/ #if canImport(UIKit) || canImport(AppKit)
            /**/ if never() {
            var image = Image<RGBA<UInt8>>(named: "ImageName")!
            /**/ image[0, 0] = RGBA(0xffffffff)
            /**/ }
            /**/ #endif
            /**/ let image = Image<RGBA<UInt8>>(width: 10, height: 10, pixel: .black)
            let grayscale: Image<UInt8> = image.map { $0.gray }
            /**/ _ = grayscale[0, 0]
        }
        
        do {
            /**/ let image = Image<RGBA<UInt8>>(width: 1, height: 1, pixel: .black)
            /**/ let x = 0, y = 0
            var another = image // Not copied here because of copy-on-write
            another[x, y] = RGBA(0xff0000ff) // Copied here lazily
        }
    }
    
    func testInitialization() {
        #if canImport(UIKit)
        do {
            /**/ if never() {
            let image = Image<RGBA<UInt8>>(named: "ImageName")!
            /**/ _ = image.count
            /**/ }
        }
        do {
            /**/ if never() {
            let image = Image<RGBA<UInt8>>(contentsOfFile: "path/to/file")!
            /**/ _ = image.count
            /**/ }
        }
        do {
            /**/ if never() {
            let image = Image<RGBA<UInt8>>(data: Data(/* ... */))!
            /**/ _ = image.count
            /**/ }
        }
        do {
            /**/ let imageView: UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            /**/ imageView.image = Image<RGBA<UInt8>>(width: 1, height: 1, pixel: RGBA.black).uiImage
            let image = Image<RGBA<UInt8>>(uiImage: imageView.image!) // from a UIImage
            /**/ _ = image.count
        }
        #endif
        do {
            let image = Image<RGBA<UInt8>>(width: 640, height: 480, pixel: .black) // a black RGBA image
            /**/ _ = image.count
        }
        do {
            let image = Image<UInt8>(width: 640, height: 480, pixel: .min) // a black grayscale image
            /**/ _ = image.count
        }
        do {
            let image = Image<Bool>(width: 640, height: 480, pixel: false) // a black binary image
            /**/ _ = image.count
        }
        do {
            /**/ let pixels = [RGBA<UInt8>](repeating: .black, count: 640 * 480)
            let image = Image<RGBA<UInt8>>(width: 640, height: 480, pixels: pixels) // from pixels
            /**/ _ = image.count
        }
    }
    
    func testAccessToAPixel() {
        /**/ let x = 0
        /**/ let y = 0
        /**/ var image = Image<RGBA<UInt8>>(width: 1, height: 1, pixel: .red)
        
        do {
            // Gets a pixel by subscripts
            let pixel = image[x, y]
            /**/ _ = pixel
        }
        
        /////////////////////////////////
        
        // Sets a pixel by subscripts
        image[x, y] = RGBA(0xFF0000FF)
        image[x, y].alpha = 127
        
        /////////////////////////////////
        
        // Safe get for a pixel
        if let pixel = image.pixelAt(x: x, y: y) {
            print(pixel.red)
            print(pixel.green)
            print(pixel.blue)
            print(pixel.alpha)
            
            print(pixel.gray) // (red + green + blue) / 3
            print(pixel) // formatted like "#FF0000FF"
        } else {
            // `pixel` is safe: `nil` is returned when out of bounds
            print("Out of bounds")
        }
    }
    
    func testRotation() {
        do {
            /**/ let image = Image<UInt8>(width: 1, height: 1, pixel: 0)
            let result = image.rotated(by: .pi) // Rotated clockwise by π
            /**/ _ = result.count
        }
        do {
            /**/ let image = Image<UInt8>(width: 1, height: 1, pixel: 0)
            let result = image.rotated(byDegrees: 180) // Rotated clockwise by 180 degrees
            /**/ _ = result.count
        }
        do {
            /**/ let image = Image<RGBA<UInt8>>(width: 1, height: 1, pixel: .red)
            // Rotated clockwise by π / 4 and fill the background with red
            let result = image.rotated(by: .pi / 4, extrapolatedBy: .constant(.red))
            /**/ _ = result.count
        }
    }
    
    func testResizing() {
        do {
            /**/ let image = Image<UInt8>(width: 1, height: 1, pixel: 0)
            let result = image.resizedTo(width: 320, height: 240)
            /**/ _ = result.count
        }
        
        do {
            /**/ let image = Image<UInt8>(width: 1, height: 1, pixel: 0)
            let result = image.resizedTo(width: 320, height: 240, interpolatedBy: .nearestNeighbor)
            /**/ _ = result.count
        }
    }
    
    func testCropping() {
        /**/ let image = Image<RGBA<UInt8>>(width: 128, height: 128, pixel: .red)
        
        let slice: ImageSlice<RGBA<UInt8>> = image[32..<64, 32..<64] // No copying costs
        let cropped = Image<RGBA<UInt8>>(slice) // Copying is executed here
        
        /**/ _ = cropped.count
    }
    func testWithUIImage() {
        #if canImport(UIKit)
        /**/ if never() {
            /**/ let imageView = UIImageView()
            
            // From `UIImage`
            let image = Image<RGBA<UInt8>>(uiImage: imageView.image!)
            
            // To `UIImage`
            imageView.image = image.uiImage
        /**/ }
        #endif
    }
    func testWithNSImage() {
        #if canImport(AppKit)
        /**/ if never() {
            /**/ let imageView = NSImageView()
            
            // From `NSImage`
            let image = Image<RGBA<UInt8>>(nsImage: imageView.image!)
            
            // To `NSImage`
            imageView.image = image.nsImage
        /**/ }
        #endif
    }
    func testWithCoreGraphics() {
        #if canImport(UIKit)
        /**/ if never() {
            /**/ let imageView = UIImageView()
            
            // Drawing on images with CoreGraphics
            var image = Image<PremultipliedRGBA<UInt8>>(uiImage: imageView.image!)
            image.withCGContext { context in
                context.setLineWidth(1)
                context.setStrokeColor(UIColor.red.cgColor)
                context.move(to: CGPoint(x: -1, y: -1))
                context.addLine(to: CGPoint(x: 640, y: 480))
                context.strokePath()
            }
            imageView.image = image.uiImage
        /**/ }
        #endif
    }
}

private func never() -> Bool {
    return false
}

