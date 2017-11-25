#if os(iOS) || os(watchOS) || os(tvOS)
import UIKit
#if os(iOS) || os(tvOS)
import CoreImage
#endif
    
extension Image where Pixel == RGBA<UInt8> {
    public init(uiImage: UIImage) {
#if os(iOS) || os(tvOS)
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else {
            // This `guard` can be replaced with `!` if you are sure that `uiImage.ciImage` never be nil.
            guard let ciImage = uiImage.ciImage else {
                fatalError("Failed to get both `cgImage` and `ciImage` from this `UIImage` instance: \(uiImage).")
            }
            let context = CIContext()
            // This `guard` can be replaced with `!` if you are sure that the `createCGImage` below never fails.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from this `UIImage` instance: \(uiImage)")
            }
            self.init(cgImage: cgImage)
        }
#else // watchOS
        // This `guard` can be replaced with `!` if you are sure that `uiImage.cgImage` never be nil.
        guard let cgImage = uiImage.cgImage else {
            fatalError("Failed to get `cgImage` from this `UIImage` instance: \(uiImage).")
        }
        self.init(cgImage: cgImage)
#endif
    }
    
    fileprivate init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
#if os(iOS) || os(tvOS)
    public init?(named name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
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
#if os(iOS) || os(tvOS)
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else {
            // This `guard` can be replaced with `!` if you are sure that `uiImage.ciImage` never be nil.
            guard let ciImage = uiImage.ciImage else {
                fatalError("Failed to get both `cgImage` and `ciImage` from this `UIImage` instance: \(uiImage).")
            }
            let context = CIContext()
            // This `guard` can be replaced with `!` if you are sure that the `createCGImage` below never fails.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from this `UIImage` instance: \(uiImage)")
            }
            self.init(cgImage: cgImage)
        }
#else // watchOS
        // This `guard` can be replaced with `!` if you are sure that `uiImage.cgImage` never be nil.
        guard let cgImage = uiImage.cgImage else {
            fatalError("Failed to get `cgImage` from this `UIImage` instance: \(uiImage).")
        }
        self.init(cgImage: cgImage)
#endif
    }
    
    fileprivate init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
#if os(iOS) || os(tvOS)
    public init?(named name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
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
#if os(iOS) || os(tvOS)
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else {
            // This `guard` can be replaced with `!` if you are sure that `uiImage.ciImage` never be nil.
            guard let ciImage = uiImage.ciImage else {
                fatalError("Failed to get both `cgImage` and `ciImage` from this `UIImage` instance: \(uiImage).")
            }
            let context = CIContext()
            // This `guard` can be replaced with `!` if you are sure that the `createCGImage` below never fails.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from this `UIImage` instance: \(uiImage)")
            }
            self.init(cgImage: cgImage)
        }
#else // watchOS
        // This `guard` can be replaced with `!` if you are sure that `uiImage.cgImage` never be nil.
        guard let cgImage = uiImage.cgImage else {
            fatalError("Failed to get `cgImage` from this `UIImage` instance: \(uiImage).")
        }
        self.init(cgImage: cgImage)
#endif
    }
    
    fileprivate init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
#if os(iOS) || os(tvOS)
    public init?(named name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
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
#if os(iOS) || os(tvOS)
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else {
            // This `guard` can be replaced with `!` if you are sure that `uiImage.ciImage` never be nil.
            guard let ciImage = uiImage.ciImage else {
                fatalError("Failed to get both `cgImage` and `ciImage` from this `UIImage` instance: \(uiImage).")
            }
            let context = CIContext()
            // This `guard` can be replaced with `!` if you are sure that the `createCGImage` below never fails.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from this `UIImage` instance: \(uiImage)")
            }
            self.init(cgImage: cgImage)
        }
#else // watchOS
        // This `guard` can be replaced with `!` if you are sure that `uiImage.cgImage` never be nil.
        guard let cgImage = uiImage.cgImage else {
            fatalError("Failed to get `cgImage` from this `UIImage` instance: \(uiImage).")
        }
        self.init(cgImage: cgImage)
#endif
    }
    
    fileprivate init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
#if os(iOS) || os(tvOS)
    public init?(named name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
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
#if os(iOS) || os(tvOS)
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else {
            // This `guard` can be replaced with `!` if you are sure that `uiImage.ciImage` never be nil.
            guard let ciImage = uiImage.ciImage else {
                fatalError("Failed to get both `cgImage` and `ciImage` from this `UIImage` instance: \(uiImage).")
            }
            let context = CIContext()
            // This `guard` can be replaced with `!` if you are sure that the `createCGImage` below never fails.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from this `UIImage` instance: \(uiImage)")
            }
            self.init(cgImage: cgImage)
        }
#else // watchOS
        // This `guard` can be replaced with `!` if you are sure that `uiImage.cgImage` never be nil.
        guard let cgImage = uiImage.cgImage else {
            fatalError("Failed to get `cgImage` from this `UIImage` instance: \(uiImage).")
        }
        self.init(cgImage: cgImage)
#endif
    }
    
    fileprivate init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
#if os(iOS) || os(tvOS)
    public init?(named name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
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
#if os(iOS) || os(tvOS)
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else {
            // This `guard` can be replaced with `!` if you are sure that `uiImage.ciImage` never be nil.
            guard let ciImage = uiImage.ciImage else {
                fatalError("Failed to get both `cgImage` and `ciImage` from this `UIImage` instance: \(uiImage).")
            }
            let context = CIContext()
            // This `guard` can be replaced with `!` if you are sure that the `createCGImage` below never fails.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from this `UIImage` instance: \(uiImage)")
            }
            self.init(cgImage: cgImage)
        }
#else // watchOS
        // This `guard` can be replaced with `!` if you are sure that `uiImage.cgImage` never be nil.
        guard let cgImage = uiImage.cgImage else {
            fatalError("Failed to get `cgImage` from this `UIImage` instance: \(uiImage).")
        }
        self.init(cgImage: cgImage)
#endif
    }
    
    fileprivate init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
#if os(iOS) || os(tvOS)
    public init?(named name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
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
#if os(iOS) || os(tvOS)
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else {
            // This `guard` can be replaced with `!` if you are sure that `uiImage.ciImage` never be nil.
            guard let ciImage = uiImage.ciImage else {
                fatalError("Failed to get both `cgImage` and `ciImage` from this `UIImage` instance: \(uiImage).")
            }
            let context = CIContext()
            // This `guard` can be replaced with `!` if you are sure that the `createCGImage` below never fails.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from this `UIImage` instance: \(uiImage)")
            }
            self.init(cgImage: cgImage)
        }
#else // watchOS
        // This `guard` can be replaced with `!` if you are sure that `uiImage.cgImage` never be nil.
        guard let cgImage = uiImage.cgImage else {
            fatalError("Failed to get `cgImage` from this `UIImage` instance: \(uiImage).")
        }
        self.init(cgImage: cgImage)
#endif
    }
    
    fileprivate init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
#if os(iOS) || os(tvOS)
    public init?(named name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
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
#if os(iOS) || os(tvOS)
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else {
            // This `guard` can be replaced with `!` if you are sure that `uiImage.ciImage` never be nil.
            guard let ciImage = uiImage.ciImage else {
                fatalError("Failed to get both `cgImage` and `ciImage` from this `UIImage` instance: \(uiImage).")
            }
            let context = CIContext()
            // This `guard` can be replaced with `!` if you are sure that the `createCGImage` below never fails.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from this `UIImage` instance: \(uiImage)")
            }
            self.init(cgImage: cgImage)
        }
#else // watchOS
        // This `guard` can be replaced with `!` if you are sure that `uiImage.cgImage` never be nil.
        guard let cgImage = uiImage.cgImage else {
            fatalError("Failed to get `cgImage` from this `UIImage` instance: \(uiImage).")
        }
        self.init(cgImage: cgImage)
#endif
    }
    
    fileprivate init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
#if os(iOS) || os(tvOS)
    public init?(named name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
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
#if os(iOS) || os(tvOS)
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else {
            // This `guard` can be replaced with `!` if you are sure that `uiImage.ciImage` never be nil.
            guard let ciImage = uiImage.ciImage else {
                fatalError("Failed to get both `cgImage` and `ciImage` from this `UIImage` instance: \(uiImage).")
            }
            let context = CIContext()
            // This `guard` can be replaced with `!` if you are sure that the `createCGImage` below never fails.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from this `UIImage` instance: \(uiImage)")
            }
            self.init(cgImage: cgImage)
        }
#else // watchOS
        // This `guard` can be replaced with `!` if you are sure that `uiImage.cgImage` never be nil.
        guard let cgImage = uiImage.cgImage else {
            fatalError("Failed to get `cgImage` from this `UIImage` instance: \(uiImage).")
        }
        self.init(cgImage: cgImage)
#endif
    }
    
    fileprivate init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
#if os(iOS) || os(tvOS)
    public init?(named name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
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
#if os(iOS) || os(tvOS)
        if let cgImage = uiImage.cgImage {
            self.init(cgImage: cgImage)
        } else {
            // This `guard` can be replaced with `!` if you are sure that `uiImage.ciImage` never be nil.
            guard let ciImage = uiImage.ciImage else {
                fatalError("Failed to get both `cgImage` and `ciImage` from this `UIImage` instance: \(uiImage).")
            }
            let context = CIContext()
            // This `guard` can be replaced with `!` if you are sure that the `createCGImage` below never fails.
            guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
                fatalError("Failed to create a `CGImage` from an internal `CIImage` object from this `UIImage` instance: \(uiImage)")
            }
            self.init(cgImage: cgImage)
        }
#else // watchOS
        // This `guard` can be replaced with `!` if you are sure that `uiImage.cgImage` never be nil.
        guard let cgImage = uiImage.cgImage else {
            fatalError("Failed to get `cgImage` from this `UIImage` instance: \(uiImage).")
        }
        self.init(cgImage: cgImage)
#endif
    }
    
    fileprivate init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
#if os(iOS) || os(tvOS)
    public init?(named name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
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

