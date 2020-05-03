//: [Previous](@previous)

/*:
 * Callout(Task):
 Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.
 *
 Note:
 * The number of elements initialized in nums1 and nums2 are m and n respectively.
 * You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2.

 ```
 nums1 = [1,2,3,0,0,0], m = 3
 nums2 = [2,5,6],       n = 3
 Output: [1,2,2,3,5,6]
 ```
*/

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    if nums1.count > m {
        let prefix = nums1.prefix(m)
        let twoNums = prefix + nums2
        nums1 = twoNums.sorted()
    } else {
        let twoNums = nums1 + nums2
        nums1 = twoNums.sorted()
    }
}

import XCTest
var firstArray = [1,2,3,0,0,0]
let m = 3
let secondArray = [2,5,6]
let n = 3

merge(&firstArray, m, secondArray, n)
XCTAssertEqual(firstArray, [1,2,2,3,5,6])

//: [Next](@next)
