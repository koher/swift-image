import XCTest
#if os(iOS) || os(tvOS) || os(watchOS)
    import UIKit
#endif
#if os(macOS)
    import AppKit
#endif
import EasyImagy

class EasyImagySample: XCTestCase {
    #if os(iOS) || os(watchOS) || os(tvOS)
    func testSample() {
        /**/ let x = 0
        /**/ let y = 0
        /**/ let imageView: UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        /**/ imageView.image = Image<RGBA<UInt8>>(width: 1, height: 1, pixel: .black).uiImage
        
        /**/ if never() {
            var image = Image<RGBA<UInt8>>(named: "ImageName")!
            /**/ _ = image[0, 0]
            /**/ }
        /**/ var image = Image<RGBA<UInt8>>(width: 1, height: 1, pixel: .black)
        
        print(image[x, y])
        image[x, y] = RGBA(red: 255, green: 0, blue: 0, alpha: 127)
        image[x, y] = RGBA(0xFF00007F) // red: 255, green: 0, blue: 0, alpha: 127
        
        // Iterates over all pixels
        for pixel in image {
            // ...
            /**/ _ = pixel.description
        }
        
        // Processes images (e.g. binarizations)
        let binarized: Image<Bool> = image.map { $0.gray >= 127 }
        
        // From/to `UIImage`
        image = Image<RGBA<UInt8>>(uiImage: imageView.image!)
        imageView.image = image.uiImage
        
        /**/ _ = binarized[0, 0]
    }
    
    func testIntroduction() {
        /**/ let image = Image<RGBA<UInt8>>(width: 10, height: 10, pixel: .black)
        let grayscale = image.map { $0.gray }
        /**/ _ = grayscale[0, 0]
        
        /**/ let x = 0, y = 0
        var another = image // Not copied here because of copy-on-write
        another[x, y] = RGBA(0xff0000ff) // Copied here lazily
    }
    #endif
    
    func testInitialization() {
        #if os(iOS) || os(watchOS) || os(tvOS)
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
            /**/ _ = image.count
        }
        do {
            let image = Image<RGBA<UInt8>>(width: 640, height: 480, pixel: .black) // a black image
            /**/ _ = image.count
        }
        do {
            /**/ let pixels = [RGBA<UInt8>](repeating: .black, count: 640 * 480)
            let image = Image<RGBA<UInt8>>(width: 640, height: 480, pixels: pixels)
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
    
    func testCropping() {
        /**/ let image = Image<RGBA<UInt8>>(width: 128, height: 128, pixel: .red)
        
        let slice: ImageSlice<RGBA<UInt8>> = image[32..<64, 32..<64] // No copying costs
        let cropped = Image<RGBA<UInt8>>(slice) // Copying is executed here
        
        /**/ _ = cropped.count
    }
    #if os(iOS) || os(watchOS) || os(tvOS)
    func testWithUIImage() {
        /**/ if never() {
            let imageView = UIImageView()
            
            // From `UIImage`
            let image = Image<RGBA<UInt8>>(uiImage: imageView.image!)
            
            // To `UIImage`
            imageView.image = image.uiImage
        /**/ }
    }
    #endif
    #if os(macOS)
    func testWithNSImage() {
        /**/ if never() {
            let imageView = NSImageView()
            
            // From `NSImage`
            let image = Image<RGBA<UInt8>>(nsImage: imageView.image!)
            
            // To `NSImage`
            imageView.image = image.nsImage
            /**/ }
    }
    #endif
}

private func never() -> Bool {
    return false
}

