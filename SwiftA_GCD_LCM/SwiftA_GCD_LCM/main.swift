//
//  main.swift
//  SwiftA_GCD_LCM
//
//  Created by Seong A Oh on 2021/08/21.
//
// 두 수를 입력받아 두 수의 최대공약수와 최소공배수를 반환하는 함수, solution을 완성해 보세요.
// 배열의 맨 앞에 최대공약수, 그다음 최소공배수를 넣어 반환하면 됩니다.
// 예를 들어 두 수 3, 12의 최대공약수는 3, 최소공배수는 12이므로
// solution(3, 12)는 [3, 12]를 반환해야 합니다.
//
// 제한 조건
// 두 수는 1이상 1000000이하의 자연수입니다.
//
// < 입출력 예 >
// n = 3, m = 12
// return [3, 12]
//
// n = 2, m = 5
// return [1, 10]

import Foundation


var n = 3
var m = 12

var gcd = 0 // 최대공약수
var lcm = 0 // 최소공배수

if n < 1 || m < 1 || n > 1000000 || m > 1000000 {
    print("숫자는 1이상 1000000 이하의 자연수입니다.")
}else{
    switch m % n {
    case 0:
        gcd = n
        lcm = m
        break
    case 1:
        while(m%n==0){
            n -= 1
        }
        gcd = n
        lcm = n*m
        break
    default:
        break
    }
}

print(solution(0,8))
print(solution(4,1000001))
print("------")
print(solution(3,12))
print(solution(2,5))
print("------")
print(solution(12,3))
print(solution(5,2))




func solution(_ n:Int, _ m:Int) -> [Int] {
    var num = 0
    
    var gcd = 0 // 최대공약수
    var lcm = 0 // 최소공배수
    
    if n < 1 || m < 1 || n > 1000000 || m > 1000000 {
        print("숫자는 1이상 1000000 이하의 자연수입니다.")
    }else if n > m {
        num = m
        switch n % m {
        case 0:
            gcd = m
            lcm = n
            break
        case 1:
            while(n % num != 0){
                num = num - 1
            }
            gcd = num
            lcm = n*m
            break
        default:
            break
        }
        
    }else{
        num = n
        switch m % n {
        case 0:
            gcd = n
            lcm = m
            break
        case 1:
            while(m % num != 0){
                num = num - 1
            }
            gcd = num
            lcm = n*m
            break
        default:
            break
        }
    }
    
    return [gcd, lcm]
}

// 소요 시간 : 38분
