//: Playground - noun: a place where people can play

import Cocoa

// Defining and calling functions
func sayHello(personName: String) -> String {
    let greeting = "Hello, " + personName + "!"
    return greeting
}
sayHello("Anna")
sayHello("Brian")
// Functions with multiple return values

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax([8, -6, 2, 109, 3, 71]) {
    println("min is \(bounds.min) and max is \(bounds.max)")
}

// optional return tuple (Int, Int)?
func someFunction(externalParameterName localParameterName: Int) {
    // function body
}

//func join(string s1: String, toString s2: String, withJoiner joiner: String) -> String {
//    return s1 + joiner + s2
//}
//join(string: "hello", toString: "world", withJoiner: ", ")

func containsCharacter(#string: String, #characterToFind: Character) -> Bool {
    for character in string {
        if character == characterToFind {
            return true
        }
    }
    return false
}

let containsAVee = containsCharacter(string: "aardvark", characterToFind: "v")


// default parameter
func join(string s1: String, toString s2: String, withJoiner joiner: String = " ") -> String {
    return s1 + joiner + s2
}
join(string: "hello", toString: "world", withJoiner: "-")
join(string: "hello", toString: "world")

// Swift provides an automatic external name for any parameter that has a default value
func join2(s1: String, s2: String, joiner: String = " ") -> String {
    return s1 + joiner + s2
}
join2("hello", "world", joiner: "-")


// Varadic Parameters
func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 8.25, 18.75)

// Constant and Variable Parameters
func alignRight(var string: String, totalLength: Int, pad: Character) -> String {
    let amountToPad = totalLength - count(string)
    if amountToPad < 1 {
        return string
    }
    let padString = String(pad)
    for _ in 1...amountToPad {
        string = padString + string
    }
    return string
}
let originalString = "hello"
let paddedString = alignRight(originalString, 10, "-")

// In-Out parameters
func swapTwoInts(inout a: Int, inout b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
someInt
anotherInt


// Function Type
// (Int, Int) -> Int 
func addition(a: Int, b: Int) -> Int {
    return a + b
}

// () -> () 
func doNothing() {
    //
}

func addTwoInts(a: Int, b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(a: Int, b: Int) -> Int {
    return a * b
}

var mathFunction: (Int, Int) -> Int = addTwoInts
println("Result: \(mathFunction(2, 3))")
mathFunction = multiplyTwoInts
println("Result: \(mathFunction(2, 3))")

func printMathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int) {
    println("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

func stepForward(input: Int) -> Int {
    return input + 1
}

func stepBackward(input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    return backwards ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(currentValue > 0)
println("Counting to zero.")
while currentValue != 0 {
    println("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}

func chooseStepFunction2(backwards: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backwards ? stepBackward : stepForward
}
currentValue = -4
let moveNearerToZero2 = chooseStepFunction2(currentValue > 0)
while currentValue != 0 {
    println("\(currentValue)...")
    currentValue = moveNearerToZero2(currentValue)
}
println("Zero!")

