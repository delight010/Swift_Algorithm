//
//  main.swift
//  SwiftA_xSpaceNum
//
//  Created by Seong A Oh on 2021/09/09.
//
// 함수 solution은 정수 x와 자연수 n을 입력 받아,
// x부터 시작해 x씩 증가하는 숫자를 n개 지니는 리스트를 리턴해야 합니다.
// 다음 제한 조건을 보고, 조건을 만족하는 함수, solution을 완성해주세요.
//
// < 제한 조건 >
// - x는 -10000000 이상, 10000000 이하인 정수입니다.
// - n은 1000 이하인 자연수입니다.
//
// < 입출력 예 >
// x = 2, n = 5
// answer = [2,4,6,8,10]
//
// x = 4, n = 3
// answer = [4,8,12]
//
// x = -4, n = 2
// answer = [-4, -8]


import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var answer: [Int64] = []
    
    for i in 1...n {
        answer.append(Int64(x*i))
    }
    
    return answer
}


// 다른 사람의 풀이
//func solution(_ x:Int, _ n:Int) -> [Int64] {
//    return Array(1...n).map { Int64($0 * x) }
//}


// 소요시간 3분
