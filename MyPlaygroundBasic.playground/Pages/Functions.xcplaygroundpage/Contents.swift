//: [Previous](@previous)

import Foundation

//with return
func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
print(greetAgain(person: "Dani"))

//without return
func greet(person: String) {
    print("Hello, \(person)!")
}
greet(person: "Dave")


func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}
func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}
printAndCount(string: "hello, world")
// prints "hello, world" and returns a value of 12
printWithoutCounting(string: "hello, world")
// prints "hello, world" but doesn't return a value

//function return multiple value
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}
// Prints "min is -6 and max is 109"


//ommiting argument label / bebas tanpa nama parameter
func someFunction(_ firstParameterName: Int, secondParameterName: Int, _ tiga: Int = 33) {
    print(firstParameterName, secondParameterName, tiga)
}
someFunction(1, secondParameterName: 2, 3)
someFunction(1, secondParameterName: 2)


func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(3, 8.25, 18.75)

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

//function in function
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)
// Prints "Result: 8"
