//
//  main.swift
//  SwiftA_2NumbersSum
//
//  Created by Seong A Oh on 2021/09/07.
//
// 두 정수 a, b가 주어졌을 때 a와 b 사이에 속한 모든 정수의 합을 리턴하는 함수, solution을 완성하세요.
// 예를 들어 a = 3, b = 5인 경우, 3 + 4 + 5 = 12이므로 12를 리턴합니다.
//
// < 제한 조건 >
// a와 b가 같은 경우는 둘 중 아무 수나 리턴하세요.
// a와 b는 -10,000,000 이상 10,000,000 이하인 정수입니다.
// a와 b의 대소관계는 정해져있지 않습니다.
//
// < 입출력 예 >
// a=3, b=5, return 12
// a=3, b=3, return 3
// a=5, b=3, return 12

import Foundation


func solution(_ a:Int, _ b:Int) -> Int64 {
    var aNum = a
    var result = 0
    
    if aNum==b{
        result = aNum
    }else if aNum<b{
        while aNum<=b {
            result += aNum
            aNum += 1
        }
    }else if aNum>b{
        while aNum>=b{
            result += aNum
            aNum -= 1
        }
    }
    
    return Int64(result)
}

print(solution(3, 5))
print(solution(5, 3))


// 소요시간 9분

// 다른사람의 풀이
//func solution(_ a:Int, _ b:Int) -> Int64 {
//    return Int64(Array(a > b ? b...a : a...b).reduce(0, +))
//}
