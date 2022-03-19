import Cocoa
/*
 https://leetcode.com/problems/powerful-integers/
 
 MEDIUM - 970. Powerful Integers
 */

func powerfulIntegers(_ x: Int, _ y: Int, _ bound: Int) -> [Int] {
    guard bound > 0 else {
        return []
    }
    
    var maxPowerA = log(Double(bound)) / log(Double(x))
    var maxPowerB = log(Double(bound)) / log(Double(y))
    
    if x == 1 {
        maxPowerA = Double(bound)
    }
    
    if y == 1 {
        maxPowerB = Double(bound)
    }
    
    var result = Set<Int>()
    
    for i in 0...Int(maxPowerA) {
        for j in 0...Int(maxPowerB) {
            
            let value = pow(Decimal(x), i) + pow(Decimal(y), j)
            let intValue = (value as NSDecimalNumber).intValue
            if intValue <= bound {
                result.insert(intValue)
            }
            
            if y == 1 {
                break
            }
            
        }
        
        if x == 1 {
            break
        }
    }
    
    return Array(result)
}

powerfulIntegers(2, 3, 10)
