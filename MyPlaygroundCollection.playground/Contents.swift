//: Playground - noun: a place where people can play

import UIKit

// Arrays
var someInts = [Int]()
println("someInts is of type [Int] with \(someInts.count) items.")
someInts.append(3)
someInts = []
var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
var anotherThreeDoubles = [Double](count: 3, repeatedValue: 2.5)
var sixDoubles = threeDoubles + anotherThreeDoubles
var shoppingList = ["Eggs", "Milk"]
shoppingList.count
shoppingList.isEmpty
shoppingList.append("Bag")
shoppingList += ["Chocolate Spread", "Cheese"]
shoppingList[2] = "Tomato"
shoppingList[2..<4] = ["Bananas", "Apples"]
shoppingList.insert("Maple Syrup", atIndex: 0)
let mapleSyrup = shoppingList.removeAtIndex(0)
let cheese = shoppingList.removeLast()
for item in shoppingList {
    println(item)
}
for (index, item) in enumerate(shoppingList) {
    print("Item \(index + 1): \(item) ")
}


// Sets
var letters = Set<Character>()
println("letters is of type Set<Character> with \(letters.count) items.")
letters.insert("A")
// clear set
letters = []
var favoriateGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
// var favoriateGenres: Set = ["Rock", "Classical", "Hip hop"]
favoriateGenres.count
favoriateGenres.isEmpty
favoriateGenres.insert("Jazz")
favoriateGenres.remove("Rock")
// favoriateGenres.removeAll()
favoriateGenres.contains("Classical")
for genre in favoriateGenres {
    println("\(genre)")
}
for genre in sorted(favoriateGenres) {
    println("\(genre)")
}
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
sorted(oddDigits.union(evenDigits))
sorted(oddDigits.intersect(evenDigits))
sorted(oddDigits.subtract(singleDigitPrimeNumbers))
sorted(oddDigits.exclusiveOr(singleDigitPrimeNumbers))
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐏", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
houseAnimals.isSubsetOf(farmAnimals)
farmAnimals.isSupersetOf(houseAnimals)
farmAnimals.isDisjointWith(cityAnimals)

// Dictionaries
var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
// var airports = ["YYZ":, "Toronto Pearson", "DUB": "Dublin"]
airports.count
airports.isEmpty
airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
// returns an optional OldValue
let oldVal = airports.updateValue("London", forKey: "LHR")
// oldVal == nil if no value existed
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    println("The old value for DUB was \(oldValue).")
}
if let airportName = airports["DUB"] {
    println("The name of the airport is \(airportName).")
} else {
    println("That airport is not in the airports dictionary.")
}
// remove value
airports["APL"] = "Apple International"
airports["APL"] = nil
if let removedOldValue = airports.removeValueForKey("DUB") {
    println("The removed airpost's name is \(removedOldValue)")
} else {
    println("The airports dictionary does not contain a value for DUB.")
}
for (airportCode, airportName) in airports {
    println("\(airportCode): \(airportName)")
}
for airportCode in airports.keys {
    println("Airport code: \(airportCode) ")
}
for airportName in airports.values {
    print("Airport Name: \(airportName) ")
}
let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)



