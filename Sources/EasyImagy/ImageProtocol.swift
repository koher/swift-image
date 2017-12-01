public protocol ImageProtocol : Sequence {
    associatedtype Pixel
    
    var width: Int { get }
    var height: Int { get }
    subscript(x: Int, y: Int) -> Pixel { get set }
}

extension ImageProtocol {
    public var count: Int {
        return width * height
    }
}
