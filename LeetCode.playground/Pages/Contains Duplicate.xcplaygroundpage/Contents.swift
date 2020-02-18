//: [Previous](@previous)

/*:
 * Callout(Task):
 Given an array of integers, find if the array contains any duplicates.
 Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

 ```
 Input: [1,2,3,1]
 Output: true
 ```
 ```
 Input: [1,2,3,4]
 Output: false
 ```
 ```
 Input: [1,1,1,3,3,4,3,2,4,2]
 Output: true
 ```
*/

func containsDuplicate(_ nums: [Int]) -> Bool {
    guard !nums.isEmpty else { return false }
    var numsSet = Set<Int>()
    for number in 0..<nums.count {
        if !numsSet.contains(nums[number]) {
            numsSet.insert(nums[number])
        } else {
            return true
        }
    }
    return false
}

import XCTest
var input = [1,1,1,3,3,4,3,2,4,2]
XCTAssertEqual(containsDuplicate(input), true)

//: [Next](@next)
