import UIKit

// Question One

// Write a function named double(_:) that takes in a Double and returns that number times two

// Answer:

func double(x: Double) -> Double {
    let doubleNum = 2 * x
    return doubleNum
}


let testCasesOne: [(Double, Double)] = [
    (input: 3.0, expectedOutput: 6.0),
    (input: 0, expectedOutput: 0),
    (input: -2, expectedOutput: -4),
    (input: 99, expectedOutput: 198)
]

for (input, expectedOutput) in testCasesOne {
    let output = double(x: input) // added a parameter name x:
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}

// Question Two

// Write a function named smallest(of:and:) that takes in two Doubles and returns the smaller number

// Answer:

func smallest(of:Double, and:Double) -> Double {
    if of < and {
        return of
    } else {
        return and
    }
}

let testCasesTwo: [(Double, Double, Double)] = [
    (inputOne: 8.0, inputTwo: 3.0, expectedOutput: 3.0),
    (inputOne: 0, inputTwo: 0, expectedOutput: 0),
    (inputOne: -5, inputTwo: -3, expectedOutput: -5),
    (inputOne: 2.3, inputTwo: 2.03, expectedOutput: 2.03)
]

for (inputOne, inputTwo, expectedOutput) in testCasesTwo {
    let output = smallest(of: inputOne, and: inputTwo)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for inputs \(inputOne) and \(inputTwo) but got \(output)")
}

// Question Three

// Write a function named smallestValue(in:) that takes in an array of Doubles and returns the smallest Double

// Your function here

func smallestValue(in arr: [Double]) -> Double {
    var smallestnum: Double = arr[0]
    for num in arr {
        if num < smallestnum {
            smallestnum = num
        }
    }
    return smallestnum
}

let testCasesThree: [([Double], Double)] = [
    (input: [1.0,2,3,4,5,5], expectedOutput: 1.0),
    (input: [6,5,4,3,2,1], expectedOutput: 1),
    (input: [0,0,0,0,0,0,0,0,0,0], expectedOutput: 0),
    (input: [-4,-59,-348,-34,-4], expectedOutput: -348),
]

for (input, expectedOutput) in testCasesThree {
    let output = smallestValue(in: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}


// Question Four

// Write a function named occurrances(of:in:) that counts how many characters in a String match a specific character.

// Answer:

func occurrances(of char: Character, in str: String) -> Int{
    var occurrances = 0
    for letter in str{
        if letter == char {
            occurrances += 1
        }
    }
    return occurrances
}

let testCasesFour: [(Character, String, Int)] = [
    (inputOne: "l", inputTwo: "hello", expectedOutput: 2),
    (inputOne: "r", inputTwo: "hello world!", expectedOutput: 1),
    (inputOne: " ", inputTwo: "Now with some spaces", expectedOutput: 3),
    (inputOne: "E", inputTwo: "cApItAlS aRe DiFfErEnT", expectedOutput: 2),
]

for (inputOne, inputTwo, expectedOutput) in testCasesFour {
    let output = occurrances(of: inputOne, in: inputTwo)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for inputs \(inputOne) and \(inputTwo) but got \(output)")
}


// Question Five

// Write a function called removeNils(from:) that takes an array of optional Ints and returns an array with them unwrapped with any nil values removed.

// Answer:


func removeNils(from array: [Int?]) -> [Int]{
    var noNilArray: [Int] = []
    // loop through the array
    // unwrap the value using if let
    // append to noNilArray
    
    for num in array{
        if let newNum = num{
            noNilArray.append(newNum)
        }
    }
    return noNilArray
}

let testCasesFive: [([Int?], [Int])] = [
    (input: [1, nil, 9, nil, 10, nil], expectedOutput: [1,9,10]),
    (input: [1, 2, 3], expectedOutput: [1,2,3]),
    (input: [nil], expectedOutput: []),
    (input: [], expectedOutput: []),
]

for (input, expectedOutput) in testCasesFive {
    let output = removeNils(from: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}

