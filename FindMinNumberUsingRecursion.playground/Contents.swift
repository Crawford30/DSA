
//Function to Find Min Number using Recursion

func findMinNumber(inputArray: [Int]) -> Int? {
    guard !inputArray.isEmpty else{
        return nil
    }
    
    //Check If Size is 1
    if(inputArray.count == 1){
        return inputArray[0]
    }
    
    let midIndex = inputArray.count / 2
   
    let leftMin = findMinNumber(inputArray: Array(inputArray[0..<midIndex]))
    let rightMin = findMinNumber(inputArray: Array(inputArray[midIndex..<inputArray.count]))
    
    if let leftMin = leftMin, let rightMin = rightMin {
        return min(leftMin, rightMin)
    }
    else if let leftMin = leftMin {
        return leftMin
    }else{
        return rightMin
    }
        
}


print("MIN NUMBER: \(findMinNumber(inputArray: [4,5,6,8,12,2]))")
