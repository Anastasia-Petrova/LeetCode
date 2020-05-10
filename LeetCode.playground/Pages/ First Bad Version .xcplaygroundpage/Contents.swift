//: [Previous](@previous)

/*:
* Callout(Task):
You are a product manager and currently leading a team to develop a new product. Unfortunately, the latest version of your product fails the quality check. Since each version is developed based on the previous version, all the versions after a bad version are also bad. Suppose you have n versions [1, 2, ..., n] and you want to find out the first bad one, which causes all the following ones to be bad. You are given an API bool isBadVersion(version) which will return whether version is bad. Implement a function to find the first bad version. You should minimize the number of calls to the API.

```
Given n = 5, and version = 4 is the first bad version.

call isBadVersion(3) -> false
call isBadVersion(5) -> true
call isBadVersion(4) -> true

Then 4 is the first bad version.
```
*/

func firstBadVersion(_ n: Int) -> Int {
  var r = n
  var l = 1
  while l < r {
    let midleIndex = l + (r - l) / 2
    if (isBadVersion(midleIndex)) {
      r = midleIndex
    } else {
      l = midleIndex + 1
    }
  }
  return l
}

func isBadVersion(_ n: Int) -> Bool { return true }
//: [Next](@next)
