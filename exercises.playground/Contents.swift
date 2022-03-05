import UIKit

//MARK: - Exercise 4.1

// Sum the values of an array

var numbers = [2, 6, 8, 14]

func sum(values: inout [Int]) -> Int {
    if values.count == 1 {
        return values[0]
    }
    
    let lastItem = values.removeLast()
    
    return lastItem + sum(values: &values)
}

let sumOfNumbers = sum(values: &numbers)

print("Exercise 4.1: \(sumOfNumbers)")

//MARK: - Exercise 4.2

// Counting the numbers of items on a list

var names = ["Bob", "Jonh", "Lucas", "Maria", "Camila", "Angela"]

func countsOnList(_ list: inout [String]) -> Int {
    if list.isEmpty {
        return 0
    }
    
    list.removeLast()
    
    return 1 + countsOnList(&list)
}

print("Exercise 4.2: \(countsOnList(&names))")
