import Cocoa
/*
 https://leetcode.com/problems/first-bad-version/
 
 EASY - 278. First Bad Version
 */

// mock
func isBadVersion(_ n: Int) -> Bool {
    return 4 <= n
}

func firstBadVersion(_ n: Int) -> Int {
    
    var left = 1
    var right = n
    
    while left < right {
        let mid = left + (right - left) / 2
        
        if isBadVersion(mid) {
            right = mid
        } else {
            left = mid + 1
        }
    }
    
    return right
}

firstBadVersion(40)
