//
//  main.swift
//  SwiftA_NumberReverse
//
//  Created by Seong A Oh on 2021/09/09.
//
// 자연수 n을 뒤집어 각 자리 숫자를 원소로 가지는 배열 형태로 리턴해주세요.
// 예를들어 n이 12345이면 [5,4,3,2,1]을 리턴합니다.
//
// < 제한 조건 >
// - n은 10,000,000,000이하인 자연수입니다.
//
// < 입출력 예 >
// n = 12345
// return [5,4,3,2,1]

import Foundation

func solution(_ n:Int64) -> [Int] {
    // 1. 자료형을 String로 변환
    // String(n)
    
    // 2. String을 Int로 변환
    // 3. map을 통해 배열로 저장
    // String(n).map{ Int(String($0))! }
    
    // 4. 배열을 거꾸로하여 반환
    
    return String(n).map{ Int(String($0))! }.reversed()
}


// 소요시간 18분

