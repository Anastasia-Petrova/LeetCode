//: [Previous](@previous)

/*:
 * Callout(Task):
 Implement atoi which converts a string to an integer.
 The function first discards as many whitespace characters as necessary until the first non-whitespace character is found. Then, starting from this character, takes an optional initial plus or minus sign followed by as many numerical digits as possible, and interprets them as a numerical value.
 The string can contain additional characters after those that form the integral number, which are ignored and have no effect on the behavior of this function.
 If the first sequence of non-whitespace characters in str is not a valid integral number, or if no such sequence exists because either str is empty or it contains only whitespace characters, no conversion is performed.
 If no valid conversion could be performed, a zero value is returned.
 
 Note:

 Only the space character ' ' is considered as whitespace character.
 Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. If the numerical value is out of the range of representable values, INT_MAX (231 − 1) or INT_MIN (−231) is returned.

 ```
 Input: "42"
 Output: 42
 ```
 ```
 Input: "   -42"
 Output: -42
 Explanation: The first non-whitespace character is '-', which is the minus sign. Then take as many numerical digits as possible, which gets 42.
 ```
 ```
 Input: "4193 with words"
 Output: 4193
 Explanation: Conversion stops at digit '3' as the next character is not a numerical digit.
 ```
 ```
 Input: "words and 987"
 Output: 0
 Explanation: The first non-whitespace character is 'w', which is not a numerical digit or a +/- sign. Therefore no valid conversion could be performed.
 ```
 ```
 Input: "-91283472332"
 Output: -2147483648
 Explanation: The number "-91283472332" is out of the range of a 32-bit signed integer. Thefore INT_MIN (−231) is returned.
 ```
*/

func myAtoi(_ str: String) -> Int {
    if str.isEmpty || str == "-" {
        return 0
    }
    let array = Array(str)
    var stringNumber = ""
    let setOfNumbers: Set<String.Element> = ["+", "0", "1", "2", "3", "4", "5", "6", "7" , "8", "9"]
    for index in 0..<array.count {
        if array[index] == "-" && setOfNumbers.contains(array[index + 1])  || setOfNumbers.contains(array[index]) {
            stringNumber.append(array[index])
            if stringNumber == "0" {
                stringNumber = ""
            } else if stringNumber == "-0"{
                stringNumber = "-"
            }
        }
        if !setOfNumbers.contains(array[index]) && array[index] != " " && array[index]  != "-"
            || array[index] == " " && !stringNumber.isEmpty
            || array[index]  == "-" && index + 1 < array.count && !setOfNumbers.contains(array[index + 1])
            || index + 1 < array.count && setOfNumbers.contains(array[index]) && array[index + 1] == "-"
            || index + 1 < array.count && setOfNumbers.contains(array[index]) && array[index + 1] == "+"
            || array[index] == "0" && index + 1 < array.count && !setOfNumbers.contains(array[index + 1]) {
            break
        }
    }
    if stringNumber.count > 11 && stringNumber.first == "-" {
        return Int(Int32.min)
    } else if stringNumber.count > 11 {
        return Int(Int32.max)
    }
    let finalNumber = Int(stringNumber) ?? 0
    if finalNumber > Int32.max {
        return Int(Int32.max)
    } else if finalNumber < Int32.min {
        return Int(Int32.min)
    }
    return finalNumber
}

import XCTest
let input = "   -42"
XCTAssertEqual(myAtoi(input), -42)

//: [Next](@next)
