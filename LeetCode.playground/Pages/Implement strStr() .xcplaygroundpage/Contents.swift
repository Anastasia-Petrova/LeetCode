//: [Previous](@previous)

/*:
 * Callout(Task):
 Implement strStr().
 Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

 ```
 Input: haystack = "hello", needle = "ll"
 Output: 2
 ```
 ```
 Input: haystack = "aaaaa", needle = "bba"
 Output: -1
 ```
 Clarification:

 What should we return when needle is an empty string? This is a great question to ask during an interview.

 For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().
*/

func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.isEmpty {
        return 0
    }
    if haystack == needle {
        return 0
    }
    let array1 = Array(haystack)
    let array2 = Array(needle)
    let array2Count = array2.count - 1
    var lastIndex = 0
    var tempString = ""
    for index in 0..<array1.count {
        lastIndex = index + array2Count
        if array1[index] == array2[0] && lastIndex < array1.count {
            for i in index...lastIndex {
                tempString.append(array1[i])
                if tempString == needle {
                    return index
                }
            }
            tempString = ""
        }
    }
    return -1
}

import XCTest
let input = "hello"
let needle = "ll"
XCTAssertEqual(strStr(input, needle), 2)

//: [Next](@next)
