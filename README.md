![SwiftImage CI](https://github.com/koher/swift-image/actions/workflows/tests.yml/badge.svg)
# SwiftImage

SwiftImage is an image library written in Swift, which provides Swifty APIs and image types with [value semantics](https://developer.apple.com/videos/play/wwdc2015/414/).

```swift
var image = Image<RGBA<UInt8>>(named: "ImageName")!

let pixel: RGBA<UInt8> = image[x, y]
image[x, y] = RGBA(red: 255, green: 0, blue: 0, alpha: 127)
image[x, y] = RGBA(0xFF00007F) // red: 255, green: 0, blue: 0, alpha: 127

// Iterates over all pixels
for pixel in image {
    // ...
}

// Image processing (e.g. binarizations)
let binarized: Image<Bool> = image.map { $0.gray >= 127 }

// From/to `UIImage`
image = Image<RGBA<UInt8>>(uiImage: imageView.image!)
imageView.image = image.uiImage
```

## Introduction

SwiftImage makes it easy to access pixels of images. The `Image` type in SwiftImage can be used intuitively like 2D `Array`.

```swift
var image: Image<UInt8> = Image(width: 640, height: 480, pixels: [255, 248, /* ... */])

let pixel: UInt8 = image[x, y]
image[x, y] = 255

let width: Int = image.width // 640
let height: Int = image.height // 480
```

We can also access pixels of images using CoreGraphics. However, CoreGraphics requires us to struggle with complicated formats, old C APIs and painful memory management. SwiftImage provides clear and Swifty APIs for images.

Typically `Image` is used with the `RGBA` type. `RGBA` is a simple `struct` declared as follows.

```swift
struct RGBA<Channel> {
    var red: Channel
    var green: Channel
    var blue: Channel
    var alpha: Channel
}
```

Because `RGBA` is a generic type, it can represent various formats of pixels. For example, `RGBA<UInt8>` represents a pixel of 8-bit RGBA image (each channel has a value in `0...255`). Similarly, `RGBA<UInt16>` represents a pixel of 16-bit RGBA image (`0...65535`). `RGBA<Float>` can represent a pixel whose channels are `Float`s, which is often used for machine learning. A pixel of binary images, which have only black or white pixels and are used for fax, can be represented using `RGBA<Bool>`.

When `RGBA` is used with `Image`, type parameters are nested like `Image<RGBA<UInt8>>` because both `Image` and `RGBA` are generic types. On the other hand, grayscale images can be represented without nested parameters: `Image<UInt8>` for 8-bit grayscale images and `Image<UInt16>` for 16-bit grayscale images.

`Image` and `RGBA` provide powerful APIs to handle images. For example, it is possible to convert a RGBA image to grayscale combining `Image.map` with `RGBA.gray` in one line.

```swift
let image: Image<RGBA<UInt8>> = // ...
let grayscale: Image<UInt8> = image.map { $0.gray }
```

Another notable feature of SwiftImage is that `Image` is a `struct` with [value semantics](https://developer.apple.com/videos/play/wwdc2015/414/), which is achieved using copy-on-write. Therefore,

- `Image` instances never be shared
- defensive copying is unnecessary
- there are no wasteful copying of `Image` instances
- copying is executed lazily only when it is inevitable

```swift
var another: Image<UInt8> = image // Not copied here because of copy-on-write
another[x, y] = 255               // Copied here lazily
another[x, y] == image[x, y]      // false: Instances are never shared
```

## Usage

### Import

```swift
import SwiftImage
```

### Initialization

```swift
let image = Image<RGBA<UInt8>>(named: "ImageName")!
let image = Image<RGBA<UInt8>>(contentsOfFile: "path/to/file")!
let image = Image<RGBA<UInt8>>(data: Data(/* ... */))!
let image = Image<RGBA<UInt8>>(uiImage: imageView.image!) // from a UIImage
let image = Image<RGBA<UInt8>>(nsImage: imageView.image!) // from a NSImage
let image = Image<RGBA<UInt8>>(cgImage: cgImage) // from a CGImage
let image = Image<RGBA<UInt8>>(width: 640, height: 480, pixels: pixels) // from a pixel array
let image = Image<RGBA<UInt8>>(width: 640, height: 480, pixel: .black) // a black RGBA image
let image = Image<UInt8>(width: 640, height: 480, pixel: 0) // a black grayscale image
let image = Image<Bool>(width: 640, height: 480, pixel: false) // a black binary image
```

### Access to a pixel

```swift
// Gets a pixel by subscripts
let pixel = image[x, y]
```

```swift
// Sets a pixel by subscripts
image[x, y] = RGBA(0xFF0000FF)
image[x, y].alpha = 127
```

```swift
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
```

### Iteration

```swift
for pixel in image {
    ...
}
```

### Rotation

```swift
let result = image.rotated(by: .pi) // Rotated clockwise by π
```

```swift
let result = image.rotated(byDegrees: 180) // Rotated clockwise by 180 degrees
```

```swift
// Rotated clockwise by π / 4 and fill the background with red
let result = image.rotated(by: .pi / 4, extrapolatedBy: .filling(.red))
```

### Flip

```swift
let result = image.xReversed() // Flip Horizontally
```

```swift
let result = image.yReversed() // Flip Vertically
```

### Resizing

```swift
let result = image.resizedTo(width: 320, height: 240)
```

```swift
let result = image.resizedTo(width: 320, height: 240,
    interpolatedBy: .nearestNeighbor) // Nearest neighbor
```

### Crop

Slicing is executed with no copying costs.

```swift
let slice: ImageSlice<RGBA<UInt8>> = image[32..<64, 32..<64] // No copying costs
let cropped = Image<RGBA<UInt8>>(slice) // Copying is executed here
```

### Conversion

`Image` can be converted by `map` in the same way as `Array`. Followings are the examples.

#### Grayscale

```swift
let result: Image<UInt8> = image.map { (pixel: RGBA<UInt8>) -> UInt8 in
    pixel.gray
}
```

```swift
// Shortened form
let result = image.map { $0.gray }
```

#### Binarization

```swift
let result: Image<Bool> = image.map { (pixel: RGBA<UInt8>) -> Bool in
    pixel.gray >= 128
}
```

```swift
// Shortened form
let result = image.map { $0.gray >= 128 }
```

#### Binarization (auto threshold)

```swift
let threshold = UInt8(image.reduce(0) { $0 + $1.grayInt } / image.count)
let result = image.map { $0.gray >= threshold }
```

#### Mean filter

```swift
let kernel = Image<Float>(width: 3, height: 3, pixel: 1.0 / 9.0)
let result = image.convoluted(kernel)
```

#### Gaussian filter

```swift
let kernel = Image<Int>(width: 5, height: 5, pixels: [
    1,  4,  6,  4, 1,
    4, 16, 24, 16, 4,
    6, 24, 36, 24, 6,
    4, 16, 24, 16, 4,
    1,  4,  6,  4, 1,
]).map { Float($0) / 256.0 }
let result = image.convoluted(kernel)
```

### With `UIImage`

```swift
// From `UIImage`
let image = Image<RGBA<UInt8>>(uiImage: imageView.image!)

// To `UIImage`
imageView.image = image.uiImage
```

### With `NSImage`

```swift
// From `NSImage`
let image = Image<RGBA<UInt8>>(nsImage: imageView.image!)

// To `NSImage`
imageView.image = image.nsImage
```

### With CoreGraphics

```swift
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
```

## Requirements

- Swift 5.0 or later
- Xcode 10.2 or later

## License

[The MIT License](LICENSE)
