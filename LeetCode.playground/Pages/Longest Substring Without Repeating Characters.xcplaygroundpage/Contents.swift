//: [Previous](@previous)

/*:
* Callout(Task):
Given a string s, find the length of the longest substring without repeating characters.

```
Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
```
```
Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
```
```
Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
```
*/

func lengthOfLongestSubstring(_ s: String) -> Int {
  let array = Array(s)
  var dict: [Character : Int] = [:]
  var lenghts = Set<Int>()
  for index in 0..<s.count {
    if let oldIndex = dict[array[index]] {
      lenghts.insert(dict.count)
      dict = dict.filter { $0.value > oldIndex }
      dict[array[index]] = index
    } else {
      dict[array[index]] = index
    }
    lenghts.insert(dict.count)
  }
  return lenghts.max() ?? 0
}

import XCTest
XCTAssertEqual(lengthOfLongestSubstring("pwwkew"), 3)
XCTAssertEqual(lengthOfLongestSubstring("anviaj"),5)
//: [Next](@next)
