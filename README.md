EasyImagy
===========================

_EasyImagy_ makes it easy to handle images in Swift.

```swift
var image = Image<RGBA>(named: "ImageName")!

print(image[x, y])
image[x, y] = RGBA(red: 255, green: 0, blue: 0, alpha: 127)
image[x, y] = RGBA(0xFF00007F) // red: 255, green: 0, blue: 0, alpha: 127

// Iterates over all pixels
for pixel in image {
    // ...
}

// Converts the image (e.g. binarizations)
let binarized: Image<RGBA> = image.map { $0.gray < 128 ? .black : .white }

// From/to `UIImage`
image = Image<RGBA>(uiImage: imageView.image!)!
imageView.image = image.uiImage
```

Introduction
---------------------------

Handling images by _CoreGraphics_ is too complicated: various formats, old C APIs and painful memory management. _EasyImagy_ provides the easier way to handle images in exchange for some performance.

Typically `Image`s in _EasyImagy_ are used with `RGBA`. `RGBA` is a simple structure declared as follows.

```swift
struct RGBA {
    var red: UInt8
    var green: UInt8
    var blue: UInt8
    var alpha: UInt8
}
```

You can access to a pixel easily using subscripts like `image[x, y]` and its channels by properties `red`, `green`, `blue` and `alpha`.

`Image` and `RGBA` also provide some convenient methods and properties to make it easy to process images. For example, it is possible to convert an image to grayscale combining `Image#map` with `RGBA#gray` in one line as shown below.

```swift
let result = image.map { $0.gray }
```

Usage
---------------------------

### Import

```swift
import EasyImagy
```

### Initialization

```swift
let image = Image<RGBA>(named: "ImageName")!
```

```swift
let image = Image<RGBA>(contentsOfFile: "path/to/file")!
```

```swift
let image = Image<RGBA>(data: NSData(/* ... */))!
```

```swift
let image = Image<RGBA>(uiImage: imageView.image!)!
```

```swift
let image = Image<RGBA>(width: 640, height: 480, pixel: .black) // a black image
```

```swift
let image = Image<RGBA>(width: 640, height: 480, pixels: pixels)
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
```

### Iteration

```swift
for pixel in image {
    ...
}
```

### Rotation

```swift
let result = image.rotate() // Rotate clockwise
```

```swift
let result = image.rotate(-1) // Rotate counterclockwise
```

```swift
let result = image.rotate(2) // Rotate by 180 degrees
```

### Flip

```swift
let result = image.flipX() // Flip Horizontally
```

```swift
let result = image.flipY() // Flip Vertically
```

### Resizing

```swift
let result = image.resize(width: 100, height: 100)
```

```swift
let result = image.resize(width: 100, height: 100,
    interpolationQuality: kCGInterpolationNone) // Nearest neighbor
```

### Crop

Slicing is done with no copy cost.

```swift
let slice: ImageSlice<RGBA> = image[32..<64, 32..<64] // no copy cost
let cropped = Image<RGBA>(slice) // copy is done here
```

### Conversion

`Image` can be converted by `map` as well as `Array`. Followings are the examples.

#### Grayscale

```swift
let result: Image<UInt8> = image.map { (pixel: Pixel) -> Pixel in
    pixel.gray
}
```

```swift
// Shortened form
let result = image.map { $0.gray }
```

#### Binarization

```swift
let result = image.map { (pixel: Pixel) -> Pixel in
    pixel.gray < 128 ? Pixel.black : Pixel.white
}
```

```swift
// Shortened form
let result = image.map { $0.gray < 128 ? .black : .white }
```

#### Binarization (auto threshold)

```swift
let threshold = UInt8(image.reduce(0) { $0 + $1.grayInt } / image.count)
let result = image.map { $0.gray < threshold ? .black : .white }
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

### With UIImage

#### From UIImage

```swift
let image = Image<RGBA>(uiImage: imageView.image!)!
```

#### To UIImage

```swift
imageView.image = image.uiImage
```

Installation
---------------------------

### Carthage

[_Carthage_](https://github.com/Carthage/Carthage) is available to install _EasyImagy_. Add it to your `Cartfile`:

```
github "koher/EasyImagy" "master"
```

### Manually

For iOS 8 or later,

1. Put [EasyImagy.xcodeproj](EasyImagy.xcodeproj) into your project/workspace in Xcode.
2. Click your project icon and select the application target and the "General" tab.
3. Add `EasyImagy.framework` to "Embedded Binaries".
4. `import EasyImagy` in your swift files.

License
---------------------------

[The MIT License](LICENSE)
