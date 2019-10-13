import UIKit

// Question One

// Write a function named double(_:) that takes in a Double and returns that number times two

// Your function here

func double(num : Double) -> Double {
    let product = num * 2.0
    return product
}

let testCasesOne: [(Double, Double)] = [
    (input: 3.0, expectedOutput: 6.0),
    (input: 0, expectedOutput: 0),
    (input: -2, expectedOutput: -4),
    (input: 99, expectedOutput: 198)
]

for (input, expectedOutput) in testCasesOne {
    let output = double(num: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}

// Question Two

// Write a function named smallest(of:and:) that takes in two Doubles and returns the smaller number

// Your function here

func smallest(x : Double, y : Double) -> Double {
    var smaller = 0.0
    if x < y    {
        smaller = x
    }
    else    {
        smaller = y
    }
    return smaller
}

let testCasesTwo: [(Double, Double, Double)] = [
    (inputOne: 8.0, inputTwo: 3.0, expectedOutput: 3.0),
    (inputOne: 0, inputTwo: 0, expectedOutput: 0),
    (inputOne: -5, inputTwo: -3, expectedOutput: -5),
    (inputOne: 2.3, inputTwo: 2.03, expectedOutput: 2.03)
]

for (inputOne, inputTwo, expectedOutput) in testCasesTwo {
    let output = smallest(x: inputOne, y: inputTwo)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for inputs \(inputOne) and \(inputTwo) but got \(output)")
}

// Question Three

// Write a function named smallestValue(in:) that takes in an array of Doubles and returns the smallest Double

// Your function here

func smallestValue(arrayDoubles : [Double]) -> Double   {
    var smallest = arrayDoubles[0]
    for index in 1...arrayDoubles.count - 1 {
        if smallest > arrayDoubles[index]   {
            smallest = arrayDoubles[index]
        }
    }
    return smallest
}

let testCasesThree: [([Double], Double)] = [
    (input: [1.0,2,3,4,5,5], expectedOutput: 1.0),
    (input: [6,5,4,3,2,1], expectedOutput: 1),
    (input: [0,0,0,0,0,0,0,0,0,0], expectedOutput: 0),
    (input: [-4,-59,-348,-34,-4], expectedOutput: -348),
]

for (input, expectedOutput) in testCasesThree {
    let output = smallestValue(arrayDoubles: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}


// Question Four

// Write a function named occurrances(of:in:) that counts how many characters in a String match a specific character.

// Your function here
func occurrances(funcChar : Character, word : String) -> Int  {
    var count = 0
    for char in word    {
        if char == funcChar {
            count += 1
        }
    }
    return count
}

let testCasesFour: [(Character, String, Int)] = [
    (inputOne: "l", inputTwo: "hello", expectedOutput: 2),
    (inputOne: "r", inputTwo: "hello world!", expectedOutput: 1),
    (inputOne: " ", inputTwo: "Now with some spaces", expectedOutput: 3),
    (inputOne: "E", inputTwo: "cApItAlS aRe DiFfErEnT", expectedOutput: 2),
]

for (inputOne, inputTwo, expectedOutput) in testCasesFour {
    let output = occurrances(funcChar: inputOne, word: inputTwo)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for inputs \(inputOne) and \(inputTwo) but got \(output)")
}


// Question Five

// Write a function called removeNils(from:) that takes an array of optional Ints and returns an array with them unwrapped with any nil values removed.

// Your function here
var num: Int?
var validNum: [Int] = []

func removeNils(optArray : [Int?]) -> [Int]   {
    validNum = []
    for element in optArray {
        if element != nil {
            validNum.append(element ?? 0)
        }
    }
    return validNum
}

let arr = removeNils(optArray : [1,nil,9,nil,10,nil])
let arr2 = removeNils(optArray : [1,2,3])
let arr3 = removeNils(optArray : [nil])
print(arr)
print(arr2)
print(arr3)



let testCasesFive: [([Int?], [Int])] = [
    (input: [1, nil, 9, nil, 10, nil], expectedOutput: [1,9,10]),
    (input: [1, 2, 3], expectedOutput: [1, 2, 3]),
    (input: [nil], expectedOutput: []),
    (input: [], expectedOutput: []),
]

for (input, expectedOutput) in testCasesFive {
    let output = removeNils(optArray: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}
