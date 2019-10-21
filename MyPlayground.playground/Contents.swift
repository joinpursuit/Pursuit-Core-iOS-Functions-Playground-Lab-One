import UIKit

// Question One

// Write a function named double(_:) that takes in a Double and returns that number times two

// Your function here
func double(number x: Double) -> Double {
    let result = x * 2
    return result
}

double(number: 3)

let testCasesOne: [(Double, Double)] = [
    (input: 3.0, expectedOutput: 6.0),
    (input: 0, expectedOutput: 0),
    (input: -2, expectedOutput: -4),
    (input: 99, expectedOutput: 198)
]

for (input, expectedOutput) in testCasesOne {
    let output = double(number: input)
   assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")}



// Question Two

// Write a function named smallest(of:and:) that takes in two Doubles and returns the smaller number

// Your function here

func smallest( x:Double, y:Double) -> Double {
    if x > y {
        print(y)
        return y
    } else if y > x {
        print(x)
    }
    return x
}
print(smallest(x: 8, y: 3))

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

func smallestValue(arr: [Double]) -> Double {
    let arrSorted = arr.sorted()
    return arrSorted[0]
//var smallestDouble = arr[0]
//    for num in arr {
//        if num < smallestDouble {
//        smallestDouble = num
//        }
//    }
//    return smallestDouble
    //let smallestValue = arr.min() ?? 0
    //return smallestValue
    }
smallestValue(arr: [45, 868, 89, 843, 998, 234])
let testCasesThree: [([Double], Double)] = [
    (input: [1.0,2,3,4,5,5], expectedOutput: 1.0),
    (input: [6,5,4,3,2,1], expectedOutput: 1),
    (input: [0,0,0,0,0,0,0,0,0,0], expectedOutput: 0),
    (input: [-4,-59,-348,-34,-4], expectedOutput: -348),
]

for (input, expectedOutput) in testCasesThree {
    let output = smallestValue(arr: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}


// Question Four

// Write a function named occurrances(of:in:) that counts how many characters in a String match a specific character.

// Your function here
func occurrances(char: Character, str: String) -> Int {
    //var myChar = Character()
    var count = 0
    for ch in str {
        if ch == char {
            count += 1
        }
    }
    return count
}
let characterCount = occurrances(char: "E", str: "cApItAlS aRe DiFfErEnT")
print(characterCount)

let testCasesFour: [(Character, String, Int)] = [
    (inputOne: "l", inputTwo: "hello", expectedOutput: 2),
    (inputOne: "r", inputTwo: "hello world!", expectedOutput: 1),
    (inputOne: " ", inputTwo: "Now with some spaces", expectedOutput: 3),
    (inputOne: "E", inputTwo: "cApItAlS aRe DiFfErEnT", expectedOutput: 2),
]

for (inputOne, inputTwo, expectedOutput) in testCasesFour {
    let output = occurrances(char: inputOne, str: inputTwo)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for inputs \(inputOne) and \(inputTwo) but got \(output)")
}


// Question Five

// Write a function called removeNils(from:) that takes an array of optional Ints and returns an array with them unwrapped with any nil values removed.

// Your function here

func removeNils(from: [Int?]) -> [Int] {
    var noNilArray = [Int]()
    for num in from {
        let validNum = num ?? 0
        if validNum != nil {
            noNilArray.append(validNum)
        
        }
    }
    let noZerosArray = noNilArray.filter {$0 != 0 }
    return noZerosArray
}
var myArray = removeNils(from: [nil])
print(myArray)

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

