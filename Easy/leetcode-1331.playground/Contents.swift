import Cocoa
/*
 https://leetcode.com/problems/rank-transform-of-an-array/
 
 EASY - 1331. Rank Transform of an Array
 */

func arrayRankTransform(_ arr: [Int]) -> [Int] {

    // O(n log(n)
    let sortedArr = arr.sorted()
    var hashmap: [Int: Int] = [:]
    
    var rank = 1
    // O(n)
    for value in sortedArr {
        if hashmap[value] == nil { 
            hashmap[value] = rank
            rank += 1
        }
    }
    
    var result = arr
    // O(n)
    for index in 0..<result.count {
        result[index] = hashmap[result[index]]!
    }
    
    return result
}

arrayRankTransform([40,10,20,30])
