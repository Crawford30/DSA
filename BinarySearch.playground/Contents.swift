import UIKit

let array = [1,3,4,5,13,22,31,72]

func binarySearch(_ inputArray: [Int], searchTeam: Int) -> Int? {
    
    guard !inputArray.isEmpty else { return nil}
    
    if(inputArray.count == 1){
        return inputArray[0] == searchTeam ? inputArray[0] : nil
    }
    
    var lowerIndex = 0
    var upperIndex = inputArray.count - 1
    
    var middleIndex = Int((lowerIndex + upperIndex)/2)
    
    var middleElement = inputArray[middleIndex]
    
    if(middleElement == searchTeam){
        return middleIndex
    }else if(lowerIndex > upperIndex){
        //no search can be found
        return nil
    }else{
        if(middleElement > searchTeam){
            //==
            upperIndex = middleIndex - 1
        }else{
            lowerIndex = middleIndex + 1
        }
    }
    return nil
        
}

print("FOUND DATA: \(binarySearch(array, searchTeam:  5) ?? -1)")
