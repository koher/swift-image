import XCTest
import EasyImagy

#if canImport(CoreGraphics)
    import CoreGraphics

#if canImport(AppKit)
    private let red: CGColor = NSColor.red.cgColor
    private let white: CGColor = NSColor.white.cgColor
#else
    private let red: CGColor = UIColor.red.cgColor
    private let white: CGColor = UIColor.white.cgColor
#endif

    class ImageCoreGraphicsTests: XCTestCase {
        func testCGImage() {
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
                XCTAssertEqual(restored.width, image.width)
                XCTAssertEqual(restored.height, image.height)
                XCTAssertEqual(restored[0, 0], image[0, 0])
                XCTAssertEqual(restored[1, 0], image[1, 0])
                XCTAssertEqual(restored[0, 1], image[0, 1])
                XCTAssertEqual(restored[1, 1], image[1, 1])
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
                XCTAssertEqual(restored.width, image.width)
                XCTAssertEqual(restored.height, image.height)
                XCTAssertEqual(restored[0, 0], image[0, 0])
                XCTAssertEqual(restored[1, 0], image[1, 0])
                XCTAssertEqual(restored[0, 1], image[0, 1])
                XCTAssertEqual(restored[1, 1], image[1, 1])
            }
            
            do {
                let image = Image<UInt8>(width: 2, height: 2, pixels: [0, 1, 127, 255])
                let cgImage = image.cgImage
                XCTAssertEqual(cgImage.width, image.width)
                XCTAssertEqual(cgImage.height, image.height)
                
                let restored = Image<UInt8>(cgImage: cgImage)
                XCTAssertEqual(restored.width, image.width)
                XCTAssertEqual(restored.height, image.height)
                XCTAssertEqual(restored[0, 0], image[0, 0])
                XCTAssertEqual(restored[1, 0], image[1, 0])
                XCTAssertEqual(restored[0, 1], image[0, 1])
                XCTAssertEqual(restored[1, 1], image[1, 1])
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
        }
        
        func testWithCGImage() {
            do {
                let image = Image<UInt8>(width: 3, height: 2, pixels: [
                    1, 2, 3,
                    4, 5, 6,
                ])
                
                image.withCGImage { cgImage in
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
            }
            
            do {
                let slice: ImageSlice<UInt8> = Image<UInt8>(width: 5, height: 4, pixels: [
                    0, 0, 0, 0, 0,
                    0, 1, 2, 3, 0,
                    0, 4, 5, 6, 0,
                    0, 0, 0, 0, 0,
                ])[1...3, 1...2]
                
                slice.withCGImage { cgImage in
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
            }
            
            do {
                let image = Image<PremultipliedRGBA<UInt8>>(width: 1, height: 2, pixels: [
                    PremultipliedRGBA<UInt8>(red: 24, green: 49, blue: 99, alpha: 127),
                    PremultipliedRGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4),
                ])
                
                image.withCGImage { cgImage in
                    let restored = Image<PremultipliedRGBA<UInt8>>(cgImage: cgImage)
                    
                    XCTAssertEqual(restored.width, 1)
                    XCTAssertEqual(restored.height, 2)
                    
                    XCTAssertEqual(restored[0, 0], PremultipliedRGBA<UInt8>(red: 24, green: 49, blue: 99, alpha: 127))
                    XCTAssertEqual(restored[0, 1], PremultipliedRGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
                }
            }
            
            do {
                let transparent = PremultipliedRGBA<UInt8>(red: 0, green: 0, blue: 0, alpha: 0)
                let slice: ImageSlice<PremultipliedRGBA<UInt8>> = Image<PremultipliedRGBA<UInt8>>(width: 3, height: 4, pixels: [
                    transparent, transparent, transparent,
                    transparent, PremultipliedRGBA<UInt8>(red: 24, green: 49, blue: 99, alpha: 127), transparent,
                    transparent, PremultipliedRGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4), transparent,
                    transparent, transparent, transparent,
                ])[1...1, 1...2]
                
                slice.withCGImage { cgImage in
                    let restored = Image<PremultipliedRGBA<UInt8>>(cgImage: cgImage)
                    
                    XCTAssertEqual(restored.width, 1)
                    XCTAssertEqual(restored.height, 2)
                    
                    XCTAssertEqual(restored[0, 0], PremultipliedRGBA<UInt8>(red: 24, green: 49, blue: 99, alpha: 127))
                    XCTAssertEqual(restored[0, 1], PremultipliedRGBA<UInt8>(red: 1, green: 2, blue: 3, alpha: 4))
                }
            }
        }
        
        func testWithCGContext() {
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
        }
    }

#endif
