//: Playground - noun: a place where people can play

import Cocoa

struct Size {
    var width: Int
    var height: Int
}

var size1 = Size(width: 10, height: 35)
size1.width = 6

/* Lazy stored properties */

/*
class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}
*/

// Constant properties must always have a value before initialization completes, and therefore cannot be declared as lazy.

/* Computed properties */
struct Point {
    var x = 0.0, y = 0.0
}

struct Shape {
    var origin = Point()
    var center: Point {
        get {
            return Point(x: origin.x/2, y: origin.y/2)
        }
        set(newCenter) {
            origin.x = newCenter.x/2
            origin.y = newCenter.y/2
        }
    }
}

/* Property observers */
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newSteps) {
            print("About to set totalSteps to \(newSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 50
stepCounter.totalSteps = 150
stepCounter.totalSteps = 420

/* Type property */
class SomeClass {
    static var storedProp = "Some value"
    static var computedProp: Int {
        return 42
    }
}

print(SomeClass.storedProp)

        