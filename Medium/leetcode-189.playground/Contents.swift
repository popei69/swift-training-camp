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
    
    let last = nums[nums.count - 1]
    var i = nums.count - 1
    while i > 0 {
        nums[i] = nums[i-1]
        i -= 1
    }
    nums[0] = last
    rotateByOne(&nums, k-1)
}

func rotate(_ nums: inout [Int], _ k: Int) {
    let k = k % nums.count
    guard !nums.isEmpty, k > 0 else {
        return
    }

    var result = Array<Int>(repeating: 0, count: nums.count)
    for i in 0..<nums.count {
        let finalPosition = (i + k) % nums.count
        result[finalPosition] = nums[i]
    }

    nums = result
}

func rotateWithReverse(_ nums: inout [Int], _ k: Int) {
    let k = k % nums.count
    guard !nums.isEmpty, k > 0 else {
        return
    }

    // reverse left from k
    var left = 0
    var right = nums.count - k - 1
    while left < right {
        nums.swapAt(left, right)
        left += 1
        right -= 1
    }

    print(nums)

    // reverse right from k
    left = nums.count - k
    right = nums.count - 1
    while left < right {
        nums.swapAt(left, right)
        left += 1
        right -= 1
    }

    print(nums)
    nums = nums.reversed()
}

var nums = [1,2,3,4,5,6,7]
rotateWithReverse(&nums, 3)
