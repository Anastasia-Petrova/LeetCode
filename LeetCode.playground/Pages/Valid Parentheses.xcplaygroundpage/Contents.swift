//: [Previous](@previous)

/*:
* Callout(Task):
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

 - Open brackets must be closed by the same type of brackets.
 - Open brackets must be closed in the correct order.

```
Input: s = "()"
Output: true
```
```
Input: s = "()[]{}"
Output: true
```
```
Input: s = "(]"
Output: false
```
```
Input: s = "([)]"
Output: false
```
```
Input: s = "{[]}"
Output: true
```
*/

func isValid(_ s: String) -> Bool {
  guard s.count <= 10000 && s.count % 2 == 0 else { return false }
  var roundIndexes: [Int] = []
  var curlyIndexes: [Int] = []
  var squareIndexes: [Int] = []
  
  for (index, char) in s.enumerated() {
    switch String(char) {
    case "(":
      roundIndexes.append(index)
    case ")":
      guard let lastRoundIndex = roundIndexes.last else { return false }
      
      if let lastCurlyIndex = curlyIndexes.last, lastRoundIndex < lastCurlyIndex  {
          return false
      }
      if let squareIndex = squareIndexes.last, lastRoundIndex < squareIndex  {
          return false
      }
      roundIndexes.removeLast()
    case "{":
      curlyIndexes.append(index)
    case "}":
      guard let curlyIndex = curlyIndexes.last else { return false }
      
      if let roundIndex = roundIndexes.last, curlyIndex < roundIndex  {
          return false
      }
      if let squareIndex = squareIndexes.last, curlyIndex < squareIndex  {
          return false
      }
      curlyIndexes.removeLast()
    case "[":
      squareIndexes.append(index)
    case "]":
      guard let squareIndex = squareIndexes.last else { return false }
      
      if let roundIndex = roundIndexes.last, squareIndex < roundIndex  {
          return false
      }
      if let curlyIndex = curlyIndexes.last, squareIndex < curlyIndex  {
          return false
      }
      squareIndexes.removeLast()
    default: break
    }
  }
  
  return roundIndexes.isEmpty && curlyIndexes.isEmpty && squareIndexes.isEmpty
}

func isValid2(_ s: String) -> Bool {
  guard s.count <= 10000 && s.count % 2 == 0 else { return false }
  let a = "()"
  let b = "[]"
  let c = "{}"
  
  func compare(char1: Character, char2: Character) -> Bool {
    return String(char1) + String(char2) == a || String(char1) + String(char2) == b || String(char1) + String(char2) == c
  }
  
  func filterString(str: String) -> String {
    var temp = Array(str)
    var k = 0
    while k + 1 < temp.count {
      if compare(char1: Array(temp)[k], char2: Array(temp)[k + 1]) {
        temp.remove(at: k + 1)
        temp.remove(at: k)
        if k > 0 {
          k -= 1
        }
      } else {
        k += 1
      }
    }
    return String(temp)
  }
  
  return filterString(str: s).isEmpty
}

import XCTest
XCTAssertEqual(isValid("(([]){})"), true)
XCTAssertEqual(isValid("(((]){})"), false)
XCTAssertEqual(isValid2("(([]){})"), true)
XCTAssertEqual(isValid2("([)]"), false)
//: [Next](@next)
