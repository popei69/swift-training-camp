import Cocoa
/*
 https://leetcode.com/problems/squares-of-a-sorted-array/
 
 EASY - 977. Squares of a Sorted Array
 */

func sortedSquares(_ nums: [Int]) -> [Int] {
    guard nums.count > 0 else {
        return nums
    }
    
    var result = Array<Int>(repeating: 0, count: nums.count)
    var index = result.count - 1
    var leftPointer = 0
    var rightPointer = nums.count - 1
    
    while index >= 0 {
        let leftValue = nums[leftPointer] * nums[leftPointer]
        let rightValue = nums[rightPointer] * nums[rightPointer]
        
        if rightValue >= leftValue {
            result[index] = rightValue
            rightPointer -= 1
        } else {
            result[index] = leftValue
            leftPointer += 1
        }
        index -= 1
    }
    
    return result
}

sortedSquares([-1]) // 1
sortedSquares([-4,-1,0,3,10]) // [0,1,9,16,100]
sortedSquares([-7,-3,2,3,11]) // [4,9,9,49,121]
