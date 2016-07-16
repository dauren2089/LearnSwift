//: Playground - noun: a place where people can play

import Cocoa

class Vehicle {
    var currentSpeed = 0.0
    var desc: String {
        return "traveling at \(currentSpeed) mph"
    }
    func makeNoise() {
        // do nothing
    }
}

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 25.0
print(bicycle.desc)

class Tandem: Bicycle {
    var currNumOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currNumOfPassengers = 2
tandem.currentSpeed = 20.0
print(tandem.desc)

/* Overriding */
class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

class Car: Vehicle {
    var gear = 1
    override var desc: String {
        return super.desc + " in gear \(gear)"
    }
}
