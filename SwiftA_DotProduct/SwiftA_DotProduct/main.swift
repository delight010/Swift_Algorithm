//
//  main.swift
//  SwiftA_DotProduct
//
//  Created by Seong A Oh on 2021/09/07.
//
// 길이가 같은 두 1차원 정수 배열 a, b가 매개변수로 주어집니다.
// a와 b의 내적을 return 하도록 solution 함수를 완성해주세요.
// 이때, a와 b의 내적은 a[0]*b[0] + a[1]*b[1] + ... + a[n-1]*b[n-1] 입니다. (n은 a, b의 길이)
//
// < 제한 사항 >
// a, b의 길이는 1 이상 1,000 이하입니다.
// a, b의 모든 수는 -1,000 이상 1,000 이하입니다.
//
// < 입출력 예 >
// a = [1,2,3,4]
// b = [-3,-1,0,2]
// result = 3
//
// a = [-1,0,1]
// b = [1,0,-1]
// result = -2
//


import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var result = 0
    
    for i in 0..<a.count {
        result += a[i]*b[i]
    }
    
    return result
}

// 소요시간 4분

