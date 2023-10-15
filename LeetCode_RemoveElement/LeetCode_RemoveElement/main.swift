//
//  main.swift
//  LeetCode_RemoveElement
//
//  Created by Seong A Oh on 2023/10/15.
//

import Foundation

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var existVal = true
        
        while existVal {
            if let index = nums.firstIndex(of: val) {
                nums.remove(at: index)
            } else {
                existVal = false
            }
        }
        
        return nums.count
    }
}

var solution = Solution()
var array = [3,2,2,3]
var array2 = [0,1,2,2,3,0,4,2]
print(solution.removeElement(&array, 3))
print(solution.removeElement(&array2, 2))

