import UIKit

//Application of two pointer techniques
//Two Pointers Moving Towards Each Other: In this variation, you have two pointers, one starting at the beginning of the array (left end) and the other starting at the end of the array (right end). These pointers move toward each other until they meet in the middle or until a certain condition is met. This approach is commonly used for searching and optimization problems.
//
//Example problems:
//
//Finding a pair of elements in a sorted array that sums to a target value.
//Checking if a sequence is a palindrome (word, phrase, or number that reads the same forwards and backward).
//Finding the closest pair of elements in an array.

func twoSumWithTwoPointers(inputArray: [Int], targetNumber: Int) -> [Int] {
    

    guard !inputArray.isEmpty else {
        return []
    }
    
    var sortedArray = inputArray.sorted()
    
    
    var leftPointer = 0
    
    var rightPointer = sortedArray.count - 1
    
    while leftPointer < rightPointer {
        
        let currentSum = sortedArray[leftPointer] + sortedArray[rightPointer]
        
        if ((currentSum) < targetNumber){
            leftPointer += 1
            
        }
        else if((currentSum) > targetNumber){
            leftPointer -= 1
            
        }else{
            return [sortedArray[leftPointer], sortedArray[rightPointer]]
        }
        
        
    }
        return []
        
    
}

let input = [2, 7, 11, 15, 5, 3]
let target = 20
let result = twoSumWithTwoPointers(inputArray: input, targetNumber: target)


print("Indices: \(result)")
