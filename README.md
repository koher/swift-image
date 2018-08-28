# EasyImagy

[![Build Status](https://travis-ci.org/koher/EasyImagy.svg?branch=master)](https://travis-ci.org/koher/EasyImagy)

_EasyImagy_ makes it easy to process images in Swift.

```swift
var image = Image<RGBA<UInt8>>(named: "ImageName")!

print(image[x, y])
image[x, y] = RGBA(red: 255, green: 0, blue: 0, alpha: 127)
image[x, y] = RGBA(0xFF00007F) // red: 255, green: 0, blue: 0, alpha: 127

// Iterates over all pixels
for pixel in image {
    // ...
}

// Processes images (e.g. binarizations)
let binarized: Image<Bool> = image.map { $0.gray >= 127 }

// From/to `UIImage`
image = Image<RGBA<UInt8>>(uiImage: imageView.image!)
imageView.image = image.uiImage
```

## Introduction

Processing images by _CoreGraphics_ is complicated: various formats, old C APIs and painful memory management. _EasyImagy_ provides easier APIs to process images.

Typically the `Image` type is used with the `RGBA` type. The `RGBA` is a simple structure declared as follows.

```swift
struct RGBA<Channel> {
    var red: Channel
    var green: Channel
    var blue: Channel
    var alpha: Channel
}
```

You can easily access to pixels using subscripts like `image[x, y]` and also their channels using properties `red`, `green`, `blue` and `alpha`.

In addition, `Image` and `RGBA` provide some powerful APIs to process images. For example, it is possible to convert an image to grayscale combining `Image.map` with `RGBA.gray` in one line as shown below.

```swift
let grayscale: Image<UInt8> = image.map { $0.gray }
```

Another notable feature of _EasyImagy_ is that the `Image` is a `struct`, i.e. a value type, with copy-on-write. It means

- `Image` instances never be shared
- defensive copying is unnecessary
- no wastful copying of `Image` instances
- copying is executed lazily when it is required

```swift
var another = image // Not copied here because of copy-on-write
another[x, y] = RGBA(0xff0000ff) // Copied here lazily
```

## Usage

### Import

```swift
import EasyImagy
```

### Initialization

```swift
let image = Image<RGBA<UInt8>>(named: "ImageName")!
```

```swift
let image = Image<RGBA<UInt8>>(contentsOfFile: "path/to/file")!
```

```swift
let image = Image<RGBA<UInt8>>(data: Data(/* ... */))!
```

```swift
let image = Image<RGBA<UInt8>>(uiImage: imageView.image!) // from a UIImage
```

```swift
let image = Image<RGBA<UInt8>>(nsImage: imageView.image!) // from a NSImage
```

```swift
let image = Image<RGBA<UInt8>>(width: 640, height: 480, pixels: pixels) // from pixels
```

```swift
let image = Image<RGBA<UInt8>>(width: 640, height: 480, pixel: .black) // a black RGBA image
```

```swift
let image = Image<UInt8>(width: 640, height: 480, pixel: .min) // a black grayscale image
```

```swift
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

- Swift 4 or later
- Xcode 9 or later

## Installation

### Swift Package Manager

**Package.swift**

```swift
// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  ...
  dependencies: [
    .package(url: "https://github.com/koher/EasyImagy.git", from: "0.5.0"),
  ],
  targets: [
    .target(
      ...
      dependencies: [
        "EasyImagy",
      ]),
    ]
)
```

### [Carthage](https://github.com/Carthage/Carthage)

**Cartfile**

```
github "koher/EasyImagy" ~> 0.5.0
```

### Manually

1. Put [EasyImagy.xcodeproj](EasyImagy.xcodeproj) into your project/workspace in Xcode.
2. Click your project icon and select the application target and the "General" tab.
3. Add `EasyImagy.framework` to "Embedded Binaries".

## License

[The MIT License](LICENSE)
