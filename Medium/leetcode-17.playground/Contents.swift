import Cocoa
/*
 https://leetcode.com/problems/letter-combinations-of-a-phone-number/
 
 MEDIUM - 17. Letter Combinations of a Phone Number
 */

class Solution {
    static let phone: [Character: [String]] = [
        "2": ["a", "b", "c"],
        "3": ["d", "e", "f"],
        "4": ["g", "h", "i"],
        "5": ["j", "k", "l"],
        "6": ["m", "n", "o"],
        "7": ["p", "q", "r", "s"],
        "8": ["t", "u", "v"],
        "9": ["w", "x", "y", "z"],
    ]
    
    func letterCombinations(_ digits: String) -> [String] {
        guard !digits.isEmpty else {
            return []
        }
        
        return helper(digits)
    }
    
    private func helper(_ digits: String) -> [String] {
        var digits = digits
        
        guard let digit = digits.popLast() else {
            return [""]
        }
        
        print(digit)
        
        var combinations = helper(digits)
        let letters = Solution.phone[digit]!
        var new: [String] = []
        
        for item in combinations {
            for letter in letters {
                new.append(item + letter)
            }
        }
        
        return new
    }
}

let solution = Solution()
solution.letterCombinations("23")
