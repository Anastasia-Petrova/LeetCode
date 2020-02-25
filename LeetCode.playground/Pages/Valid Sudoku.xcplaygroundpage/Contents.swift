//: [Previous](@previous)

/*:
 * Callout(Task):
 Determine if a 9x9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:
 Each row must contain the digits 1-9 without repetition.
 Each column must contain the digits 1-9 without repetition.
 Each of the 9 3x3 sub-boxes of the grid must contain the digits 1-9 without repetition.
 The Sudoku board could be partially filled, where empty cells are filled with the character '.'.

 ```
 Input:
 [
   ["5","3",".",".","7",".",".",".","."],
   ["6",".",".","1","9","5",".",".","."],
   [".","9","8",".",".",".",".","6","."],
   ["8",".",".",".","6",".",".",".","3"],
   ["4",".",".","8",".","3",".",".","1"],
   ["7",".",".",".","2",".",".",".","6"],
   [".","6",".",".",".",".","2","8","."],
   [".",".",".","4","1","9",".",".","5"],
   [".",".",".",".","8",".",".","7","9"]
 ]
 Output: true
 ```
 ```
 Input:
 [
   ["8","3",".",".","7",".",".",".","."],
   ["6",".",".","1","9","5",".",".","."],
   [".","9","8",".",".",".",".","6","."],
   ["8",".",".",".","6",".",".",".","3"],
   ["4",".",".","8",".","3",".",".","1"],
   ["7",".",".",".","2",".",".",".","6"],
   [".","6",".",".",".",".","2","8","."],
   [".",".",".","4","1","9",".",".","5"],
   [".",".",".",".","8",".",".","7","9"]
 ]
 Output: false
 Explanation: Same as Example 1, except with the 5 in the top left corner being modified to 8. Since there are two 8's in the top left 3x3 sub-box, it is invalid.
 ```
 Note:

 A Sudoku board (partially filled) could be valid but is not necessarily solvable.
 Only the filled cells need to be validated according to the mentioned rules.
 The given board contain only digits 1-9 and the character '.'.
 The given board size is always 9x9.
*/

func isValidSudoku(_ board: [[Character]]) -> Bool {
   
   var tempSet = Set<Character>()
   var k = 0
   let numberOfFields = board.count
   for i in 0..<numberOfFields {
       for character in board[i] {
           if character != "." {
               if tempSet.contains(character) {
                   return false
               } else {
                   tempSet.insert(character)
               }
           }
       }
       tempSet.removeAll()
   }

   for i in 0..<numberOfFields {
       while k < numberOfFields {
           if board[k][i] != "." {
               if tempSet.contains(board[k][i]) {
                   return false
               } else {
                   tempSet.insert(board[k][i])
               }
           }
           k += 1
       }
       k = 0
       tempSet.removeAll()
   }

   var n = 0
   var j = 0

   while k < 4 && n < numberOfFields && j < 7 {
       if board[n][k + j] != "." {
           if tempSet.contains(board[n][k + j]) {
               return false
           } else {
               tempSet.insert(board[n][k + j])
           }
       }
       k += 1
       if k == 3 && n == numberOfFields - 1 {
           tempSet.removeAll()
           k = 0
           j += 3
           n = 0
       } else if n == 2 && k == 3 || n == 5 && k == 3 {
           tempSet.removeAll()
           n += 1
           k = 0
       } else if k == 3 {
           n += 1
           k = 0
       }
   }

   return true
}

import XCTest
let input: [[Character]] =  [
  ["8","3",".",".","7",".",".",".","."],
  ["6",".",".","1","9","5",".",".","."],
  [".","9","8",".",".",".",".","6","."],
  ["8",".",".",".","6",".",".",".","3"],
  ["4",".",".","8",".","3",".",".","1"],
  ["7",".",".",".","2",".",".",".","6"],
  [".","6",".",".",".",".","2","8","."],
  [".",".",".","4","1","9",".",".","5"],
  [".",".",".",".","8",".",".","7","9"]
]
XCTAssertEqual(isValidSudoku(input), false)

//: [Next](@next)
