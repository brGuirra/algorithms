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
