#if os(iOS) || os(watchOS) || os(tvOS)
import UIKit
#if os(iOS) || os(tvOS)
import CoreImage
#endif

#if os(watchOS)
// Hack to simplify code
private enum CIImage {
    var extent: CGRect { fatalError() }
}
private class CIContext {
    func createCGImage(_ image: CIImage, from: CGRect) -> CGImage? { return nil }
}
extension UIImage {
    fileprivate var ciImage: CIImage? { return nil }
}
#endif
    
extension Image where Pixel == RGBA<UInt8> {
    public init(uiImage: UIImage) {
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else if let ciImage = uiImage.ciImage {
            let context = CIContext()
            // Fails when the `ciImage` has an infinite extent.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from the given `UIImage` instance (\(uiImage)).")
            }
            self.init(cgImage: cgImage)
        } else {
            // This `gurad` can be replaced with `assert` if you are sure that the `size` is always equal to `.zero`.
            guard uiImage.size == .zero else {
                fatalError("The `size` of the given `UIImage` instance (\(uiImage)) is not equal to `.zero` though both the `cgImage` and the `ciImage` of the instance are `nil`.")
            }
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
    #if os(iOS) || os(tvOS)
    public init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?) {
        self.init(uiImageOrNil: UIImage(named: name, in: bundle, compatibleWith: traitCollection))
    }
    #endif
    
    public init?(contentsOfFile path: String) {
        self.init(uiImageOrNil: UIImage(contentsOfFile: path))
    }
    
    public init?(data: Data) {
        self.init(uiImageOrNil: UIImage(data: data))
    }
    
    public var uiImage: UIImage {
        return UIImage(cgImage: cgImage)
    }
}
    
extension Image where Pixel == RGBA<UInt16> {
    public init(uiImage: UIImage) {
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else if let ciImage = uiImage.ciImage {
            let context = CIContext()
            // Fails when the `ciImage` has an infinite extent.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from the given `UIImage` instance (\(uiImage)).")
            }
            self.init(cgImage: cgImage)
        } else {
            // This `gurad` can be replaced with `assert` if you are sure that the `size` is always equal to `.zero`.
            guard uiImage.size == .zero else {
                fatalError("The `size` of the given `UIImage` instance (\(uiImage)) is not equal to `.zero` though both the `cgImage` and the `ciImage` of the instance are `nil`.")
            }
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
    #if os(iOS) || os(tvOS)
    public init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?) {
        self.init(uiImageOrNil: UIImage(named: name, in: bundle, compatibleWith: traitCollection))
    }
    #endif
    
    public init?(contentsOfFile path: String) {
        self.init(uiImageOrNil: UIImage(contentsOfFile: path))
    }
    
    public init?(data: Data) {
        self.init(uiImageOrNil: UIImage(data: data))
    }
    
    public var uiImage: UIImage {
        return UIImage(cgImage: cgImage)
    }
}
    
extension Image where Pixel == RGBA<UInt32> {
    public init(uiImage: UIImage) {
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else if let ciImage = uiImage.ciImage {
            let context = CIContext()
            // Fails when the `ciImage` has an infinite extent.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from the given `UIImage` instance (\(uiImage)).")
            }
            self.init(cgImage: cgImage)
        } else {
            // This `gurad` can be replaced with `assert` if you are sure that the `size` is always equal to `.zero`.
            guard uiImage.size == .zero else {
                fatalError("The `size` of the given `UIImage` instance (\(uiImage)) is not equal to `.zero` though both the `cgImage` and the `ciImage` of the instance are `nil`.")
            }
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
    #if os(iOS) || os(tvOS)
    public init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?) {
        self.init(uiImageOrNil: UIImage(named: name, in: bundle, compatibleWith: traitCollection))
    }
    #endif
    
    public init?(contentsOfFile path: String) {
        self.init(uiImageOrNil: UIImage(contentsOfFile: path))
    }
    
    public init?(data: Data) {
        self.init(uiImageOrNil: UIImage(data: data))
    }
    
    public var uiImage: UIImage {
        return UIImage(cgImage: cgImage)
    }
}
    
extension Image where Pixel == RGBA<Float> {
    public init(uiImage: UIImage) {
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else if let ciImage = uiImage.ciImage {
            let context = CIContext()
            // Fails when the `ciImage` has an infinite extent.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from the given `UIImage` instance (\(uiImage)).")
            }
            self.init(cgImage: cgImage)
        } else {
            // This `gurad` can be replaced with `assert` if you are sure that the `size` is always equal to `.zero`.
            guard uiImage.size == .zero else {
                fatalError("The `size` of the given `UIImage` instance (\(uiImage)) is not equal to `.zero` though both the `cgImage` and the `ciImage` of the instance are `nil`.")
            }
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
    #if os(iOS) || os(tvOS)
    public init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?) {
        self.init(uiImageOrNil: UIImage(named: name, in: bundle, compatibleWith: traitCollection))
    }
    #endif
    
    public init?(contentsOfFile path: String) {
        self.init(uiImageOrNil: UIImage(contentsOfFile: path))
    }
    
    public init?(data: Data) {
        self.init(uiImageOrNil: UIImage(data: data))
    }
    
    public var uiImage: UIImage {
        return UIImage(cgImage: cgImage)
    }
}
    
extension Image where Pixel == RGBA<Double> {
    public init(uiImage: UIImage) {
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else if let ciImage = uiImage.ciImage {
            let context = CIContext()
            // Fails when the `ciImage` has an infinite extent.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from the given `UIImage` instance (\(uiImage)).")
            }
            self.init(cgImage: cgImage)
        } else {
            // This `gurad` can be replaced with `assert` if you are sure that the `size` is always equal to `.zero`.
            guard uiImage.size == .zero else {
                fatalError("The `size` of the given `UIImage` instance (\(uiImage)) is not equal to `.zero` though both the `cgImage` and the `ciImage` of the instance are `nil`.")
            }
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
    #if os(iOS) || os(tvOS)
    public init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?) {
        self.init(uiImageOrNil: UIImage(named: name, in: bundle, compatibleWith: traitCollection))
    }
    #endif
    
    public init?(contentsOfFile path: String) {
        self.init(uiImageOrNil: UIImage(contentsOfFile: path))
    }
    
    public init?(data: Data) {
        self.init(uiImageOrNil: UIImage(data: data))
    }
    
    public var uiImage: UIImage {
        return UIImage(cgImage: cgImage)
    }
}
    
extension Image where Pixel == UInt8 {
    public init(uiImage: UIImage) {
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else if let ciImage = uiImage.ciImage {
            let context = CIContext()
            // Fails when the `ciImage` has an infinite extent.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from the given `UIImage` instance (\(uiImage)).")
            }
            self.init(cgImage: cgImage)
        } else {
            // This `gurad` can be replaced with `assert` if you are sure that the `size` is always equal to `.zero`.
            guard uiImage.size == .zero else {
                fatalError("The `size` of the given `UIImage` instance (\(uiImage)) is not equal to `.zero` though both the `cgImage` and the `ciImage` of the instance are `nil`.")
            }
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
    #if os(iOS) || os(tvOS)
    public init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?) {
        self.init(uiImageOrNil: UIImage(named: name, in: bundle, compatibleWith: traitCollection))
    }
    #endif
    
    public init?(contentsOfFile path: String) {
        self.init(uiImageOrNil: UIImage(contentsOfFile: path))
    }
    
    public init?(data: Data) {
        self.init(uiImageOrNil: UIImage(data: data))
    }
    
    public var uiImage: UIImage {
        return UIImage(cgImage: cgImage)
    }
}
    
extension Image where Pixel == UInt16 {
    public init(uiImage: UIImage) {
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else if let ciImage = uiImage.ciImage {
            let context = CIContext()
            // Fails when the `ciImage` has an infinite extent.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from the given `UIImage` instance (\(uiImage)).")
            }
            self.init(cgImage: cgImage)
        } else {
            // This `gurad` can be replaced with `assert` if you are sure that the `size` is always equal to `.zero`.
            guard uiImage.size == .zero else {
                fatalError("The `size` of the given `UIImage` instance (\(uiImage)) is not equal to `.zero` though both the `cgImage` and the `ciImage` of the instance are `nil`.")
            }
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
    #if os(iOS) || os(tvOS)
    public init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?) {
        self.init(uiImageOrNil: UIImage(named: name, in: bundle, compatibleWith: traitCollection))
    }
    #endif
    
    public init?(contentsOfFile path: String) {
        self.init(uiImageOrNil: UIImage(contentsOfFile: path))
    }
    
    public init?(data: Data) {
        self.init(uiImageOrNil: UIImage(data: data))
    }
    
    public var uiImage: UIImage {
        return UIImage(cgImage: cgImage)
    }
}
    
extension Image where Pixel == UInt32 {
    public init(uiImage: UIImage) {
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else if let ciImage = uiImage.ciImage {
            let context = CIContext()
            // Fails when the `ciImage` has an infinite extent.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from the given `UIImage` instance (\(uiImage)).")
            }
            self.init(cgImage: cgImage)
        } else {
            // This `gurad` can be replaced with `assert` if you are sure that the `size` is always equal to `.zero`.
            guard uiImage.size == .zero else {
                fatalError("The `size` of the given `UIImage` instance (\(uiImage)) is not equal to `.zero` though both the `cgImage` and the `ciImage` of the instance are `nil`.")
            }
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
    #if os(iOS) || os(tvOS)
    public init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?) {
        self.init(uiImageOrNil: UIImage(named: name, in: bundle, compatibleWith: traitCollection))
    }
    #endif
    
    public init?(contentsOfFile path: String) {
        self.init(uiImageOrNil: UIImage(contentsOfFile: path))
    }
    
    public init?(data: Data) {
        self.init(uiImageOrNil: UIImage(data: data))
    }
    
    public var uiImage: UIImage {
        return UIImage(cgImage: cgImage)
    }
}
    
extension Image where Pixel == Float {
    public init(uiImage: UIImage) {
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else if let ciImage = uiImage.ciImage {
            let context = CIContext()
            // Fails when the `ciImage` has an infinite extent.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from the given `UIImage` instance (\(uiImage)).")
            }
            self.init(cgImage: cgImage)
        } else {
            // This `gurad` can be replaced with `assert` if you are sure that the `size` is always equal to `.zero`.
            guard uiImage.size == .zero else {
                fatalError("The `size` of the given `UIImage` instance (\(uiImage)) is not equal to `.zero` though both the `cgImage` and the `ciImage` of the instance are `nil`.")
            }
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
    #if os(iOS) || os(tvOS)
    public init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?) {
        self.init(uiImageOrNil: UIImage(named: name, in: bundle, compatibleWith: traitCollection))
    }
    #endif
    
    public init?(contentsOfFile path: String) {
        self.init(uiImageOrNil: UIImage(contentsOfFile: path))
    }
    
    public init?(data: Data) {
        self.init(uiImageOrNil: UIImage(data: data))
    }
    
    public var uiImage: UIImage {
        return UIImage(cgImage: cgImage)
    }
}
    
extension Image where Pixel == Double {
    public init(uiImage: UIImage) {
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else if let ciImage = uiImage.ciImage {
            let context = CIContext()
            // Fails when the `ciImage` has an infinite extent.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from the given `UIImage` instance (\(uiImage)).")
            }
            self.init(cgImage: cgImage)
        } else {
            // This `gurad` can be replaced with `assert` if you are sure that the `size` is always equal to `.zero`.
            guard uiImage.size == .zero else {
                fatalError("The `size` of the given `UIImage` instance (\(uiImage)) is not equal to `.zero` though both the `cgImage` and the `ciImage` of the instance are `nil`.")
            }
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
    #if os(iOS) || os(tvOS)
    public init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?) {
        self.init(uiImageOrNil: UIImage(named: name, in: bundle, compatibleWith: traitCollection))
    }
    #endif
    
    public init?(contentsOfFile path: String) {
        self.init(uiImageOrNil: UIImage(contentsOfFile: path))
    }
    
    public init?(data: Data) {
        self.init(uiImageOrNil: UIImage(data: data))
    }
    
    public var uiImage: UIImage {
        return UIImage(cgImage: cgImage)
    }
}
#endif

