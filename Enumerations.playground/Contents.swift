//: Playground - noun: a place where people can play

import Cocoa

enum Compass {
    case North
    case South
    case East
    case West
}

// Swift enumeration members are not assigned a default integer value when they are created.
Compass.East.hashValue
Compass.East.dynamicType
var direction = Compass.West
direction.dynamicType

enum Planet {
    case Mercury, Venus, Earth, Mars, Jupiter
}

Planet.Venus.hashValue
Planet.Jupiter.hashValue
Planet.Jupiter.dynamicType

enum Planet2: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter
}

Planet2.Venus.rawValue
Planet2.Jupiter.hashValue
Planet2.Venus.dynamicType

