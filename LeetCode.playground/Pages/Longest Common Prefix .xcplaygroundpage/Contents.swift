//: [Previous](@previous)

/*:
 * Callout(Task):
 Write a function to find the longest common prefix string amongst an array of strings.
 If there is no common prefix, return an empty string "".

 ```
 Input: ["flower","flow","flight"]
 Output: "fl"
 ```
 ```
 Input: ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
 ```
 Note:

 All given inputs are in lowercase letters a-z.
*/

func longestCommonPrefix(_ strs: [String]) -> String {
    _ = strs.min {$0.count < $1.count}
    guard strs.count > 0 else {
        return ""
    }
    
    var prefix = strs[0]
    for i in 1..<strs.count {
        while !strs[i].hasPrefix(prefix) {
            prefix = String(prefix.dropLast(1))
            if prefix.isEmpty {
                return ""
            }
        }
    }
    
    return prefix
}

import XCTest
let input = ["flower","flow","flight"]
XCTAssertEqual(longestCommonPrefix(input), "fl")
//: [Next](@next)
