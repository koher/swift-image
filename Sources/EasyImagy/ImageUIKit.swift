#if canImport(UIKit)
import Foundation
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<RGBA<UInt8>>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<RGBA<UInt16>>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<RGBA<UInt32>>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<RGBA<Float>>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<RGBA<Double>>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
    }
}

extension Image where Pixel == RGBA<Bool> {
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<RGBA<Bool>>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
    }
}

extension Image where Pixel == PremultipliedRGBA<UInt8> {
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<PremultipliedRGBA<UInt8>>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
    }
}

extension Image where Pixel == PremultipliedRGBA<UInt16> {
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<PremultipliedRGBA<UInt16>>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
    }
}

extension Image where Pixel == PremultipliedRGBA<UInt32> {
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<PremultipliedRGBA<UInt32>>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
    }
}

extension Image where Pixel == PremultipliedRGBA<Float> {
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<PremultipliedRGBA<Float>>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
    }
}

extension Image where Pixel == PremultipliedRGBA<Double> {
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<PremultipliedRGBA<Double>>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<UInt8>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<UInt16>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<UInt32>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<Float>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<Double>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
    }
}

extension Image where Pixel == Bool {
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        switch format {
        case .png:
            return UIImagePNGRepresentation(uiImage)
        case .jpeg(let compressionQuality):
            return UIImageJPEGRepresentation(uiImage, CGFloat(compressionQuality))
        }
    }

    public func write(to url: URL, atomically: Bool, format: Image.Format) throws {
        guard let data = data(using: format) else {
            throw Image.Format.FormattingError<Image<Bool>>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: Image.Format) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
    }
}
#endif

