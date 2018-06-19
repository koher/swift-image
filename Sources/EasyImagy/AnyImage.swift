import Foundation

public struct AnyImage<Pixel> : ImageProtocol {
    public typealias SubImage = AnyImage<Pixel>
    public typealias Element = Pixel // FIXME: Remove this line in the future. Swift 4.1 needs it to build `AnyImage`.

    private var box: AnyImageBox<Pixel>
    private let lock = NSLock()
    
    public let xRange: CountableRange<Int>
    public let yRange: CountableRange<Int>
    
    private init(box: AnyImageBox<Pixel>, xRange: CountableRange<Int>, yRange: CountableRange<Int>) {
        self.box = box
        self.xRange = xRange
        self.yRange = yRange
    }
    
    internal init<I : ImageProtocol>(_ image: I, xRange: CountableRange<Int>, yRange: CountableRange<Int>) where I.Pixel == Pixel {
        self.box = ImageBox<I>(image)
        self.xRange = xRange
        self.yRange = yRange
    }

    public init<I : ImageProtocol>(_ image: I) where I.Pixel == Pixel {
        self.init(image, xRange: image.xRange, yRange: image.yRange)
    }
    
    public init(width: Int, height: Int, pixels: [Pixel]) {
        self.init(Image<Pixel>(width: width, height: height, pixels: pixels))
    }
    
    public subscript(x: Int, y: Int) -> Pixel {
        get {
            return box[x, y]
        }
        
        set {
            lock.lock()
            defer { lock.unlock() }
            
            if !isKnownUniquelyReferenced(&box) {
                box = box.copied()
            }
            box[x, y] = newValue
        }
    }
    
    public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> AnyImage<Pixel> {
        return AnyImage(box: self.box, xRange: xRange, yRange: yRange)
    }
}

extension AnyImage : Equatable where Pixel : Equatable {
    public static func ==(lhs: AnyImage<Pixel>, rhs: AnyImage<Pixel>) -> Bool {
        guard lhs.width == rhs.width else { return false }
        guard lhs.height == rhs.height else { return false }
        return zip(lhs, rhs).reduce(true) { $0 && $1.0 == $1.1 }
    }
}

extension AnyImage {
    private class AnyImageBox<Pixel> {
        public subscript(x: Int, y: Int) -> Pixel {
            get {
                fatalError("Abstract")
            }
            
            set {
                fatalError("Abstract")
            }
        }
        
        public func copied() -> AnyImageBox<Pixel> {
            fatalError("Abstract")
        }
    }
    
    private class ImageBox<I : ImageProtocol> : AnyImageBox<I.Pixel> {
        private var base: I
        
        public init(_ base: I) {
            self.base = base
        }
        
        override public subscript(x: Int, y: Int) -> I.Pixel {
            get {
                return base[x, y]
            }
            
            set {
                base[x, y] = newValue
            }
        }
        
        override public func copied() -> ImageBox<I> {
            return ImageBox<I>(base)
        }
    }
}
