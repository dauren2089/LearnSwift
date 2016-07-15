//: Playground - noun: a place where people can play

import Cocoa

var fourDoubles = [Double](count:4, repeatedValue:0.0)

var shoppingList:[String] = ["Bread", "Milk"]

var shoppingList2 = ["Bread", "Milk"]

var shoppingList3 = shoppingList + shoppingList2

print("The shopping list contains \(shoppingList.count) items")

if shoppingList2.isEmpty {
    print("The shopping list is empty")
}
else {
    print("The shopping list is not empty")
}

// modify
shoppingList.append("Flour")

shoppingList += ["Juice", "Chocolate", "Cheese", "Orange"]

var firstItem = shoppingList.first
firstItem = shoppingList[1]

shoppingList[0] = "Two apples"

print(shoppingList)

shoppingList[4...6] = ["Bananas", "Oranges"]

print(shoppingList)

shoppingList.insert("Syrup", atIndex: 0)

let syrup = shoppingList.removeAtIndex(0)

// iterating
for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerate() {
    print("item\(index+1): \(value)")
}


