import XCTest

class SubscriptTests: XCTestCase {
	func testRecursiveGetAndSet() {
		var a = A(value: 2)
		
		a[0][1][2].value = 3
		XCTAssertEqual(3, a[0][1][2].value)
		XCTAssertEqual(3, a.value)
		
		a[0][1][2] = A(value: 5)
		XCTAssertEqual(5, a[0][1][2].value)
		XCTAssertEqual(5, a.value)
	}
	
	func testIndirectSet() {
		var b = B(c: C(value: 2))
		
		b[0].value = 3
		XCTAssertEqual(3, b[0].value)
		
		b[0][1][2].value = 5
		XCTAssertEqual(5, b[0][1][2].value)
		XCTAssertEqual(5, b[0].value)
	}
	
	func testIndirectSet2() {
		var d = D(value: 2)
		
		d[0].value = 3
		XCTAssertEqual(3, d[0].value)
		XCTAssertEqual(3, d.value)

		d[0][1][2].value = 5
		XCTAssertEqual(5, d[0][1][2].value)
		XCTAssertEqual(5, d.value)
	}
	
	func testOptionalSet() {
		var f = F(value: 2)
		
		f[0]?.value = 3
		XCTAssertEqual(3, f[0]!.value)
		XCTAssertEqual(3, f.value)
	}
	
	func testIndirectOptionalSet() {
		var h = H(j: J(value: 2))
		
		h[0][1]?.value = 3
		XCTAssertEqual(3, h[0][1]!.value)
		XCTAssertEqual(3, h.j.value)
		
		h[0][1] = J(value: 5)
		XCTAssertEqual(5, h[0][1]!.value)
		XCTAssertEqual(5, h.j.value)
	}
}

struct A {
	var value: Int
	
	subscript(i: Int) -> A {
		get {
			return self
		}
		set {
			self = newValue
		}
	}
}

struct B {
	var c: C
	
	subscript(i: Int) -> C {
		get {
			return c
		}
		set {
			c = newValue
		}
	}
}

struct C {
	var value: Int
	
	subscript(i: Int) -> C {
		get {
			return self
		}
		set {
			self = newValue
		}
	}
}

struct D {
	var value: Int
	
	subscript(i: Int) -> E {
		get {
			return E(d: self)
		}
		set {
			self = newValue.d
		}
	}
}

struct E {
	var d: D

	var value: Int {
		get {
			return d.value
		}
		set {
			d.value = newValue
		}
	}
	
	subscript(i: Int) -> E {
		get {
			return self
		}
		set {
			self = newValue
		}
	}
}

struct F {
	var value: Int
	
	subscript(i: Int) -> G? {
		get {
			return G(f: self)
		}
		set {
			if let g = newValue {
				self = g.f
			}
		}
	}
}

struct G {
	var f: F
	
	var value: Int {
		get {
			return f.value
		}
		set {
			f.value = newValue
		}
	}
}

struct H {
	var j: J
	
	subscript(i: Int) -> I {
		get {
			return I(h: self)
		}
		set {
			self = newValue.h
		}
	}
}

struct I {
	fileprivate var h: H
	
	subscript(i: Int) -> J? {
		get {
			return h.j
		}
		set (newValueOrNil) {
			guard let newValue = newValueOrNil else { return }
			h.j = newValue
		}
	}
}

struct J {
	var value: Int
}
