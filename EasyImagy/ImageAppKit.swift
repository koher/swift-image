#if os(OSX)
    import AppKit
    
    extension Image where Pixel: RGBAType  { // AppKit
        public init?(nsImage: NSImage) {
            guard let cgImage: CGImageRef = nsImage.CGImageForProposedRect(nil, context: nil, hints: nil) else { return nil }
            self.init(cgImage: cgImage)
        }
        
        private init?(nsImageOrNil: NSImage?) {
            guard let nsImage: NSImage = nsImageOrNil else { return nil }
            self.init(nsImage: nsImage)
        }
        
        public init?(named name: String) {
            self.init(nsImageOrNil: NSImage(named: name))
        }
        
        public init?(named name: String, inBundle bundle: NSBundle?) {
            // Temporary implementation
            guard let bundle = bundle else { return nil }
            guard let path = (bundle.resourcePath.flatMap { ($0 as NSString).stringByAppendingPathComponent("\(name).png") }) else { return nil }
            self.init(contentsOfFile: path)
        }
        
        public init?(contentsOfFile path: String) {
            self.init(nsImageOrNil: NSImage(contentsOfFile: path))
        }
        
        public init?(data: NSData) {
            self.init(nsImageOrNil: NSImage(data: data))
        }
        
        public var nsImage: NSImage {
            return NSImage(CGImage: cgImage, size: NSSize.zero)
        }
    }

    extension Image where Pixel: UInt8Type  { // AppKit
        public init?(nsImage: NSImage) {
            guard let cgImage: CGImageRef = nsImage.CGImageForProposedRect(nil, context: nil, hints: nil) else { return nil }
            self.init(cgImage: cgImage)
        }
        
        private init?(nsImageOrNil: NSImage?) {
            guard let nsImage: NSImage = nsImageOrNil else { return nil }
            self.init(nsImage: nsImage)
        }
        
        public init?(named name: String) {
            self.init(nsImageOrNil: NSImage(named: name))
        }
        
        public init?(named name: String, inBundle bundle: NSBundle?) {
            // Temporary implementation
            guard let bundle = bundle else { return nil }
            guard let path = (bundle.resourcePath.flatMap { ($0 as NSString).stringByAppendingPathComponent("\(name).png") }) else { return nil }
            self.init(contentsOfFile: path)
        }
        
        public init?(contentsOfFile path: String) {
            self.init(nsImageOrNil: NSImage(contentsOfFile: path))
        }
        
        public init?(data: NSData) {
            self.init(nsImageOrNil: NSImage(data: data))
        }
        
        public var nsImage: NSImage {
            return NSImage(CGImage: cgImage, size: NSSize.zero)
        }
    }
#endif
