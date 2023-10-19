//
//  main.swift
//  LeetCode_LengthOfLastWord
//
//  Created by Seong A Oh on 2023/10/19.
//

import Foundation

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let stringArray = s.split(separator: " ")
        if let result = stringArray.last?.count {
            return result
        }
        return 0
    }
}

var s1 = "Hello World"
var s2 = "   fly me   to   the moon  "
var s3 = "luffy is still joyboy"

var solution = Solution()
print(solution.lengthOfLastWord(s3))
