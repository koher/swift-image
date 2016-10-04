import XCTest
import UIKit
import EasyImagy
    
#if os(iOS)
    
    class EasyImagySample: XCTestCase {
        func testSample() {
            /**/ let x = 0
            /**/ let y = 0
            /**/ let imageView: UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            /**/ imageView.image = Image<RGBA>(width: 1, height: 1, pixel: RGBA.black).uiImage
            
            /**/ if false {
            var image = Image<RGBA>(named: "ImageName")!
            /**/ _ = image[0, 0]
            /**/ }
            /**/ var image = Image<RGBA>(width: 1, height: 1, pixel: .black)
            
            print(image[x, y])
            image[x, y] = RGBA(red: 255, green: 0, blue: 0, alpha: 127)
            image[x, y] = RGBA(0xFF00007F) // red: 255, green: 0, blue: 0, alpha: 127
            
            // Iterates over all pixels
            for pixel in image {
                // ...
                /**/ _ = pixel.description
            }
            
            // Converts the image (e.g. binarizations)
            let binarized: Image<RGBA> = image.map { $0.gray < 128 ? .black : .white }
            
            // From/to `UIImage`
            image = Image<RGBA>(uiImage: imageView.image!)!
            imageView.image = image.uiImage

            /**/ _ = binarized[0, 0]
        }
        
        func testIntroduction() {
            /**/ let image = Image<RGBA>(width: 10, height: 10, pixel: .black)
            let result = image.map { $0.gray }
            /**/ _ = result[0, 0]
        }
        
        func testInitialization() {
            do {
                /**/ if false {
                let image = Image<RGBA>(named: "ImageName")!
                /**/ _ = image.count
                /**/ }
            }
            do {
                /**/ if false {
                let image = Image<RGBA>(contentsOfFile: "path/to/file")!
                /**/ _ = image.count
                /**/ }
            }
            do {
                /**/ if false {
                let image = Image<RGBA>(data: Data(/* ... */))!
                /**/ _ = image.count
                /**/ }
            }
            do {
                /**/ let imageView: UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
                /**/ imageView.image = Image<RGBA>(width: 1, height: 1, pixel: RGBA.black).uiImage
                let image = Image<RGBA>(uiImage: imageView.image!)!
                /**/ _ = image.count
            }
            do {
                let image = Image<RGBA>(width: 640, height: 480, pixel: .black) // a black image
                /**/ _ = image.count
            }
            do {
                /**/ let pixels = [RGBA](repeating: .black, count: 640 * 480)
                let image = Image<RGBA>(width: 640, height: 480, pixels: pixels)
                /**/ _ = image.count
            }
        }
        
        func testAccessToAPixel() {
            /**/ let x = 0
            /**/ let y = 0
            /**/ var image = Image<RGBA>(width: 1, height: 1, pixel: .red)
            
            // Gets a pixel by subscripts
            do {
                let pixel = image[x, y]
                /**/ _ = pixel
            }
            
            /////////////////////////////////

            // Sets a pixel by subscripts
            image[x, y] = RGBA(0xFF0000FF)
            image[x, y].alpha = 127
            
            /////////////////////////////////
            
            // Safe get for a pixel
            if let pixel = image.pixel(x, y) {
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
            /**/ let image = Image<RGBA>(width: 128, height: 128, pixel: .red)
            
            let slice: ImageSlice<RGBA> = image[32..<64, 32..<64] // no copy cost
            let cropped = Image<RGBA>(slice) // copy is done here
            
            /**/ _ = cropped.count
        }
    }
#endif
