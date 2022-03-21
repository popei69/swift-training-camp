import Cocoa
/*
 https://leetcode.com/problems/binary-search/
 
 EASY - 704. Binary Search
 */

func search(_ nums: [Int], _ target: Int) -> Int {
    guard !nums.isEmpty else {
        return -1
    }
    
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        let mid = (right - left) / 2 + left
        
        if nums[mid] == target {
            return mid
        } else if nums[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    
    return -1
}

search([-1,0,3,5,9,12], 9) // 4
search([-1,0,3,5,9,12], 2) // -1
search([0,1], 2) // -1
