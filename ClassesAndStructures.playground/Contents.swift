//: Playground - noun: a place where people can play

import Cocoa

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
}


// instance
let someResolution = Resolution()
let someVideoMode = VideoMode()

// accessing properties
print("The width is \(someResolution.width)")

print(someVideoMode.resolution.width)

// assign
someVideoMode.resolution.width = 1280

// structures has an automatically-generated memberwise initializer
let vga = Resolution(width: 640, height: 480)

/* Structures are value types */
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048

print("hd is still \(hd.width) pixels wide")


/* Classes are reference types */
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true

let alsoTenEighty = tenEighty
alsoTenEighty.interlaced = false
print(tenEighty.interlaced)

// Identity operators
if tenEighty === alsoTenEighty {
    print("Same")
}

