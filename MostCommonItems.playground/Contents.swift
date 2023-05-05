import UIKit

let colorArray = ["red", "green", "red", "red","red","red","red","green","green", "yellow", "black"]

func getMostCommonColor(array: [String]) -> [String?] {
    var topColors: [String] = []
    var colorDictionary: [String: Int] = [:]
    
    for color in array {
        if let count  = colorDictionary[color]{
            colorDictionary[color] = count + 1
        }else{
            //No count
            colorDictionary[color] =  1
        }
        
        //iterate over dictionary
        let highestValue = colorDictionary.values.max()
        
        for (color, count) in colorDictionary {
            
            if(colorDictionary[color] == highestValue){
                topColors.append(color)
            }
        }
    }
    
    return topColors
    
}

getMostCommonColor(array: colorArray)
