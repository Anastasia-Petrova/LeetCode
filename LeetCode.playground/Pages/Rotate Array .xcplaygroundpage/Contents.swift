/*:
* Callout(Task):
Given an array, rotate the array to the right by k steps, where k is non-negative.

```
Input: [1,2,3,4,5,6,7] and k = 3
Output: [5,6,7,1,2,3,4]
Explanation:
rotate 1 steps to the right: [7,1,2,3,4,5,6]
rotate 2 steps to the right: [6,7,1,2,3,4,5]
rotate 3 steps to the right: [5,6,7,1,2,3,4]
```
```
Input: [-1,-100,3,99] and k = 2
Output: [3,99,-1,-100]
Explanation:
rotate 1 steps to the right: [99,-1,-100,3]
rotate 2 steps to the right: [3,99,-1,-100]
```
*/

func replaceXor(array: inout [Int], firstIndex : Int, secondIndex: Int) {
    array[firstIndex] = array[firstIndex] ^ array[secondIndex]
    array[secondIndex] = array[firstIndex] ^ array[secondIndex]
    array[firstIndex] = array[firstIndex] ^ array[secondIndex]
}

func rotate(_ nums: inout [Int], _ k: Int) {
    guard !nums.isEmpty else {
        return
    }
    for _ in 0..<k {
        for i in 0..<nums.count - 1 {
            let firstIndex = nums.count - 1 - i
            let secondIndex = firstIndex - 1
            replaceXor(array: &nums, firstIndex: firstIndex, secondIndex: secondIndex)
        }
    }
}

import XCTest
var input = [1,2,3,4,5,6,7]
var k = 3
rotate(&input, k)
XCTAssertEqual(input, [5,6,7,1,2,3,4])


