//: [Previous](@previous)

/*:
 * Callout(Task):
 Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
 
 Note: For the purpose of this problem, we define empty string as valid palindrome.

 ```
 Input: "A man, a plan, a canal: Panama"
 Output: true
 ```
 ```
 Input: "race a car"
 Output: false
 ```
*/

import Foundation

func isPalindrome(_ s: String) -> Bool {
    if s.isEmpty {
        return true
    }
    let alphanumericString = s.components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased()
    let reversedString = String(alphanumericString.reversed())
    return alphanumericString == reversedString
}

import XCTest
let input = "A man, a plan, a canal: Panama"
XCTAssertEqual(isPalindrome(input), true)

//: [Next](@next)
