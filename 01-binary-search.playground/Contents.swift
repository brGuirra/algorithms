import UIKit

let numbersList = [2, 5, 9, 15, 28, 49, 64, 88, 90, 120, 400, 559, 900]

func bynary_search(list: [Int], item: Int) -> Int? {
    var initialIndex = 0
    var endingIndex = list.count - 1
    
    while initialIndex <= endingIndex {
        let middleIndex = (initialIndex + endingIndex) / 2
        let guess = list[middleIndex]
        
        if guess == item {
            return middleIndex
        }
        
        if guess > item {
            endingIndex = middleIndex - 1
        } else {
            initialIndex = middleIndex + 1
        }
    }
    
    return nil
}

let result = bynary_search(list: numbersList, item: 900)

print(result ?? "Not found")
