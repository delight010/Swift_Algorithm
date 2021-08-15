//
//  main.swift
//  SwiftA_IntegerDescendingOrder
//
//  Created by Seong A Oh on 2021/08/15.
//
// 함수 solution은 정수 n을 매개변수로 입력받습니다.
// n의 각 자릿수를 큰것부터 작은 순으로 정렬한 새로운 정수를 리턴해주세요.
// 예를들어 n이 118372면 873211을 리턴하면 됩니다.
//
// 제한 조건
// n은 1이상 8000000000 이하인 자연수입니다.
//
// < 입출력 예 >
// n = 118372
// return = 873211


import Foundation


func solution(_ i: Int) -> String{
    let str = String(i)
    var result = ""
    
    if i < 1 || i > 8000000000 {
        print("숫자는 1이상 8000000000이하인 자연수만 가능합니다.")
    }else{
        result = String(str.sorted(by: >)) // 내림차순으로 정렬, 오름차순은 < 로
    }
    
    return result
}

print("\(solution(0))")
print("\(solution(8000000001))")
print("\(solution(12345))")
print("\(solution(118372))")

// 소요 시간 : 14분
