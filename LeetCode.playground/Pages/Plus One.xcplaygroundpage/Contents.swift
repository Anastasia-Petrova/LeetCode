//: [Previous](@previous)
/*:
 * Callout(Task):
 Given a non-empty array of digits representing a non-negative integer, plus one to the integer.
 The digits are stored such that the most significant digit is at the head of the list, and each element in the array contain a single digit.
 You may assume the integer does not contain any leading zero, except the number 0 itself.


 ```
 Input: [1,2,3]
 Output: [1,2,4]
 Explanation: The array represents the integer 123.
 ```
 ```
 Input: [4,3,2,1]
 Output: [4,3,2,2]
 Explanation: The array represents the integer 4321.
 ```
*/

func plusOne(_ digits: [Int]) -> [Int] {
    var resultArray = digits
    var k = resultArray.count - 2
    let lastElement = resultArray[resultArray.count - 1] + 1
    if resultArray.count == 1 && lastElement == 10 {
        resultArray.insert(1, at: 0)
        resultArray[resultArray.count - 1] = 0
    } else if lastElement == 10 {
        resultArray[resultArray.count - 1] = 0
        resultArray[k] += 1
        if k == 0 && resultArray[k] == 10 {
            resultArray[k] = 0
            resultArray.insert(1, at: 0)
        }
        while k > 0 && resultArray[k] == 10  {
            resultArray[k] = 0
            resultArray[k - 1] += 1
            if k - 1 == 0 && resultArray[k - 1] == 10 {
                resultArray.insert(1, at: 0)
                resultArray[k] = 0
            }
            k -= 1
        }
    } else {
        resultArray[resultArray.count - 1] = lastElement
    }
    return resultArray
}

import XCTest
var digits = [1, 2, 3]
XCTAssertEqual(plusOne(digits), [1, 2, 4])

//: [Next](@next)
