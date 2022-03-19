import Cocoa
/*
 https://leetcode.com/problems/merge-sorted-array/
 
 EASY - Merge Sorted Array
 */

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    guard n > 0 else {
        return
    }
    
    var index = nums1.count - 1
    var i = m - 1
    var j = n - 1
    while i >= 0 && j >= 0 {
        
        if nums1[i] >= nums2[j] {
            nums1[index] = nums1[i]
            i -= 1
        } else {
            nums1[index] = nums2[j]
            j -= 1
        }
        
        index -= 1
    }
    
    while i >= 0 {
        nums1[index] = nums1[i]
        i -= 1
        index -= 1
    }
    
    while j >= 0 {
        nums1[index] = nums2[j]
        j -= 1
        index -= 1
    }
}

var nums1 = [1, 2, 3, 0, 0, 0]
merge(&nums1, 3, [2, 5, 6], 3)
nums1
