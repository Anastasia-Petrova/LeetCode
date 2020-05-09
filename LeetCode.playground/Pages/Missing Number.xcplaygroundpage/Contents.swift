//: [Previous](@previous)

/*:
* Callout(Task):
Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.

```
Input: [3,0,1]
Output: 2
```
```
Input: [9,6,4,2,3,5,7,0,1]
Output: 8
```
*/

func missingNumber(_ nums: [Int]) -> Int {
  let set = Set(nums)
  var result = 0
  for n in 0...set.count {
    if !set.contains(n) {
      result = n
    }
  }
  return result
}

func missingNumber2(_ nums: [Int]) -> Int {
  let n = nums.count
  let expectedSum = n * (n + 1) / 2
  let actualSum = nums.reduce(0, +)
  return expectedSum - actualSum
}

func missingNumber3(_ nums: [Int]) -> Int {
  let count = nums.count
  let set = Set(0...count)
  let numsSet = Set(nums)
  let result = set.subtracting(numsSet)
  
  return result.first!
}

import XCTest
XCTAssertEqual(missingNumber([9,6,4,2,3,5,7,0,1]), 8)
XCTAssertEqual(missingNumber([9,6,4,8,3,5,7,0,1]), 2)
//: [Next](@next)
