import Cocoa

/*
 https://leetcode.com/problems/count-elements-with-strictly-smaller-and-greater-elements/
 
 Easy - 2148. Count Elements With Strictly Smaller and Greater Elements
 */

func countElements(_ nums: [Int]) -> Int {
    guard nums.count > 2 else {
        return 0
    }
    
    let sortedNums = nums.sorted()
    let mini = sortedNums.first!
    let maxi = sortedNums.last!
    
    var result = 0
    for num in sortedNums where num > mini && num < maxi {
        result += 1
    }
    return result
}

countElements([11, 7, 2, 15]) == 2
countElements([-3, 3, 3, 90]) == 2
