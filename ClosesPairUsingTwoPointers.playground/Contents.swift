import UIKit

//
//n the context of finding the closest pair of elements in an array, "closest pair" refers to the pair of elements within the array that have the smallest absolute difference between them. In other words, it's the pair of elements that are closest to each other in terms of their numerical value.
//
//For example, consider an array [3, 8, 1, 14, 6, 12]. To find the closest pair in this array, you would calculate the absolute differences between all possible pairs of elements and identify the pair with the smallest absolute difference.
//
//In this case, the closest pair is (6, 8) because the absolute difference between them is |6 - 8| = 2, which is smaller than the absolute differences between any other pair of elements in the array.
//
//So, when we say "closest pair," we are looking for the pair of elements in the array that are numerically closest to each other.

func closestPair(_ inputArray: [Int]) -> (Int, Int)? {
    // Sort the input array in ascending order
    let sortedArray = inputArray.sorted()
    
    // Initialize pointers and variables
    var leftPointer = 0
    var rightPointer = sortedArray.count - 1
    var closestPair: (Int, Int)? = nil
    var minDifference = Int.max
    
    while leftPointer < rightPointer {
        let num1 = sortedArray[leftPointer]
        let num2 = sortedArray[rightPointer]
        let difference = abs(num1 - num2)
        
        if difference < minDifference {
            // Found a closer pair
            minDifference = difference
            closestPair = (num1, num2)
        }
        
        if num1 < num2 {
            // Move the left pointer to the right to increase the pair's sum
            leftPointer += 1
        } else {
            // Move the right pointer to the left to decrease the pair's sum
            rightPointer -= 1
        }
    }
    
    return closestPair
}

let input = [10, 5, 7, 2, 15, 8]
if let pair = closestPair(input) {
    print("Closest pair: \(pair)")
} else {
    print("No pairs found.")
}

