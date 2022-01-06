//
//  File.swift
//  TheBeginning
//
//  Created by to-apple on 1/1/22.
//

import Foundation

// Day.001

// Variables are always initialized before use. -> What does this mean?
// Array indices are checked for out-of-bounds errors -> Doesn't this require additional computation?
// Integers are checked for overflow. -> Again, what does this mean?
// Optionals ensure that nil values are handled explicitly -> Again, computation
// Memory is managed automatically -> What does this mean?
// Error handling allows controlled recovery from unexpected failures.

// 'The obvious way to write your code should also perform the best' Cool

// Day.002
// Simple values
// Can be used with 'var' or 'let'
// Type can be inferred, but not implicitly converted to another type
// String interpolation is used with backslash '\(variable)'
// Three double quotation marks for multiline string (""" MULTILINE STRING"""
// Brackets to create both array and dictionaries ([])
// Empty array and dictionaries can be created with initializers
// eg. let emptyArray: [String] = []
// eg2. let emptyDictionary: [String: Float] = []
// if the type can be inferred, the code below can be used
// eg. shoppingList = []
// eg2. occupations = [:]

// Day.003
// Control Flow
// if, switch, for-in, while, repeat-while
// If an optional value is nil, the conditional is FALSE
//let vegetable = "red pepper"
//switch vegetable {
//case "celery":
//    print("Add some raisins and make ants on a log.")
//case "cucumber", "watercress":
//    print("That would make a good tea sandwich")
//case let x where x.hasSuffix("pepper"):
//    print("Is it a spicy \(x)?")
//default:
//    print("Everything tastes good in soup.")
//}
// Ranges can be ..< or ...

// Day.004
// Functions and Closures
// Tuples can be used as a return value. Use index or variable name to access it

//func calcuateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
//    var min = scores[0]
//    var max = scores[0]
//    var sum = 0
//
//    for score in scores {
//        if score > max {
//            max = score
//        } else if score < min {
//            min = score
//        }
//        sum += score
//    }
//    return (min, max, sum)
//}
//
//let statistics = calcuateStatistics(scores: [5, 3, 100, 3, 9])
//print(statistics.sum)
//print(statistics.2)

// Functions are first-class types and can be used just like a regular variable
//
//func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
//    for item in list {
//        if condition(item) {
//            return true
//        }
//    }
//    return false
//}
//
//func lessThanTen(number: Int) -> Bool {
//    return number < 10
//}
//
//var numbers = [20, 19 ,7, 12]
//
//hasAnyMatches(list: numbers, condition: lessThanTen)

// Functions are actually a special case of closures: blocks of code that can be called later.
//
//numbers.map({ (number: Int) -> Int in
//    let result = 3 * number
//    return result
//})
//
//let mappedNumbers = number.map({ number in 3 * number })
//
//let sortedNumbers = numbers.sorted { $0 > $1 }

// Day.005
// Objects and Classes
// Class variables need to be assigned before creation (init)
// Which can also use deinit when destroyed
// use override for subclass functions. However, if it doesn't really override the original function it will raise an error
// Values can have getters and setters using newValue and oldValue
// willSet and didSet can be used to values outside the initializer
// If a class object is optional, all the properties are also optional
