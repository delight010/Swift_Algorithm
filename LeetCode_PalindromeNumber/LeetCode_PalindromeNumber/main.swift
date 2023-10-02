//
//  main.swift
//  LeetCode_PalindromeNumber
//
//  Created by Seong A Oh on 2023/10/02.
//

import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var string = String(x)
        for char in string {
            if let lastChar = string.popLast(), lastChar != char {
                return false
            }
        }
        
        return true
    }
}


var solution = Solution()
print(solution.isPalindrome(121))
print(solution.isPalindrome(123))
print(solution.isPalindrome(-121))
print(solution.isPalindrome(10))
