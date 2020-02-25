//: [Previous](@previous)

/*:
 * Callout(Task):
 The count-and-say sequence is the sequence of integers with the first five terms as following: 1, 11, 21, 1211, 111221. 1 is read off as "one 1" or 11. 11 is read off as "two 1s" or 21. 21 is read off as "one 2, then one 1" or 1211.
 Given an integer n where 1 ≤ n ≤ 30, generate the nth term of the count-and-say sequence. You can do so recursively, in other words from the previous member read off the digits, counting the number of digits in groups of the same digit.

 Note: Each term of the sequence of integers will be represented as a string.

 ```
 Input: 1
 Output: "1"
 Explanation: This is the base case.
 ```
 ```
 Input: 4
 Output: "1211"
 Explanation: For n = 3 the term was "21" in which we have two groups "2" and "1", "2" can be read as "12" which means frequency = 1 and value = 2, the same way "1" is read as "11", so the answer is the concatenation of "12" and "11" which is "1211".
 ```
*/

func countAndSay(_ n: Int) -> String {
    func rec(_ n: Int) -> String {
        guard n > 0 else {
            return ""
        }
        if n == 1 {
            return "\(n)"
        } else {
            let countString = countAndSay(n - 1)
            var result: String = ""
            var previousChar: Character?
            var count = 1
            var index = 0
            for char in countString {
                if let prevChar = previousChar {
                    if prevChar == char {
                        count += 1
                    } else {
                        result += "\(count)\(prevChar)"
                        count = 1
                    }
                }
                previousChar = char
                if index == countString.count - 1 {
                    result += "\(count)\(char)"
                }
                index += 1
            }
            return result
        }
    }
    return rec(n)
}

import XCTest
let input = 4
XCTAssertEqual(countAndSay(input), "1211")
//: [Next](@next)
