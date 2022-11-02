import Foundation

// 1- Palindrome. Verilen Stringin palindrome olup olmadığını kontrol eden bir fonksiyon yazınız.
// Palindromik Kelime, kelimenin tersten okunuşu yine aynı kelimeyi veriyor ise kelime Palindromik'dir. ( ama, kavak gibi )

func wordIsPalindrome(word: String) -> Bool {
    let reverseWord = String(word.reversed())
    return word == reverseWord ? true : false
}

wordIsPalindrome(word: "ama") // true
wordIsPalindrome(word: "amaç") // false


// 2- Verilen bir array içerisindeki her bir elemanın sayısını veren bir fonksiyon yazınız.

func numberOfEachElementInTheArray(arr: [AnyHashable]) {
    var numberOfElements = [AnyHashable:Int]()
    for item in arr {
        if numberOfElements[item] == nil {
            numberOfElements[item] = 1
        } else {
            numberOfElements[item]! += 1
        }
    }
    let numberOfElementList = numberOfElements.sorted(by: {$0.value < $1.value})
    for (key, value) in numberOfElementList {
        print("\(key): \(value)")
    }
}

numberOfEachElementInTheArray(arr: ["a",5,9,5,"ali",true,"ali","c","a"])

// 3- "*" Karakterinden piramit oluşturan fonksiyonu yazınız. Parametre olarak kaç katlı olacağı alınsın.
/* Parametre 3 ise çıktı aşağıdaki şekilde olmalı
     *
     **
     ***
 */

func pyramidFromStarCharacter(n: Int) {
    for i in 1...n {
        print("\(String(repeating: "*", count: i))")
    }
}

pyramidFromStarCharacter(n: 6)
