import Foundation

public struct AnyImage<Pixel> : ImageProtocol {
    private var box: AnyImageBox<Pixel>
    private let lock = NSLock()
    
    public init<I : ImageProtocol>(_ image: I) where I.Pixel == Pixel {
        box = ImageBox<I>(image)
    }
    
    public init(width: Int, height: Int, pixels: [Pixel]) {
        self.init(Image<Pixel>(width: width, height: height, pixels: pixels))
    }
    
    public var xRange: CountableRange<Int> {
        return box.xRange
    }
    
    public var yRange: CountableRange<Int> {
        return box.yRange
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
    
    public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
        return box[xRange, yRange]
    }
    
    public func makeIterator() -> AnyIterator<Pixel> {
        return box.makeIterator()
    }
}

extension AnyImage {
    private class AnyImageBox<Pixel> {
        public var xRange: CountableRange<Int> {
            fatalError("Abstract")
        }
        
        public var yRange: CountableRange<Int> {
            fatalError("Abstract")
        }
        
        public subscript(x: Int, y: Int) -> Pixel {
            get {
                fatalError("Abstract")
            }
            
            set {
                fatalError("Abstract")
            }
        }
        
        public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<Pixel> {
            fatalError("Abstract")
        }
        
        public func makeIterator() -> AnyIterator<Pixel> {
            fatalError("Abstract")
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
        
        override public var xRange: CountableRange<Int> {
            return base.xRange
        }
        
        override public var yRange: CountableRange<Int> {
            return base.yRange
        }
        
        override public subscript(x: Int, y: Int) -> I.Pixel {
            get {
                return base[x, y]
            }
            
            set {
                base[x, y] = newValue
            }
        }
        
        override public subscript(xRange: CountableRange<Int>, yRange: CountableRange<Int>) -> ImageSlice<I.Pixel> {
            return base[xRange, yRange]
        }
        
        override public func makeIterator() -> AnyIterator<I.Pixel> {
            return AnyIterator(base.makeIterator())
        }
        
        override public func copied() -> ImageBox<I> {
            return ImageBox<I>(base)
        }
    }
}
