//
//  main.swift
//  LeetCode_RomanToInteger
//
//  Created by Seong A Oh on 2023/10/03.
//

import Foundation

class Solution {
    func romanToInt(_ s: String) -> Int {
        let romanNumerals: [String: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        var result = 0
        let array = s.map { String($0) }
        for index in array.indices {
            switch array[index] {
            case "V" , "X":
                if let number = romanNumerals[array[index]] {
                    result += number
                }
                if index != array.startIndex {
                    if array[index - 1] == "I" {
                        result -= 2
                    }
                }
            case "L", "C":
                if let number = romanNumerals[array[index]] {
                    result += number
                }
                if index != array.startIndex {
                    if array[index - 1] == "X" {
                        result -= 20
                    }
                }
            case "D", "M":
                if let number = romanNumerals[array[index]] {
                    result += number
                }
                if index != array.startIndex {
                    if array[index - 1] == "C" {
                        result -= 200
                    }
                }
            default:
                if let number = romanNumerals[array[index]] {
                    result += number
                }
            }
        }
        return result
    }
}

var solution = Solution()
print(solution.romanToInt("III"))
print(solution.romanToInt("LVIII"))
print(solution.romanToInt("MCMXCIV"))
print(solution.romanToInt("DCXXI"))
//DCXXI
//500+100+10+10+1
