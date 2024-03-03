//
//  main.swift
//  LeetCode_RemoveDuplicatesFromSortedArray
//
//  Created by Seong A Oh on 2024/02/10.
//

import Foundation

//int[] nums = [...]; // Input array
//int[] expectedNums = [...]; // The expected answer with correct length
//
//int k = removeDuplicates(nums); // Calls your implementation
//
//assert k == expectedNums.length;
//for (int i = 0; i < k; i++) {
//    assert nums[i] == expectedNums[i];
//}

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var index = 1
        
        while index < nums.count {
            if nums[index] == nums[index - 1] {
                nums.remove(at: index)
            } else {
                index += 1
            }
        }
        
        return nums.count
    }
}


var array = [1, 1, 2]
var solution = Solution()

var arrayResult = solution.removeDuplicates(&array)

print(arrayResult)
