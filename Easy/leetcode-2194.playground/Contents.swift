/*
 https://leetcode.com/problems/cells-in-a-range-on-an-excel-sheet/
 
 Easy - 2194. Cells in a Range on an Excel Sheet
 */

func cellsInRange(_ s: String) -> [String] {
    let chars = Array(s)
    
    guard let startColumn = chars[0].asciiValue,
          let endColumn = chars[3].asciiValue,
          let startIndex = chars[1].wholeNumberValue,
          let endIndex = chars[4].wholeNumberValue else {
          return []
      }
    
    var result: [String] = []
    
    for i in startColumn...endColumn {
        let char = String(UnicodeScalar(i))
        for j in startIndex...endIndex {
            result.append("\(char)\(j)") 
        }
    }
    
    return result
}

cellsInRange("K1:L2") == ["K1","K2","L1","L2"]
cellsInRange("A1:F1") == ["A1","B1","C1","D1","E1","F1"]
