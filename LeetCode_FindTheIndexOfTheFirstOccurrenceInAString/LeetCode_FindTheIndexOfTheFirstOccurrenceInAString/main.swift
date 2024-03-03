//
//  main.swift
//  LeetCode_FindTheIndexOfTheFirstOccurrenceInAString
//
//  Created by Seong A Oh on 2024/02/11.
//

import Foundation

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard let stringRange = haystack.range(of: needle) else {
            return -1
        }
        
        return haystack.distance(from: haystack.startIndex, to: stringRange.lowerBound)
    }
}


var solution = Solution()

print(solution.strStr("mississippi", "issip"))
