#if os(iOS)
    import UIKit
    
    extension Image where Pixel: RGBAType { // UIKit
        public init?(uiImage: UIImage) {
            guard let cgImage: CGImage = uiImage.cgImage else { return nil }
            self.init(cgImage: cgImage)
        }
        
        fileprivate init?(uiImageOrNil: UIImage?) {
            guard let uiImage: UIImage = uiImageOrNil else { return nil }
            self.init(uiImage: uiImage)
        }
        
        public init?(named name: String) {
            self.init(uiImageOrNil: UIImage(named: name))
        }
        
        public init?(named name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
            self.init(uiImageOrNil: UIImage(named: name, in: bundle, compatibleWith: traitCollection))
        }
        
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
    
    extension Image where Pixel: UInt8Type {
        public init?(uiImage: UIImage) {
            guard let cgImage: CGImage = uiImage.cgImage else { return nil }
            self.init(cgImage: cgImage)
        }
        
        fileprivate init?(uiImageOrNil: UIImage?) {
            guard let uiImage: UIImage = uiImageOrNil else { return nil }
            self.init(uiImage: uiImage)
        }
        
        public init?(named name: String) {
            self.init(uiImageOrNil: UIImage(named: name))
        }
        
        public init?(named name: String, inBundle bundle: Bundle?, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
            self.init(uiImageOrNil: UIImage(named: name, in: bundle, compatibleWith: traitCollection))
        }
        
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
    
    extension Image where Pixel: FloatType {
        public var uiImage: UIImage {
            return UIImage(cgImage: cgImage)
        }
    }
#endif

