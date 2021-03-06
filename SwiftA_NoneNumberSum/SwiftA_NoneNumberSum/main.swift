//
//  main.swift
//  SwiftA_NoneNumberSum
//
//  Created by Seong A Oh on 2021/09/18.
//
// 0부터 9까지의 숫자 중 일부가 들어있는 배열 numbers가 매개변수로 주어집니다.
// numbers에서 찾을 수 없는 0부터 9까지의 숫자를 모두 찾아 더한 수를 return 하도록 solution 함수를 완성해주세요.
//
// < 제한 사항 >
// - 1 ≤ numbers의 길이 ≤ 9
// 0 ≤ numbers의 모든 수 ≤ 9
// numbers의 모든 수는 서로 다릅니다.
//
// < 입출력 예 >
// numbers = [1,2,3,4,6,7,8,0]
// result = 14
//
// numbers = [5,8,4,0,6,7,9]
// result = 6
//
// < 입출력 예 설명 >
// 예#1
// 5, 9가 numbers에 없으므로, 5 + 9 = 14를 return 해야 합니다.
// 예#2
// 1, 2, 3이 numbers에 없으므로, 1 + 2 + 3 = 6을 return 해야 합니다.

import Foundation

var array = [0,1,2,3,4,5,6,7,8,9]
print(array.reduce(0, +)) // 45


func solution(_ numbers:[Int]) -> Int {
    return 45 - numbers.reduce(0, +)
}


print(solution([1,2,3,4,6,7,8,0]))
print(solution([5,8,4,0,6,7,9]))

// 소요시간 23분
