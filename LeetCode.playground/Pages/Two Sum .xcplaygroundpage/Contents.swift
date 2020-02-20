//: [Previous](@previous)

/*:
 * Callout(Task):
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 ```
 Given nums = [2, 7, 11, 15], target = 9,
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 ```
*/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result: [Int] = []
    for number in 0..<nums.count {
        for secondNumber in (number + 1)..<nums.count {
            if nums[number] + nums[secondNumber] == target {
                result.append(number)
                result.append(secondNumber)
                break
            }
        }
    }
    return result
}

import XCTest
let numbers = [2, 7, 11, 15]
let target = 9
XCTAssertEqual(twoSum(numbers, target), [0, 1])

//: [Next](@next)
