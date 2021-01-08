//: [Previous](@previous)

/*:
* Callout(Task):
Reverse bits of a given 32 bits unsigned integer.

```
Input: n = 00000010100101000001111010011100
 
Output:    964176192 (00111001011110000010100101000000)
 
Explanation: The input binary string 00000010100101000001111010011100 represents the unsigned integer 43261596, so return 964176192 which its binary representation is 00111001011110000010100101000000.
```
```
Input: n = 11111111111111111111111111111101
 
Output:   3221225471 (10111111111111111111111111111111)
 
Explanation: The input binary string 11111111111111111111111111111101 represents the unsigned integer 4294967293, so return 3221225471 which its binary representation is 10111111111111111111111111111111.
```
*/

func reverseBits(_ n: Int) -> Int {
  var initialNumber = n
  var result = 0
  var count = 32
  
  while count > 0 {
    result = result | initialNumber & 1
    initialNumber = initialNumber >> 1
    result = count == 1 ? result : result << 1
    count -= 1
  }
  return result
}

import XCTest
XCTAssertEqual(reverseBits(0b00000010100101000001111010011100), 964176192)
//: [Next](@next)
