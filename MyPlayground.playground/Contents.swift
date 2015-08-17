//: Playground - noun: a place where people can play

import UIKit

var welcomeMessage: String = "Welcome "

println(welcomeMessage)
println(UInt8.max)
println(UInt8.min)

println(Int32.max)
println(Int32.min)

// Int has the same size as the current platform's native word size

let e: UInt = 12

// Double: at least 15 decimal digits
// Float: as little as 6 decimal digits

let b = 0b100101
let o = 0o137
let h = 0x1F
let a = 1.25e2
let c = 0xFp2
let paddedDouble = 000123.456
let oneMillion = 1_000_000

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

let orange = true
let delicious = false

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
let (justTheStatusCode, _) = http404Error
justTheStatusCode
println("The status code is \(http404Error.0)")
println("The status message is \(http404Error.1)")

let http202Status = (statusCode: 200, description: "OK")
println("The status code is \(http202Status.statusCode)")
println("The status message is \(http202Status.description)")

let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()
convertedNumber
var serverResponseCode: Int? = 404
serverResponseCode = nil
var surveyAnswer: String?

if let actualNumber = possibleNumber.toInt() {
    println("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
}

let age = -3
assert(age >= 0, "A person's age cannot be less than zero")

let defaultColor = "red"
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColor
println(colorNameToUse)

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    println("Person \(i+1) is called \(names[i])")
}

let aStr = ""
if aStr.isEmpty {
    println("Yea")
}

let catC: [Character] = ["C", "a", "c", "!"]
var catS = String(catC)
let ec: Character = "!"
catS.append(ec)
catS.startIndex
catS.endIndex
let index = advance(catS.startIndex, 2)
index
