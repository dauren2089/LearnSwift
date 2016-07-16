//: Playground - noun: a place where people can play

import Cocoa

// Methods are functions that are associated with a particular type.
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    
    func incrementBy(amount: Int) {
        count += amount
    }
    
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
counter.incrementBy(5)
counter.reset()

/* Self property */
struct Point {
    var x = 0.0, y = 0.0
    func isToTheRight(x: Double) -> Bool {
        return self.x > x
    }
    
    mutating func moveByX(dX: Double, dY: Double) {
        x += dX
        y += dY
    }
}

var p = Point()
p.x = 10.0

/* Modifying value type */
// see above, if not using mutating keyword, the properties of a value type cannot be modified from within its instance methods.

/* Type method */
class SomeClass {
    static func someTypeMethod() {
        
    }
}

SomeClass.someTypeMethod()

// Within the body of a type method, the implicit self property refers to the tpe itself, rather than an instance of that type.
