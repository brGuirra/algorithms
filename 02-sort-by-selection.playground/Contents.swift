import UIKit

func searchLowestNumber(at numbers: [Int]) -> Int {
    var lowestNumber = numbers[0]
    var lowestIndex = 0
    
    for (index, number) in numbers.enumerated() {
        if number < lowestNumber {
            lowestNumber = number
            lowestIndex = index
        }
    }
    
    return lowestIndex
}

func sortBySelection(at numbers: inout [Int]) -> [Int] {
    var resultArray = [Int]()
    
    for _ in numbers {
        let lowestIndex = searchLowestNumber(at: numbers)
        resultArray.append(numbers[lowestIndex])
        numbers.remove(at: lowestIndex)
    }
    
    return resultArray
}

var numbers = [3, 1, 8, 4, 0, 5, 2]

let orderedNumbers = sortBySelection(at: &numbers)

print(orderedNumbers)
