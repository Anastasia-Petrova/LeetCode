//: [Previous](@previous)

/*:
* Callout(Task):
Given two integers x and y, calculate the Hamming distance (the Hamming distance between two integers is the number of positions at which the corresponding bits are different).

```
Input: x = 1, y = 4

Output: 2

Explanation:
1   (0 0 0 1)
4   (0 1 0 0)
```
*/

func hammingDistance(_ x: Int, _ y: Int) -> Int {
  var xoredBits = x ^ y
  var count = 0
  while xoredBits > 0 {
    if xoredBits % 2 != 0 {
      count += 1
    }
    xoredBits = xoredBits >> 1
  }
  return count
}

import XCTest
XCTAssertEqual(hammingDistance(1, 4), 2)
//: [Next](@next)
