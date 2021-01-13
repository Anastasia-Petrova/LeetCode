//: [Previous](@previous)

/*:
* Callout(Task):
Given an array of strings strs, group the anagrams together. You can return the answer in any order.

```
Input: strs = ["eat","tea","tan","ate","nat","bat"]
Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
```
```
Input: strs = [""]
Output: [[""]]
```
```
Input: strs = ["a"]
Output: [["a"]]
```
*/

func groupAnagrams(_ strs: [String]) -> [[String]] {
  var tempResult: [String : [String]] = [:]
  for word in strs {
    let sortedWord = String(word.sorted())
    tempResult[sortedWord] = (tempResult[sortedWord] ?? []) + [word]
  }
  
  return tempResult.map { $0.value }
}

import XCTest
XCTAssertEqual(groupAnagrams([""]), [[""]])
XCTAssertEqual(groupAnagrams(["a"]), [["a"]])

//: [Next](@next)
