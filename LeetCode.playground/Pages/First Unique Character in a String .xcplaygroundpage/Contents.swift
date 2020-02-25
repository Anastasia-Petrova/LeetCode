//: [Previous](@previous)

/*:
 * Callout(Task):
 Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.

 ```
 s = "leetcode"
 return 0.
 ```
 ```
 s = "loveleetcode",
 return 2.
 ```
 Note: You may assume the string contain only lowercase letters.
*/

func firstUniqChar(_ s: String) -> Int {
  var n = 0
    var repeatsArray: Set<String.Element> = []
    for character in s {
      if !repeatsArray.contains(character) {
        let newArray = s.filter { $0 == character }
        if newArray.count == 1 {
          return n
        } else {
          repeatsArray.insert(character)
        }
      }
      n += 1
    }
  return -1
}

import XCTest
var input = "leetcode"
XCTAssertEqual(firstUniqChar(input), 0)

//: [Next](@next)
