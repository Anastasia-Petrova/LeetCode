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

func isAnagram2(_ s: String, _ t: String) -> Bool {
  guard s.count == t.count else { return false }
  var temp = t
  for char in s {
    guard let index = temp.firstIndex(of: char) else { return false }
    temp.remove(at: index)
  }
  return  true
}

import XCTest
XCTAssertEqual(isAnagram("anagram", "nagaram"), true)
XCTAssertEqual(isAnagram("car", "rat"), false)
XCTAssertEqual(isAnagram2("anagram", "nagaram"), true)
XCTAssertEqual(isAnagram2("car", "rat"), false)
//: [Next](@next)
