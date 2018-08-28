#if canImport(AppKit)
import Foundation
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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

    public func data(using format: Image.Format) -> Data? {
        guard width > 0 && height > 0 else { return nil }

        let imageRep = NSBitmapImageRep(cgImage: cgImage)
        imageRep.size = CGSize(width: CGFloat(width), height: CGFloat(height))

        switch format {
        case .png:
            return imageRep.representation(using: .png, properties: [:])
        case .jpeg(let compressionQuality):
            return imageRep.representation(using: .jpeg, properties: [.compressionFactor: NSNumber(value: compressionQuality)])
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
