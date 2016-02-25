public protocol RGBAType {
    init(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8)
    
    var red: UInt8 { get set }
    var green: UInt8 { get set }
    var blue: UInt8 { get set }
    var alpha: UInt8 { get set }
}

extension RGBAType { // Additional initializers
	public init(red: UInt8, green: UInt8, blue: UInt8) {
		self.init(red: red, green: green, blue: blue, alpha: 255)
	}
	
	public init(gray: UInt8, alpha: UInt8) {
		self.init(red: gray, green: gray, blue: gray, alpha: alpha)
	}
	
	public init(gray: UInt8) {
		self.init(gray: gray, alpha: 255)
	}
	
	public init(red: Int, green: Int, blue: Int, alpha: Int) {
		self.init(red: UInt8(red), green: UInt8(green), blue: UInt8(blue), alpha: UInt8(alpha))
	}
	
	public init(red: Int, green: Int, blue: Int) {
		self.init(red: UInt8(red), green: UInt8(green), blue: UInt8(blue))
	}
	
	public init(gray: Int) {
		self.init(gray: UInt8(gray))
	}
	
	public init(gray: Int, alpha: Int) {
		self.init(gray: UInt8(gray), alpha: UInt8(alpha))
	}
}

extension RGBAType { // Int getters
	public var redInt: Int {
		get {
			return Int(red)
		}
		set {
			red = UInt8(newValue)
		}
	}
	
	public var greenInt: Int {
		get {
			return Int(green)
		}
		set {
			green = UInt8(newValue)
		}
	}
	
	public var blueInt: Int {
		get {
			return Int(blue)
		}
		set {
			blue = UInt8(newValue)
		}
	}
	
	public var alphaInt: Int {
		get {
			return Int(alpha)
		}
		set {
			alpha = UInt8(newValue)
		}
	}
}

extension RGBA { // Gray
	public var gray: UInt8 {
		return UInt8(grayInt)
	}
	
	public var grayInt: Int {
		return (redInt + greenInt + blueInt) / 3
	}
}

extension RGBA : CustomStringConvertible {
	public var description: String {
		return String(format: "#%02X%02X%02X%02X", arguments: [red, green, blue, alpha])
	}
}

extension RGBA : CustomDebugStringConvertible {
	public var debugDescription: String {
		return description
	}
}

extension RGBA : Equatable {
}

public func ==(lhs: RGBA, rhs: RGBA) -> Bool {
	return lhs.red == rhs.red && lhs.green == rhs.green && lhs.blue == rhs.blue && lhs.alpha == rhs.alpha
}

extension RGBAType { // Operations
	public static func mean<S: SequenceType where S.Generator.Element == RGBA>(pixels: S) -> Self? {
		var count = 0
		var sum = IntPixel(red: 0, green: 0, blue: 0, alpha: 0)
		for pixel in pixels {
			sum.red += pixel.redInt
			sum.green += pixel.greenInt
			sum.blue += pixel.blueInt
			sum.alpha += pixel.alphaInt
			count++
		}
        
        guard count > 0 else { return nil }
		
		return Self.init(red: sum.red / count, green: sum.green / count, blue: sum.blue / count, alpha: sum.alpha / count)
	}

	public static func weightedMean<S: SequenceType where S.Generator.Element == (Int, RGBA)>(weightedPixels: S) -> Self? {
		var weightSum = 0
		var sum = IntPixel(red: 0, green: 0, blue: 0, alpha: 0)
		for (weight, pixel) in weightedPixels {
			sum.red += weight * pixel.redInt
			sum.green += weight * pixel.greenInt
			sum.blue += weight * pixel.blueInt
			sum.alpha += weight * pixel.alphaInt
			weightSum += weight
		}
        
        guard weightSum > 0 else { return nil }
		
		return Self.init(red: sum.red / weightSum, green: sum.green / weightSum, blue: sum.blue / weightSum, alpha: sum.alpha / weightSum)
	}
}

extension RGBAType { // Presets
	public static var red: Self {
		return Self.init(red: 255, green: 0, blue: 0)
	}
	
	public static var green: Self {
		return Self.init(red: 0, green: 255, blue: 0)
	}
	
	public static var blue: Self {
		return Self.init(red: 0, green: 0, blue: 255)
	}
	
	public static var black: Self {
		return Self.init(gray: 0)
	}
	
	public static var white: Self {
		return Self.init(gray: 255)
	}
	
	public static var transparent: Self {
		return Self.init(gray: 0, alpha: 0)
	}
}

public struct RGBA: RGBAType {
    public var red: UInt8
    public var green: UInt8
    public var blue: UInt8
    public var alpha: UInt8
    
    public init(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
}

private struct IntPixel {
	var red: Int
	var green: Int
	var blue: Int
	var alpha: Int
}
