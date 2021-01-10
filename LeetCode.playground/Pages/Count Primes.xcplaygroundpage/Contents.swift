//: [Previous](@previous)

/*:
* Callout(Task):
Count the number of prime numbers less than a non-negative number, n.

```
Input: n = 10
Output: 4
Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7.
```
```
Input: n = 0
Output: 0
```
```
Input: n = 1
Output: 0
```
*/

func countPrimes(_ n: Int) -> Int {
  guard n > 1 else { return 0 }
  var allNumbers = Array(2..<n)
  var numberOfPrimes = 0
  
  func replaceNumberAt(_ index: Int) {
    var k = index
    let step = allNumbers[index]
    while k < allNumbers.count {
      if allNumbers[k] != 1 {
        allNumbers[k] = 1
      }
      k = k + step
    }
  }
  
  for index in 0..<allNumbers.count {
    if allNumbers[index] != 1 {
      numberOfPrimes += 1
      replaceNumberAt(index)
    }
  }
  return numberOfPrimes
}

import XCTest
XCTAssertEqual(countPrimes(10), 4)
XCTAssertEqual(countPrimes(1), 0)
XCTAssertEqual(countPrimes(0), 0)
//: [Next](@next)
