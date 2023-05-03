import UIKit

func quickSort(inputArray: [Int]) -> [Int?] {
    
    guard inputArray.count > 1 else{
        return inputArray
    }
    
    guard !inputArray.isEmpty  else{
        return []
    }
    
      let pivot = inputArray[inputArray.count/2]
      let less = inputArray.filter { $0 < pivot }
      let equal = inputArray.filter { $0 == pivot }
      let greater = inputArray.filter { $0 > pivot }
    
    print("Less: \(less)")
    print("Equal: \(equal)")
    print("Greater: \(greater)")

    return quickSort(inputArray: less) + equal + quickSort(inputArray: greater)
        
}


print("QUICK SORT: \(quickSort(inputArray: [4,7,9,18,2,19,30]))")
