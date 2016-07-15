//: Playground - noun: a place where people can play

import UIKit

// The values within a tuple can be of any type and do not have to share a common type.

let error = (404, "Not Found")
error.dynamicType

let (statusCode, statusMessage) = error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

// accessing with index numbers, starting with zero.
print("The status code is \(error.0)")
print("The status message is \(error.1)")

// name elements
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")
