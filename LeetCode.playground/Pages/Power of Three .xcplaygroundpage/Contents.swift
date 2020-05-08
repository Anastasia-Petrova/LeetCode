//: [Previous](@previous)

/*:
 * Callout(Task):
 Given an integer, write a function to determine if it is a power of three.

 ```
 Input: 27
 Output: true
 ```
 ```
 Input: 0
 Output: false
 ```
 ```
 Input: 9
 Output: true
 ```
 ```
 Input: 45
 Output: false
 ```
 */

func isPowerOfThree(_ n: Int) -> Bool {
  if n == 1 {
    return true
  }
  guard n != 0 && n % 3 == 0 else { return false }
  var k = 3
  
  while k < n {
    k *= 3
  }
  
  if k == n {
    return true
  } else {
    return false
  }
}

import XCTest

XCTAssertTrue(isPowerOfThree(9))
XCTAssertFalse(isPowerOfThree(45))

//: [Next](@next)
