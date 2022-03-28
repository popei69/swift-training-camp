import Cocoa
/*
 https://leetcode.com/problems/rotate-array/
 
 MEDIUM - 189. Rotate Array
 */

func rotateByOne(_ nums: inout [Int], _ k: Int) {
    let k = k % nums.count
    guard !nums.isEmpty, k > 0 else {
        return
    }
    
    let first = nums[0] 
    for i in 0..<(nums.count-1) {
        nums[i] = nums[i+1] 
    }
    nums[nums.count - 1] = first
    rotateByOne(&nums, k-1)
}

var nums = [1,2,3,4,5,6,7]
rotateByOne(&nums, 1)
