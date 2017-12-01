#if os(macOS)
import AppKit
    
extension Image where Pixel == RGBA<UInt8> {
    public init(nsImage: NSImage) {
        if let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) {
            self.init(cgImage: cgImage)
        } else {
            precondition(nsImage.size == .zero, "The `size` of the given `NSImage` instance (\(nsImage)) must be equal to `.zero` when the `cgImage` of the instance is `nil`.")
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(nsImageOrNil: NSImage?) {
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
        return NSImage(cgImage: cgImage, size: .zero)
    }
}
    
extension Image where Pixel == RGBA<UInt16> {
    public init(nsImage: NSImage) {
        if let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) {
            self.init(cgImage: cgImage)
        } else {
            precondition(nsImage.size == .zero, "The `size` of the given `NSImage` instance (\(nsImage)) must be equal to `.zero` when the `cgImage` of the instance is `nil`.")
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(nsImageOrNil: NSImage?) {
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
        return NSImage(cgImage: cgImage, size: .zero)
    }
}
    
extension Image where Pixel == RGBA<UInt32> {
    public init(nsImage: NSImage) {
        if let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) {
            self.init(cgImage: cgImage)
        } else {
            precondition(nsImage.size == .zero, "The `size` of the given `NSImage` instance (\(nsImage)) must be equal to `.zero` when the `cgImage` of the instance is `nil`.")
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(nsImageOrNil: NSImage?) {
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
        return NSImage(cgImage: cgImage, size: .zero)
    }
}
    
extension Image where Pixel == RGBA<Float> {
    public init(nsImage: NSImage) {
        if let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) {
            self.init(cgImage: cgImage)
        } else {
            precondition(nsImage.size == .zero, "The `size` of the given `NSImage` instance (\(nsImage)) must be equal to `.zero` when the `cgImage` of the instance is `nil`.")
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(nsImageOrNil: NSImage?) {
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
        return NSImage(cgImage: cgImage, size: .zero)
    }
}
    
extension Image where Pixel == RGBA<Double> {
    public init(nsImage: NSImage) {
        if let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) {
            self.init(cgImage: cgImage)
        } else {
            precondition(nsImage.size == .zero, "The `size` of the given `NSImage` instance (\(nsImage)) must be equal to `.zero` when the `cgImage` of the instance is `nil`.")
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(nsImageOrNil: NSImage?) {
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
        return NSImage(cgImage: cgImage, size: .zero)
    }
}
    
extension Image where Pixel == RGBA<Float80> {
    public init(nsImage: NSImage) {
        if let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) {
            self.init(cgImage: cgImage)
        } else {
            precondition(nsImage.size == .zero, "The `size` of the given `NSImage` instance (\(nsImage)) must be equal to `.zero` when the `cgImage` of the instance is `nil`.")
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(nsImageOrNil: NSImage?) {
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
        return NSImage(cgImage: cgImage, size: .zero)
    }
}
    
extension Image where Pixel == RGBA<Bool> {
    public init(nsImage: NSImage) {
        if let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) {
            self.init(cgImage: cgImage)
        } else {
            precondition(nsImage.size == .zero, "The `size` of the given `NSImage` instance (\(nsImage)) must be equal to `.zero` when the `cgImage` of the instance is `nil`.")
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(nsImageOrNil: NSImage?) {
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
        return NSImage(cgImage: cgImage, size: .zero)
    }
}
    
extension Image where Pixel == UInt8 {
    public init(nsImage: NSImage) {
        if let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) {
            self.init(cgImage: cgImage)
        } else {
            precondition(nsImage.size == .zero, "The `size` of the given `NSImage` instance (\(nsImage)) must be equal to `.zero` when the `cgImage` of the instance is `nil`.")
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(nsImageOrNil: NSImage?) {
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
        return NSImage(cgImage: cgImage, size: .zero)
    }
}
    
extension Image where Pixel == UInt16 {
    public init(nsImage: NSImage) {
        if let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) {
            self.init(cgImage: cgImage)
        } else {
            precondition(nsImage.size == .zero, "The `size` of the given `NSImage` instance (\(nsImage)) must be equal to `.zero` when the `cgImage` of the instance is `nil`.")
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(nsImageOrNil: NSImage?) {
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
        return NSImage(cgImage: cgImage, size: .zero)
    }
}
    
extension Image where Pixel == UInt32 {
    public init(nsImage: NSImage) {
        if let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) {
            self.init(cgImage: cgImage)
        } else {
            precondition(nsImage.size == .zero, "The `size` of the given `NSImage` instance (\(nsImage)) must be equal to `.zero` when the `cgImage` of the instance is `nil`.")
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(nsImageOrNil: NSImage?) {
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
        return NSImage(cgImage: cgImage, size: .zero)
    }
}
    
extension Image where Pixel == Float {
    public init(nsImage: NSImage) {
        if let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) {
            self.init(cgImage: cgImage)
        } else {
            precondition(nsImage.size == .zero, "The `size` of the given `NSImage` instance (\(nsImage)) must be equal to `.zero` when the `cgImage` of the instance is `nil`.")
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(nsImageOrNil: NSImage?) {
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
        return NSImage(cgImage: cgImage, size: .zero)
    }
}
    
extension Image where Pixel == Double {
    public init(nsImage: NSImage) {
        if let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) {
            self.init(cgImage: cgImage)
        } else {
            precondition(nsImage.size == .zero, "The `size` of the given `NSImage` instance (\(nsImage)) must be equal to `.zero` when the `cgImage` of the instance is `nil`.")
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(nsImageOrNil: NSImage?) {
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
        return NSImage(cgImage: cgImage, size: .zero)
    }
}
    
extension Image where Pixel == Float80 {
    public init(nsImage: NSImage) {
        if let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) {
            self.init(cgImage: cgImage)
        } else {
            precondition(nsImage.size == .zero, "The `size` of the given `NSImage` instance (\(nsImage)) must be equal to `.zero` when the `cgImage` of the instance is `nil`.")
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(nsImageOrNil: NSImage?) {
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
        return NSImage(cgImage: cgImage, size: .zero)
    }
}
    
extension Image where Pixel == Bool {
    public init(nsImage: NSImage) {
        if let cgImage: CGImage = nsImage.cgImage(forProposedRect: nil, context: nil, hints: nil) {
            self.init(cgImage: cgImage)
        } else {
            precondition(nsImage.size == .zero, "The `size` of the given `NSImage` instance (\(nsImage)) must be equal to `.zero` when the `cgImage` of the instance is `nil`.")
            self.init(width: 0, height: 0, pixels: [])
        }
    }
    
    private init?(nsImageOrNil: NSImage?) {
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
        return NSImage(cgImage: cgImage, size: .zero)
    }
}
#endif
