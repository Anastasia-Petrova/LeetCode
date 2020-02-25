//: [Previous](@previous)

/*:
 * Callout(Task):
 Given two strings s and t , write a function to determine if t is an anagram of s.

 ```
 Input: s = "anagram", t = "nagaram"
 Output: true
 ```
 ```
 Input: s = "rat", t = "car"
 Output: false
 ```
 Note:
 You may assume the string contains only lowercase alphabets.

 Follow up:
 What if the inputs contain unicode characters? How would you adapt your solution to such case?
*/

func isAnagram(_ s: String, _ t: String) -> Bool {
    return s.sorted() == t.sorted()
}

import XCTest
let string1 = "anagram"
let string2 = "nagaram"
XCTAssertEqual(isAnagram(string1, string2), true)
//: [Next](@next)
