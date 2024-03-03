//
//  main.swift
//  LeetCode_ValidParentheses
//
//  Created by Seong A Oh on 2023/10/19.
//

import Foundation

class Solution {
    let parentheses: [Character: String] = ["(":")", "[":"]", "{":"}"]
    func isValid(_ s: String) -> Bool {
        var string = s
        var stack = ""
        while string.count > 0 {
            let char = string.removeFirst()
            
            if let value = parentheses[char] {
                stack += value
            } else {
                if let last = stack.popLast(), last == char {
                    continue
                }
                return false
            }
        }
        
        return stack.isEmpty ? true : false
    }
}


var s = "()"
var s2 = "()[]{}"
var s3 = "(]"
var s4 = "{[]}"
var s5 = "["
var s6 = "(("

let solution = Solution()
print(solution.isValid(s6))
