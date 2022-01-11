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

// Day.006
// Fighting the Booster shot.

// Day.007
// Tired.

// Day.008
// Recovery last day.

// Day.009
// Enumerations and Structures
// By default raw values start at zero
// init?(rawValue:) created an enumeration for a raw value
// This is the opposite or creating an enum case and checking the raw value I guess

//enum Rank: Int {
//    case ace = 1
//    case two, three, four, five, six, seven, eight, nine, ten
//    case jack, queen, king
//
//    func simpleDescription() -> String {
//        switch self {
//        case .ace:
//            return "ace"
//        case .jack:
//            return "jack"
//        case .queen:
//            return "queen"
//        case .king:
//            return "king"
//        default:
//            return String(self.rawValue)
//        }
//    }
//}
//
//let ace = Rank.ace
//let aceRawValue = ace.rawValue

//enum ServerResponse {
//    case result(String, String)
//    case failure(String)
//}
//
//let success = ServerResponse.result("6:00 am", "8:09 pm")
//let failure = ServerResponse.failure("Out of cheese")
//
//switch success {
//case let .result(sunrise, sunset):
//    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
//case let .failure(message):
//    print("Failure... \(message)")
//}

// Day.010
// Protocols and Extensions

//protocol ExampleProtocol {
//    var simpleDescription: String { get }
//    mutating func adjust()
//}
//
//class SimpleClass: ExampleProtocol {
//    var simpleDescription: String = "A very simple class."
//    var anotherProperty: Int = 69105
//    func adjust() {
//        simpleDescription += " Now 100% adjusted"
//    }
//}
//
//struct SimpleStructure: ExampleProtocol {
//    var simpleDescription: String = "A simple structure"
//    mutating func adjust() {
//        simpleDescription += " (adjusted)"
//    }
//}
//
//extension Int: ExampleProtocol {
//    var simpleDescription: String {
//        return "The number \(self)"
//    }
//    
//    mutating func adjust() {
//        self += 42
//    }
//}