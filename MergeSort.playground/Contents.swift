//import UIKit
//
//// split arrays
//func mergeSort(array: [Int]) -> [Int] {
//    guard array.count > 1 else {
//        return array
//    }
//    
//    let leftArray = Array(array[0..<array.count/2])
//    let rightArray = Array(array[array.count/2..<array.count])
//    
//    return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))
//}
//
//// merge arrays
//func merge(left: [Int], right: [Int]) -> [Int] {
//    var mergedArray: [Int] = []
//    var left = left
//    var right = right
//    
//    while left.count > 0 && right.count > 0 {
//        if left.first! < right.first! {
//            mergedArray.append(left.removeFirst())
//        } else {
//            mergedArray.append(right.removeFirst())
//        }
//    }
//    return mergedArray + left + right
//}
//
//var arr = [7, 6, 5, 4, 3, 2, 1, 0, 9, 8, -1, 2]
//print(mergeSort(array: arr))

//Merge Sort uses recursion to sort the array in ascending Order
func mergeSortArray(inputArray: [Int]) -> [Int]? {
    var isSorted = true
    
    //Holds result of the sorted array
    var sortedArray: [Int] = []
   
    //Check if Array is not empty
    guard !inputArray.isEmpty else {
        return nil
    }
    
    //If it has only one element, returns it
//    if(inputArray.count == 1){
//        return inputArray
//    }
    
    guard inputArray.count > 1 else { return inputArray }
    
    let midIndex = inputArray.count / 2
    var leftSortedArray: [Int]  = []
    var rightSortedArray: [Int]  = []
    
     var leftIndex = 0
     var rightIndex = 0

     var orderedArray: [Int] = []
     
    
    
    let leftArray = mergeSortArray(inputArray: Array(inputArray[0..<midIndex]))
    
    let rightArray = mergeSortArray(inputArray: Array(inputArray[midIndex..<inputArray.count]))
    
    
    print("LEFT ARRAY: \(leftArray) RIGHT ARRAY: \(rightArray)")
    

   
    
    if let leftArray = leftArray, let rightArray = rightArray {
        
        
        while leftIndex < leftArray.count && rightIndex < rightArray.count {
            
                let leftElement = leftArray[leftIndex]
                let rightElement = rightArray[rightIndex]
            
            
            if leftElement < rightElement {
                 orderedArray.append(leftElement)
                 leftIndex += 1
               } else if leftElement > rightElement {
                 orderedArray.append(rightElement)
                 rightIndex += 1
               } else {
                 orderedArray.append(leftElement)
                 leftIndex += 1
                 orderedArray.append(rightElement)
                 rightIndex += 1
               }
            
            
            
//            if(leftElement < rightElement){
//                orderedArray.append(leftElement)
//                leftIndex +=
//            } else if(leftElement > rightElement){
//                orderedArray.append(rightElement)
//                rightIndex +=
//            } else{
//                orderedArray.append(leftElement)
//                leftIndex += 1
//                orderedArray.append(rightElement)
//                rightIndex += 1
//
//            }
            
        }
//        for(index, element) in leftArray.enumerated() {
//            if(leftArray[index] < leftArray[leftArray.count - 1]){
//                isSorted = false
//                leftSortedArray.append(element)
//            }else{
//                return nil
//            }
//
//        }
   
   
       }


//    if let rightArray = rightArray{
//        for(index, rightElement) in rightArray.enumerated() {
//
//            if(rightArray[index] < rightArray[index]){
//                isSorted = false
//                rightSortedArray.append(rightElement)
//            }else{
//                return nil
//            }
//
//        }
//    }
//    return leftSortedArray
    
    if let leftArray = leftArray, let rightArray = rightArray {
        while leftIndex < leftArray.count {
            orderedArray.append(leftArray[leftIndex])
            leftIndex += 1
        }
        
        while rightIndex < rightArray.count {
            orderedArray.append(rightArray[rightIndex])
            rightIndex += 1
        }
        
    }
    
    return orderedArray
    
    
    
   
    
    
}

print("MERGE SORT: \(mergeSortArray(inputArray: [4,7,9,18,2]))")
