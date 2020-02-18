//: [Previous](@previous)

/*:
 * Callout(Task):
 Given two arrays, write a function to compute their intersection.

 ```
 Input: nums1 = [1,2,2,1], nums2 = [2,2]
 Output: [2,2]
 ```
 ```
 Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 Output: [4,9]
 ```
 Note:

  Each element in the result should appear as many times as it shows in both arrays.
  The result can be in any order.
  
 Follow up:

  What if the given array is already sorted? How would you optimize your algorithm?
  What if nums1's size is small compared to nums2's size? Which algorithm is better?
  What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?
*/

func intersectSorted(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var i = 0
    var j = 0
    var resultArray: [Int] = []
    while i < nums1.count && j < nums2.count {
        if nums1[i] == nums2[j] {
            resultArray.append(nums1[i])
            i += 1
            j += 1
        } else if nums1[i] < nums2[j] {
            i += 1
        } else  if nums1[i] > nums2[j] {
            j += 1
        }
    }
    return resultArray
}

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var intersectArray: [Int] = []
    var intersectSet = Set<Int>()
    if nums1.count >= nums2.count {
        for firstNumber in nums2 {
            for secondIndex in 0..<nums1.count {
                if firstNumber == nums1[secondIndex] && !intersectSet.contains(secondIndex) {
                    intersectSet.insert(secondIndex)
                    break
                }
            }
            
        }
        for i in intersectSet {
            intersectArray.append(nums1[i])
        }
    } else {
        for firstNumber in nums1 {
            for secondNUmber in 0..<nums2.count {
                if firstNumber == nums2[secondNUmber] && !intersectSet.contains(secondNUmber) {
                    intersectSet.insert(secondNUmber)
                    break
                }
            }
        }
        for i in intersectSet {
            intersectArray.append(nums2[i])
        }
    }
    return intersectArray
}

import XCTest
var nums1 = [1,2,2,1]
var nums2 = [2,2]
XCTAssertEqual(intersect(nums1, nums2), [2,2])

//: [Next](@next)
