//
//  main.swift
//  LeetCode_TwoSum
//
//  Created by Seong A Oh on 2023/09/30.
//

import Foundation

// https://leetcode.com/problems/two-sum/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            var secondValue = i + 1
            for j in secondValue..<nums.count {
                if nums[i] + nums[j] == target {
                    let result = [i, j]
                    return result
                }
            }
        }
        return []
    }
}

let solution = Solution()
let result1 = solution.twoSum([2, 7, 11, 15], 9)
let result2 = solution.twoSum([3, 2, 4], 6)
let result3 = solution.twoSum([2, 5, 5, 11], 10)

