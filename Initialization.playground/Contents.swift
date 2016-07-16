//: Playground - noun: a place where people can play

import Cocoa

// The process of preparing an instance of a class.

struct Fahrenheit {
    var temp: Double
    init() {
        temp = 32.0
    }
}

var f = Fahrenheit()

struct Celsius {
    var tempInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        tempInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        tempInCelsius = kelvin - 273.15
    }
}

let boilingPoint = Celsius(fromFahrenheit: 212.0)
boilingPoint.tempInCelsius
let freezingPoint = Celsius(fromKelvin: 273.15)

// Struct initializer
struct Size {
    var width: Double, height = 0.0
}

let twoByTwo = Size(width: 2.0, height: 2.0)
//twoByTwo.width = 3.0

// Class initializer
/*
class Size {
    var width: Double, height: Double
    init(w: Double, h: Double) {
        width = w
        height = h
    }
}

let twoByTwo = Size(w: 2.0, h: 2.0)
twoByTwo.width = 3.0
*/

/* Require initializers */
class SomeClass {
    required init() {
        
    }
    
    deinit {
        print("deinit from SomeClass")
    }
}

class SomeSubclass: SomeClass {
    required init() {
        
    }
    
    deinit {
        print("deinit from SomeSubclass")
    }
}

/* Deinitialization */
for i in 0...1 {
    let someClass = SomeSubclass()
}

