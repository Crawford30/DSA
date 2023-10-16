import UIKit



//======With Handle for remaining elements====
//
//func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
//       var mergedArray = [Int]()
//       var leftIndex = 0
//       var rightIndex = 0
//       let leftElements = nums1[0..<m]
//       let rightElements = nums2
//
//       while leftIndex < m, rightIndex < n {
//           if(leftElements[leftIndex] < rightElements[rightIndex]){
//               mergedArray.append(leftElements[leftIndex] )
//               leftIndex += 1
//           }else {
//               mergedArray.append(rightElements[rightIndex] )
//               rightIndex += 1
//           }
//       }
//
//        while leftIndex < m {
//           mergedArray.append(leftElements[leftIndex])
//           leftIndex += 1
//       }
//
//       while rightIndex < n {
//           mergedArray.append(rightElements[rightIndex])
//           rightIndex += 1
//       }
//
//       for (index, element) in mergedArray.enumerated() {
//           nums1[index] = element
//       }
//   }

func mergeSort(_ inputArray: [Int]) -> [Int] {
    guard inputArray.count > 1 else {
        return inputArray
    }
    
    let middle = inputArray.count / 2
    let leftArray = Array(inputArray[0..<middle])
    let rightArray = Array(inputArray[middle...])
    
    return merge(mergeSort(leftArray), mergeSort(rightArray))
}

func merge(_ leftArray: [Int], _ rightArray: [Int]) -> [Int] {
    var mergedArray = [Int]()
    var leftIndex = 0
    var rightIndex = 0
    
    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        if leftArray[leftIndex] < rightArray[rightIndex] {
            mergedArray.append(leftArray[leftIndex])
            leftIndex += 1
        } else {
            mergedArray.append(rightArray[rightIndex])
            rightIndex += 1
        }
    }
    
    return mergedArray + Array(leftArray[leftIndex...]) + Array(rightArray[rightIndex...])
}

let sortedArray = mergeSort([4, 7, 9, 18, 2])
print("MERGE SORT: \(sortedArray)")


//
//
//func mergeSort(_ inputArray: [Int]) -> [Int]? {
//
//    var sortedArray = []
//
//    guard !inputArray.isEmpty else {
//        return []
//    }
//
//    guard inputArray.count == 1 else {
//        return inputArray
//    }
//
//    var arrayToSort = inputArray
//
//    var left = 0
//    var right = arrayToSort.count - 1
//
//    let midIndex = Int(arrayToSort.count/2)
//
//    let middleElement = arrayToSort[midIndex]
//    let leftElement = arrayToSort[left]
//    let rightElement = arrayToSort[midIndex - 1]
//
//
//
//    print("dddd")
//
//    return [merge(middleElement, rightElement)]
//}
//
////fileprivate func merge(_leftArray: [Int], _rightArray: [Int]) -> [Int]{
////
////    var mergedArray = [Int]()
////
////    var leftArrayToMerge = _leftArray
////    var rightArrayToMerge = _rightArray
////
////    for(i in 0..<leftArrayToMerge.count){
////        for(j in 1..<rightArrayToMerge.count-1){
////            if([leftArrayToMerge[i] < rightArrayToMerge[j]){
////                mergedArray.append(leftArrayToMerge[i])
////            }else if([leftArrayToMerge[i] > rightArrayToMerge[j]){
////                mergedArray.append(rightArrayToMerge[j])
////            }else{
////                //if its equal
////                mergedArray.append(rightArrayToMerge[i])
////            }
////        }
////    }
////
////
////
////    return mergedArray
////
////}
//
//                      fileprivate func merge(_ leftArray: [Int], _ rightArray: [Int]) -> [Int] {
//                          var mergedArray = [Int]()
//
//                          var leftArrayToMerge = leftArray
//                          var rightArrayToMerge = rightArray
//
//                          for i in 0..<leftArrayToMerge.count {
//                              for j in 1..<rightArrayToMerge.count - 1 {
//                                  if leftArrayToMerge[i] < rightArrayToMerge[j] {
//                                      mergedArray.append(leftArrayToMerge[i])
//                                  } else if leftArrayToMerge[i] > rightArrayToMerge[j] {
//                                      mergedArray.append(rightArrayToMerge[j])
//                                  } else {
//                                      // If the elements are equal, you can choose to append either array's element.
//                                      mergedArray.append(leftArrayToMerge[i])
//                                  }
//                              }
//                          }
//
//                          return mergedArray
//                      }
//
//
//
//
//print("MERGE SORT: \(mergeSortArray(inputArray: [4,7,9,18,2]))")
