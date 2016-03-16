#if os(iOS)
    import UIKit
    
    extension Image where Pixel: RGBAType { // UIKit
        public init?(uiImage: UIImage) {
            guard let cgImage: CGImageRef = uiImage.CGImage else { return nil }
            self.init(cgImage: cgImage)
        }
        
        private init?(uiImageOrNil: UIImage?) {
            guard let uiImage: UIImage = uiImageOrNil else { return nil }
            self.init(uiImage: uiImage)
        }
        
        public init?(named name: String) {
            self.init(uiImageOrNil: UIImage(named: name))
        }
        
        public init?(named name: String, inBundle bundle: NSBundle?, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
            self.init(uiImageOrNil: UIImage(named: name, inBundle: bundle, compatibleWithTraitCollection: traitCollection))
        }
        
        public init?(contentsOfFile path: String) {
            self.init(uiImageOrNil: UIImage(contentsOfFile: path))
        }
        
        public init?(data: NSData) {
            self.init(uiImageOrNil: UIImage(data: data))
        }
        
        public var uiImage: UIImage {
            return UIImage(CGImage: cgImage)
        }
    }
    
    extension Image where Pixel: UInt8Type {
        public init?(uiImage: UIImage) {
            guard let cgImage: CGImageRef = uiImage.CGImage else { return nil }
            self.init(cgImage: cgImage)
        }
        
        private init?(uiImageOrNil: UIImage?) {
            guard let uiImage: UIImage = uiImageOrNil else { return nil }
            self.init(uiImage: uiImage)
        }
        
        public init?(named name: String) {
            self.init(uiImageOrNil: UIImage(named: name))
        }
        
        public init?(named name: String, inBundle bundle: NSBundle?, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
            self.init(uiImageOrNil: UIImage(named: name, inBundle: bundle, compatibleWithTraitCollection: traitCollection))
        }
        
        public init?(contentsOfFile path: String) {
            self.init(uiImageOrNil: UIImage(contentsOfFile: path))
        }
        
        public init?(data: NSData) {
            self.init(uiImageOrNil: UIImage(data: data))
        }
        
        public var uiImage: UIImage {
            return UIImage(CGImage: cgImage)
        }
    }
    
    extension Image where Pixel: FloatType {
        public var uiImage: UIImage {
            return UIImage(CGImage: cgImage)
        }
    }
#endif

