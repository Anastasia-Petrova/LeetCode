//: [Previous](@previous)

/*:
 * Callout(Task):
 Given a 32-bit signed integer, reverse digits of an integer.

 ```
 Input: 123
 Output: 321
 ```
 ```
 Input: -123
 Output: -321
 ```
 ```
 Input: 120
 Output: 21
 ```
 Note:
 Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
*/

func reverse(_ x: Int) -> Int {
    let int32Max = Int(pow(2.0, 32.0))
    let int32Bound = int32Max/2
    guard x > -int32Bound && x < int32Bound else { return 0 }
    
    let intString = String(x)
    if intString.first == "-" {
        let positiveStringNumber = intString.dropFirst()
        let reversedString = String(positiveStringNumber.reversed())
        let intFromString = Int(reversedString)
        if let intFromString = intFromString {
            guard intFromString > -int32Bound && intFromString < int32Bound  else { return 0 }
            return intFromString * -1
        }
    } else {
        let reversedString = String(intString.reversed())
        if let intFromString = Int(reversedString) {
            guard intFromString > -int32Bound && intFromString < int32Bound  else { return 0 }
            return intFromString
        }
    }

    return 0
}

import XCTest
var input = 123
XCTAssertEqual(reverse(input), 321)

//: [Next](@next)
