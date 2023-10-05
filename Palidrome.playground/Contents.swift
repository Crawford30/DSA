import UIKit

//Check if Sentence is a palidrome
//Application of two pointer techniques
//Two Pointers Moving Towards Each Other: In this variation, you have two pointers, one starting at the beginning of the array (left end) and the other starting at the end of the array (right end). These pointers move toward each other until they meet in the middle or until a certain condition is met. This approach is commonly used for searching and optimization problems.
//
//Example problems:
//
//Finding a pair of elements in a sorted array that sums to a target value.
//Checking if a sequence is a palindrome (word, phrase, or number that reads the same forwards and backward).
//Finding the closest pair of elements in an array.

func isPalidrome(inputString: String) -> Bool {
    var isPalidrome = true
    
    var cleanedSequence = inputString.lowercased().replacingOccurrences(of:  "[^0-9]", with: "",  options: .regularExpression)
    
    var cleanedSeqArray = Array(cleanedSequence)
    
    var leftPointer = 0
    var rightPointer = cleanedSeqArray.count - 1
    
    while leftPointer < rightPointer {
        if(cleanedSeqArray[leftPointer] != cleanedSeqArray[rightPointer] ){
            isPalidrome = false
            break
            
        }
        
        leftPointer += 1
        rightPointer -= 1
       
    }
    
    
    
    return isPalidrome
}

//A man, a plan, a canal, Panama

let input = "A man, a plan, a canal, Panama"
print(isPalidrome(inputString: input))
