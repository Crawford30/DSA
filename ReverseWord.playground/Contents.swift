import UIKit
//
//var greeting = "Hello, playground"

//
//  ReverseWordInSentence.swift
//
//
//  Created by Joel Crawford on 10/1/23.
//

//import Foundation

var s = "Let's take LeetCode contest"


    func reverseWords(_ s: String) -> String {
         let allWords = s.components(separatedBy: " ")
         var newSentence = ""

        for word in allWords {
             print(word)
             if(newSentence != ""){
              newSentence += " "
           }

           let reversedWord = reveresedWord(word)
             newSentence += reversedWord
        }
        return newSentence
    }

    func reveresedWord(_ string: String) -> String {
      var reversedWord =  ""
       for characters in string {
            reversedWord = "\(characters)" + reversedWord
        }
    //  print("REVERESED: \(reversedWord)")
      return reversedWord
    }


print(reverseWords(s))
