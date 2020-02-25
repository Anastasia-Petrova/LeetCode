//: [Previous](@previous)

/*:
 * Callout(Task):
 You are given an n x n 2D matrix representing an image.
 Rotate the image by 90 degrees (clockwise).

 Note:

 You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.
 ```
 Given input matrix =
 [
   [1,2,3],
   [4,5,6],
   [7,8,9]
 ],

 rotate the input matrix in-place such that it becomes:
 [
   [7,4,1],
   [8,5,2],
   [9,6,3]
 ]
 ```
 ```
 Given input matrix =
 [
   [ 5, 1, 9,11],
   [ 2, 4, 8,10],
   [13, 3, 6, 7],
   [15,14,12,16]
 ],

 rotate the input matrix in-place such that it becomes:
 [
   [15,13, 2, 5],
   [14, 3, 4, 1],
   [12, 6, 8, 9],
   [16, 7,10,11]
 ]
 ```
*/

func rotate(_ matrix: inout [[Int]]) {
    let numbersCount = matrix.count
    var temp: [Int] = []
    var k = 0
    for raw in 0..<numbersCount {
        while k < numbersCount {
            temp.insert(matrix[k][raw], at: 0)
            k += 1
        }
        k = 0
        matrix.insert(temp, at: matrix.count)
        temp.removeAll()
    }
    while k < numbersCount {
        matrix.remove(at: 0)
        k += 1
    }
}

import XCTest
var input = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
rotate(&input)
XCTAssertEqual(input, [[7,4,1],[8,5,2],[9,6,3]])

//: [Next](@next)
