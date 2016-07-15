//: Playground - noun: a place where people can play

import UIKit

// Global and nested functions are actually special kinds of closures.

/*
 {(parameters) -> return type in
    statements
 }
 */

// default values of parameter cannot be used.

/* The Sort Function */

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}

let names = ["Cc", "Aa", "Ee", "Bb", "DD"]
var reversed = names.sort(backwards)

// Write the sorting closure inline, using closure expression syntax:
reversed = names.sort({(s1: String, s2: String) -> Bool in
    return s1 > s2
})

// the keyword in is used to introduce the beginning of the closure's body

/* Inferring type from context */

reversed = names.sort({s1, s2 in return s1 > s2})
print(reversed)


/* Inferring type from context */
reversed = names.sort({s1, s2 in s1 > s2})
print(reversed)

/* Shorthand argument names */
// Swift automatically provides argument names like $0, $1, $2 and so on
reversed = names.sort({$0 > $1})
print(reversed)

/* Operator functions */
// The shortest way to write the closure expression above:
reversed = names.sort(>)

