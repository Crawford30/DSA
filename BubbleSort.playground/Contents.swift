var unsortedArray = [9, 0, 14, 409, 16, 2, -1, 25, 11, 5, 12, -9, 13]

func bubbleSort(inputArray: [Int]) -> [Int?] {
    var counter = 0
    var arrayToSort = inputArray
    

    
    guard inputArray.count > 1 else {
        return inputArray
    }
    
    guard !inputArray.isEmpty else {
        return []
    }
    
    for i in 0..<arrayToSort.count - 1 {
        if arrayToSort[i] > arrayToSort[i + 1] {
            counter += 1
            let temp = arrayToSort[i]
            arrayToSort[i] = arrayToSort[i + 1]
            arrayToSort[i + 1] = temp
        }
    }
    return arrayToSort
}


print("Bubble Sorted Array: \(bubbleSort(inputArray: unsortedArray))")
//[0, 9, 14, 16, 2, -1, 25, 11, 5, 12, -9, 13, 409]
