func findMaxNumber(array: [Int]) -> Int? {
    //===Chech if not empty
    guard !array.isEmpty else {
        return nil
    }
    
    //Check if count is 1, and if so returns that element
    if array.count == 1 {
        return array[0]
    }
    
    let midIndex = array.count / 2
    
    let leftMax = findMaxNumber(array: Array(array[0..<midIndex]))
    let rightMax = findMaxNumber(array: Array(array[midIndex..<array.count]))
    
    if let leftMax = leftMax, let rightMax = rightMax {
        return max(leftMax, rightMax)
    } else if let leftMax = leftMax {
        return leftMax
    } else {
        return rightMax
    }
}


print("MAX NUMBER: \(findMaxNumber(array: [1,3,4,5,8,9]))")

