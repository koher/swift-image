#if canImport(UIKit) && canImport(CoreGraphics)
import Foundation
import UIKit
#if os(iOS) || os(tvOS)
import CoreImage
#endif

#if os(watchOS)
// Hack to simplify code
@usableFromInline
internal enum CIImage {
    @usableFromInline
    var extent: CGRect { fatalError() }
}
@usableFromInline
internal class CIContext {
    @usableFromInline
    init() {}
    @usableFromInline
    func createCGImage(_ image: CIImage, from: CGRect) -> CGImage? { return nil }
}
extension UIImage {
    @usableFromInline
    internal var ciImage: CIImage? { return nil }
}
#endif

extension ImageProtocol where Self: _CGImageConvertible, Pixel: _CGPixel {
    @inlinable
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
    
    @usableFromInline
    internal init?(uiImageOrNil: UIImage?) {
        guard let uiImage: UIImage = uiImageOrNil else { return nil }
        self.init(uiImage: uiImage)
    }
    
    @inlinable
    public init?(named name: String) {
        self.init(uiImageOrNil: UIImage(named: name))
    }
    
    #if os(iOS) || os(tvOS)
    @inlinable
    public init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?) {
        self.init(uiImageOrNil: UIImage(named: name, in: bundle, compatibleWith: traitCollection))
    }
    #endif
    
    @inlinable
    public init?(contentsOfFile path: String) {
        self.init(uiImageOrNil: UIImage(contentsOfFile: path))
    }
    
    @inlinable
    public init?(data: Data) {
        self.init(uiImageOrNil: UIImage(data: data))
    }
    
    @inlinable
    public var uiImage: UIImage {
        return UIImage(cgImage: cgImage)
    }

    @inlinable
    public func pngData() -> Data? {
        guard width > 0 && height > 0 else { return nil }
        return autoreleasepool {
            return uiImage.pngData()
        }
    }

    @inlinable
    public func jpegData(compressionQuality: Double) -> Data? {
        guard width > 0 && height > 0 else { return nil }
        return autoreleasepool {
            return uiImage.jpegData(compressionQuality: CGFloat(compressionQuality))
        }
    }

    @inlinable
    public func data(using format: ImageFormat) -> Data? {
        switch format {
        case .png:
            return pngData()
        case .jpeg(let compressionQuality):
            return jpegData(compressionQuality: compressionQuality)
        }
    }

    @inlinable
    public func write(to url: URL, atomically: Bool, format: ImageFormat) throws {
        guard let data = data(using: format) else {
            throw ImageFormat.FormattingError<Self>(image: self, format: format)
        }
        try data.write(to: url, options: atomically ? .atomic : .init(rawValue: 0))
    }

    @inlinable
    public func write<S : StringProtocol>(toFile path: S, atomically: Bool, format: ImageFormat) throws {
        try write(to: URL(fileURLWithPath: String(path)), atomically: atomically, format: format)
    }
}
#endif
