import Foundation

// 1- Palindrome. Verilen Stringin palindrome olup olmadığını kontrol eden bir fonksiyon yazınız.
// Palindromik Kelime, kelimenin tersten okunuşu yine aynı kelimeyi veriyor ise kelime Palindromik'dir. ( ama, kavak gibi )

func wordIsPalindrome(word: String) -> Bool {
    let reverseWord = String(word.reversed())
    return word == reverseWord ? true : false
}

wordIsPalindrome(word: "ama") // true
wordIsPalindrome(word: "amaç") // false
