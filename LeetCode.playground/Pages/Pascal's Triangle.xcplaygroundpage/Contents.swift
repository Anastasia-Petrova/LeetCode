//: [Previous](@previous)

/*:
* Callout(Task):
Given a non-negative integer numRows, generate the first numRows of Pascal's triangle (In Pascal's triangle, each number is the sum of the two numbers directly above it.)

```
Input: 5
Output:
[
     [1],
    [1,1],
   [1,2,1],
  [1,3,3,1],
 [1,4,6,4,1]
]
```
*/

func generate(_ numRows: Int) -> [[Int]] {
  var result: [[Int]] = []
  var temp: [Int] = []
  guard numRows > 0 else { return result }
  for index in 1...numRows {
    var k = index
    while k > 0 {
      if k > 1 && k < index {
        let number = result[index - 2][k - 2] + result[index - 2][k - 1]
        temp.append(number)
      } else {
        temp.append(1)
      }
      k -= 1
    }
    result.append(temp)
    temp = []
  }
  return result
}

import XCTest
XCTAssertEqual(generate(5), [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]])

//: [Next](@next)
