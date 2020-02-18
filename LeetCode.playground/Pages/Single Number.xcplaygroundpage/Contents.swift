//: [Previous](@previous)

/*:
* Callout(Task):
Given a non-empty array of integers, every element appears twice except for one. Find that single one.
 
Note:

Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

```
 Input: [2,2,1]
 Output: 1
```
```
Input: [4,1,2,1,2]
Output: 4
```
*/

func singleNumber(_ nums: [Int]) -> Int {
    let allNumsSum = nums.reduce(0, +)
    let uniqueSet = Set<Int>(nums)
    let uniqueSetSum = uniqueSet.reduce(0, +)
    return 2 * uniqueSetSum - allNumsSum
}

import XCTest
var input = [4,1,2,1,2]
XCTAssertEqual(singleNumber(input), 4)

//: [Next](@next)
