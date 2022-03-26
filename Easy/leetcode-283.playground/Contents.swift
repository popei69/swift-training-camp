import Cocoa
/*
 https://leetcode.com/problems/move-zeroes/
 
 EASY - 283. Move Zeroes
 */

func moveZeroes(_ nums: inout [Int]) {
    
    // count zeros
    var zeros = 0
    for num in nums where num == 0 {
        zeros += 1
    }
    
    // move non zeros in front
    var movingIndex = 0
    for num in nums where num != 0 {
        nums[movingIndex] = num
        movingIndex += 1
    }
    
    // set zeros in back
    for i in movingIndex..<nums.count {
        nums[i] = 0
    }
}

var nums1 = [0,1,0,3,12]
moveZeroes(&nums1)
nums1 // [1, 3, 12, 0, 0]

var nums2 = [1]
moveZeroes(&nums2)
nums2
