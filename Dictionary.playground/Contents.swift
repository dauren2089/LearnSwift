//: Playground - noun: a place where people can play

import Cocoa

/*
var airports = [Int: String]()

airports.dynamicType
String(airports.dynamicType)
String(airports.self)
*/

var airports = ["TOR": "Toronto", "NY": "New York"]

airports.dynamicType
String(airports.dynamicType)
String(airports.self)

// add new item
airports["LHR"] = "London"
// modify item
airports["LHR"] = "London Heathrow"

let oldValue = airports.updateValue("New York", forKey: "NY")
let airportName = airports["NY"]
let unkown = airports["SZ"]

unkown.dynamicType

airports["APL"] = "Apple"
print(airports)
airports["APL"] = nil
print(airports)

if let remoteValue = airports.removeValueForKey("NY") {
    print("The removed airport's name is \(remoteValue)")
} else {
    print("The airports dictionary does not contain a value for NY")
}


// iterating
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

airports["SZ"] = "Shen zhen"


for airportCode in airports.keys.sort() {
    print("\(airportCode): \(airports[airportCode]!)")
}

