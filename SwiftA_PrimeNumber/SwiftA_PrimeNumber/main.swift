//
//  main.swift
//  SwiftA_PrimeNumber
//
//  Created by Seong A Oh on 2021/10/13.
//
// 1부터 입력받은 숫자 n 사이에 있는 소수의 개수를 반환하는 함수, solution을 만들어 보세요.
// 소수는 1과 자기 자신으로만 나누어지는 수를 의미합니다. (1은 소수가 아닙니다.)
//
// < 제한 조건 >
// - n은 2이상 1000000이하의 자연수입니다.
//
// < 입출력 예 >
// n = 10
// result = 4
//
// n = 5
// result = 3


import Foundation


// 자연수 n이 소수인지 아닌지를 판정하려면,
// 2 <= p <= sqrt(n)인 범위에 있는
// 모든 소수 p로 n을 나눈다.
// 1) 나누어 떨어지지않음 = 소수
// 2) 나누어 떨어짐 = 합성수

func solution(_ n:Int) -> Int {
    var count = 0
    var isPrime = true // 소수인지 아닌지 판별
    
    for i in 2...n{ // 2,3,4...n
        isPrime = true
        for j in 2...Int(sqrt(Double(n)))+1{
            if i%j == 0 && j != i{ // i=j가 아닐 때, 나누어떨어지면 합성수
                isPrime = false
                break // for문 탈출
            }
        }
        if isPrime == true{
            count += 1
        }
    }
    
    return count
}

print(solution(10))


// 소요시간 1시간 44분

