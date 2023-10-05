import UIKit


//func findPallinDromes(sentence: String) -> Int {
//    return sentence.split{$0==" "}.map(String.init).filter{String($0) == String(String($0).reversed())}.count
//}



func allPalindromes(sentence: String) -> [String: Int] {
    var counts = [String:Int]()
    
    let words = sentence.components(separatedBy: " ")
    
    words.forEach { word in
        if isPalindrome(word: word.lowercased()) {
            let count =  counts[word] ?? 0
            counts[word] = count + 1
            
        }
    }
    return counts
}


fileprivate func isPalindrome(word: String) -> Bool {
    
    let characters = Array(word)
    
    var currentIndex = 0
    var midPointIndex = Int(characters.count / 2)
    
    while currentIndex < midPointIndex {
        
        //Check if charcters are equal
        if(characters[currentIndex] != characters[characters.count - currentIndex - 1]){
            return false
        }
        currentIndex += 1
    }
    
    return true
    
}

let sentence = "madam anna kayak notpalindrome anna"

print(allPalindromes(sentence: sentence))

//print(findPallinDromes(sentence: sentence))


