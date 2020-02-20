//: [Previous](@previous)

/*:
 * Callout(Task):
 Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 ```
 Input: [0,1,0,3,12]
 Output: [1,3,12,0,0]
 ```
 Note:

 You must do this in-place without making a copy of the array.
 Minimize the total number of operations.
*/

func moveZeroes(_ nums: inout [Int]) {
    guard !nums.isEmpty && nums.contains(0) && nums.count > 1 else { return }
    var k = 0
    var zeroIndeces: [Int] = []
    for number in 0..<nums.count {
            if nums[number] == 0 {
                zeroIndeces.insert(number, at: 0)
                k += 1
            }
    }
    if zeroIndeces.count < nums.count {
        for index in zeroIndeces {
            nums.remove(at: index)
        }
        while k > 0 {
            nums.insert(0, at: nums.count)
            k -= 1
        }
    }
}

import XCTest
var numbers = [0,1,0,3,12]
moveZeroes(&numbers)
XCTAssertEqual(numbers, [1,3,12,0,0])
//: [Next](@next)
