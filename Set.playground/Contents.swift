//: Playground - noun: a place where people can play

import Cocoa

var letters = Set<Character>()

var names: Set<String> = ["David", "Susan", "Robert"]
names = ["David", "Susan", "Robert"]

names.insert("Paul")

if names.contains("James") {
    print("James is here.")
} else {
    print("James is not with us.")
}

for name in names {
    print("\(name)")
}

print("\nafter being sort:")

for name in names.sort() {
    print("\(name)")
}

print(names.first)

// set operations
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]

oddDigits.union(evenDigits).sort()

let a: Set = [1, 2, 3]
let b: Set = [3, 5, 2]

if !a.isSubsetOf(b) {
    let c: Set = a.intersect(b)
}

