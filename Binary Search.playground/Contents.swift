import UIKit

var dataArray: [Int] = [1,7,8,5,20,39,4]

func binarySearch(inputArray:[Int], searcTerm: Int) -> Int? {
    
    //check if the array is not empty
    guard  !inputArray.isEmpty else  { return nil }
    
    //If the array has ONLY one element, dont go in the proceed loop
    if(inputArray.count == 1){
        return inputArray[0] == searcTerm ? inputArray[0] : nil
    }
    
    var lowerIndex = 0
    var upperIndex = inputArray.count - 1
    
    var currentIndex = Int((lowerIndex + upperIndex)/2)
    var midElement = inputArray[currentIndex]

    if(midElement == searcTerm){
        return midElement //this is the search value
        
    }else if(lowerIndex > upperIndex){
        //===No search can't be performed
        return nil
    }else{
        if(inputArray[currentIndex] < searcTerm){
            lowerIndex = currentIndex + 1
        }else{
            upperIndex = currentIndex - 1
        }
    }
    
    return midElement
}

print("FOUND DATA: \(binarySearch(inputArray: dataArray, searcTerm:  3))")
