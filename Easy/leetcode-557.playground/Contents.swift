import Cocoa
/*
 https://leetcode.com/problems/reverse-words-in-a-string-iii/

 EASY - 557. Reverse Words in a String III
 */

func reverseWords(_ s: String) -> String {
    var chars = Array(s)

    var start = 0
    for i in 0..<chars.count {

        if chars[i] == " " {
            reverseBetween(&chars, start, i - 1)
            start = i+1
        }
    }

    if start < (chars.count - 1) {
        reverseBetween(&chars, start, chars.count - 1)
    }

    return String(chars)
}

func reverseBetween(_ s: inout [Character], _ i: Int, _ j: Int) {
    var left = i
    var right = j
    while left < right {
        s.swapAt(left, right)
        left += 1
        right -= 1
    }
}

let value = "     H e l l o"
reverseWords(value)
