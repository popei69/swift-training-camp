import Cocoa
/*
 https://leetcode.com/problems/reverse-string/

 EASY - 344. Reverse String
 */

func reverseString(_ s: inout [Character]) {
    var left = 0
    var right = s.count - 1

    while left < right {
        s.swapAt(left, right)
        left += 1
        right -= 1
    }
}

var item: [Character] = ["h","e","l","l","o"]
reverseString(&item)
