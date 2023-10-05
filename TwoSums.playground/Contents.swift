//import UIKit
//
//
//
////    let input = [2,7,11,15,5,3], target = 20 output [3,4]
//
//    func twoSum(inputArray: [Int], targetNumber: Int) -> [Int]{
//
//        let givenArray = inputArray
//        var arrayOutput: [Int] = []
//
//        guard !inputArray.isEmpty else {
//            return []
//        }
//
//        if(inputArray.count == 2){
//            if(inputArray[0] + inputArray[1] == targetNumber){
//                for (index, value) in inputArray.enumerated() {
//                    arrayOutput.append(index)
//
//                }
//                return arrayOutput
//            }
//        }else{
//
//            for (index, value) in inputArray.enumerated() {
//
//                print("Index: \(index)  - Number: \(value)")
//
//                if(getSum(numberOne: inputArray[index], numberTwo: inputArray[index + 1]) == targetNumber){
//                    arrayOutput.append(index)
//                }
//
//            }
//
//            return arrayOutput
//
//        }
//
//        return []
//
//    }
//
//
//    func getSum(numberOne:Int, numberTwo: Int) ->Int {
//
//        let totalSum = Int(numberOne + numberTwo)
//
//        print("SUM: \(totalSum)")
//
//        return totalSum
//
//    }
//
//
//
//let input = [2,7,11,15,5,3]
//
//print(twoSum(inputArray: input, targetNumber: 20))
//
//


import UIKit

func twoSum(inputArray: [Int], targetNumber: Int) -> [Int] {
    var dictNumIndices = [Int: Int]() // Dictionary to store the numbers and their indices

    for (index, value) in inputArray.enumerated() {
        
        //20-7=13
        let complement = targetNumber - value

        // Check if the complement exists in the dictionary
        if let complementIndex = dictNumIndices[complement] {
            return [complementIndex, index]
        }

        // Add the current number and its index to the dictionary
        dictNumIndices[value] = index
    }

    return [] // If no solution is found
}

let input = [2, 7, 11, 15, 5, 3]
let target = 20
let result = twoSum(inputArray: input, targetNumber: target)

if result.isEmpty {
    print("No valid indices found.")
} else {
    print("Indices: \(result)")
}


//func twoSum(inputArray: [Int], targetNumber: Int) -> [Int] {
//    let n = inputArray.count
//
//    for i in 0..<n {
//        for j in (i + 1)..<n {
//            if inputArray[i] + inputArray[j] == targetNumber {
//                return [i, j]
//            }
//        }
//    }
//
//    return [] // If no solution is found
//}
