//
//  main.swift
//  SwiftA_NumPlus
//
//  Created by Seong A Oh on 2021/09/21.
//
// 자연수 N이 주어지면, N의 각 자릿수의 합을 구해서 return 하는 solution 함수를 만들어 주세요.
// 예를들어 N = 123이면 1 + 2 + 3 = 6을 return 하면 됩니다.
//
// < 제한 사항 >
// - N의 범위 : 100,000,000 이하의 자연수
//
// < 입출력 예 >
// N = 123
// answer = 6
//
// N = 987
// answer = 24

import Foundation

func solution(_ n:Int) -> Int {
    var answer:Int = 0
    var num = n
    var remain = 0
    
    while num != 0 {
        remain = num % 10
        answer += remain
        num /= 10
    }
    
    return answer
}

// 소요시간 : 11분

