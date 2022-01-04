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
