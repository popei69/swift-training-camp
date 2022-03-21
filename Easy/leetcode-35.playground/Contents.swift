import Cocoa
/*
 https://leetcode.com/problems/search-insert-position/
 
 EASY - 35. Search Insert Position
 */

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    
    var left = 0
    var right = nums.count
    
    while left < right {
        
        let mid = left + (right - left) / 2
        
        if nums[mid] == target {
            return mid
        } else if nums[mid] > target {
            right = mid
        } else {
            left = mid + 1
        }
    }
    
    return left
}

searchInsert([1, 3, 5, 6], 5) // 5
searchInsert([1, 3, 5, 6], 2) // 1
searchInsert([1, 3, 5, 6], 7) // 4
searchInsert([1, 3, 5, 6], 0) // 0
