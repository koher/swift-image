#if os(OSX)
    import AppKit
    
    extension Image where Pixel == RGBA  { // AppKit
        public init?(nsImage: NSImage) {
            guard let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) else { return nil }
            self.init(cgImage: cgImage)
        }
        
        fileprivate init?(nsImageOrNil: NSImage?) {
            guard let nsImage: NSImage = nsImageOrNil else { return nil }
            self.init(nsImage: nsImage)
        }
        
        public init?(named name: NSImage.Name) {
            self.init(nsImageOrNil: NSImage(named: name))
        }
        
        public init?(contentsOfFile path: String) {
            self.init(nsImageOrNil: NSImage(contentsOfFile: path))
        }
        
        public init?(data: Data) {
            self.init(nsImageOrNil: NSImage(data: data))
        }
        
        public var nsImage: NSImage {
            return NSImage(cgImage: cgImage, size: NSSize.zero)
        }
    }

    extension Image where Pixel == UInt8  { // AppKit
        public init?(nsImage: NSImage) {
            guard let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) else { return nil }
            self.init(cgImage: cgImage)
        }
        
        fileprivate init?(nsImageOrNil: NSImage?) {
            guard let nsImage: NSImage = nsImageOrNil else { return nil }
            self.init(nsImage: nsImage)
        }
        
        public init?(named name: NSImage.Name) {
            self.init(nsImageOrNil: NSImage(named: name))
        }
        
        public init?(contentsOfFile path: String) {
            self.init(nsImageOrNil: NSImage(contentsOfFile: path))
        }
        
        public init?(data: Data) {
            self.init(nsImageOrNil: NSImage(data: data))
        }
        
        public var nsImage: NSImage {
            return NSImage(cgImage: cgImage, size: NSSize.zero)
        }
    }
#endif
