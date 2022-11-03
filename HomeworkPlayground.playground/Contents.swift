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

// 4- Yazdığınız piramit fonksiyonun çıktısını ortalı olacak şekilde yazınız.

func pyramidFromStarLikeTriangle(num: Int) {
    for i in 0..<num {
       for _ in 0...num-i-1 {
          print(terminator: " ")
       }
       for _ in 1...i+1 {
          print("*", terminator: " ")
       }
       print("")
    }
}

pyramidFromStarLikeTriangle(num: 6)

// 5- https://projecteuler.net/archives ilk 3 soruyu çözünüz.

// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
// 1. Find the sum of all the multiples of 3 or 5 below 1000.

var total = 0
for i in 1..<1000 {
    if i % 3 == 0 || i % 5 == 0 {
        total += i
    }
}
print(total)

// Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
// 2. By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

func fibonacciSequence(n: Int) {
    var arr:[Int] = []
    for i in 1...n {
        if arr.count < 2 {
            arr.append(i)
        } else {
            arr.append(arr.suffix(2).reduce(0, +))
        }
    }
    print(arr)
}

fibonacciSequence(n: 20)

// The prime factors of 13195 are 5, 7, 13 and 29.
// 3. What is the largest prime factor of the number 600851475143 ?

func findLargestPrimeFactor(number: Int) -> Int {
    var mutableNumber = number
    var factors: [Int] = []
    for i in 2...Int(sqrt(Double(mutableNumber))) {
        while mutableNumber % i == 0 {
            mutableNumber /= i
            factors.append(i)
        }
    }

    if mutableNumber != 1 {
        factors.append(mutableNumber)
    }
    print("factors= \(factors)") // number prime factors
    return factors.max()!
}

print("largest prime factor = \(findLargestPrimeFactor(number: 600851475143))")


