#if os(iOS)
    import UIKit
    
    extension Image where Pixel: RGBAType  { // UIKit
        public init?(uiImage: UIImage) {
            guard let cgImage: CGImageRef = uiImage.CGImage else { return nil }
            self.init(cgImage: cgImage)
        }
        
        private init?(UIImageOrNil: UIImage?) {
            guard let uiImage: UIImage = UIImageOrNil else { return nil }
            self.init(uiImage: uiImage)
        }
        
        public init?(named name: String) {
            self.init(UIImageOrNil: UIImage(named: name))
        }
        
        public init?(named name: String, inBundle bundle: NSBundle?, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
            self.init(UIImageOrNil: UIImage(named: name, inBundle: bundle, compatibleWithTraitCollection: traitCollection))
        }
        
        public init?(contentsOfFile path: String) {
            self.init(UIImageOrNil: UIImage(contentsOfFile: path))
        }
        
        public init?(data: NSData) {
            self.init(UIImageOrNil: UIImage(data: data))
        }
        
        public var uiImage: UIImage {
            return UIImage(CGImage: cgImage)
        }
    }
#endif

