//: [Previous](@previous)

/*:
 * Callout(Task):
 Write a function that reverses a string. The input string is given as an array of characters char[].
 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
 You may assume all the characters consist of printable ascii characters.
 ```
 Input: ["h","e","l","l","o"]
 Output: ["o","l","l","e","h"]
 ```
 ```
 Input: ["H","a","n","n","a","h"]
 Output: ["h","a","n","n","a","H"]
 ```
*/

func reverseString(_ s: inout [Character]) {
    guard !s.isEmpty else { return }
    
    for index in 0..<s.count {
        if index < s.count - index - 1 {
            if s[index] != s[s.count - index - 1] {
                let temp = s[s.count - index - 1]
                s[s.count - index - 1] = s[index]
                s[index] = temp
            }
        } else {
            break
        }
    }
}

import XCTest
var input: [Character] = ["h","e","l","l","o"]
reverseString(&input)
XCTAssertEqual(input, ["o","l","l","e","h"])

//: [Next](@next)
