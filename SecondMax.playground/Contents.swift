//import UIKit
//
////let input = [2, 7, 11, 15, 5, 3]
//
//func findSecondMax(inputArray: [Int]) -> Int{
//
//    //    var max: Int
//    var sortedArray: [Int] = []
//
//    guard !inputArray.isEmpty else {
//        return -1
//    }
//
//    if(inputArray.count == 1){
//        return inputArray[0]
//    }
//
//
//    for i in 0..<inputArray.count {
//
//        for j in (i + 1)..<inputArray.count{
//            if(inputArray[i] > inputArray[j] ){
//                print(inputArray[i] > inputArray[j])
//                sortedArray.append(inputArray[i])
//            }
//
//
//            return sortedArray[1]
//
//        }
//
//    }
//
//    return -1
//}
//
//let input = [2, 7, 11, 15, 5, 3]
//
//
//    print(findSecondMax(inputArray: input))
func bubbleSort(_ array: inout [Int]) {
    let n = array.count
    var swapped = false
    
    repeat {
        swapped = false
        for i in 0..<n - 1 {
            if array[i] > array[i + 1] {
                array.swapAt(i, i + 1)
                swapped = true
            }
        }
    } while swapped
}

var inputArray = [2, 7, 11, 15, 5, 3]
bubbleSort(&inputArray)

print(inputArray[inputArray.count - 2]) // Sorted array
