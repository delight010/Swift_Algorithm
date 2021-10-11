//
//  main.swift
//  SwiftA_NegativePositiveNumber
//
//  Created by Seong A Oh on 2021/10/11.
//
// 어떤 정수들이 있습니다.
// 이 정수들의 절댓값을 차례대로 담은 정수 배열 absolutes와 이 정수들의 부호를
// 차례대로 담은 불리언 배열 signs가 매개변수로 주어집니다.
// 실제 정수들의 합을 구하여 return 하도록 solution 함수를 완성해주세요.
//
// < 제한 사항 >
// - absolutes의 길이는 1 이상 1,000 이하입니다.
// (absolutes의 모든 수는 각각 1 이상 1,000 이하입니다.)
// - signs의 길이는 absolutes의 길이와 같습니다.
// (signs[i] 가 참이면 absolutes[i] 의 실제 정수가 양수임을, 그렇지 않으면 음수임을 의미합니다.)
//
// < 입출력 예 >
// absolutes = [4,7,12]
// signs = [true,false,true]
// result = 9
// signs가 [true,false,true] 이므로, 실제 수들의 값은 각각 4, -7, 12입니다.
// 따라서 세 수의 합인 9를 return 해야 합니다.
//
// absolutes = [1,2,3]
// signs = [false,false,true]
// result = 0



import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result = 0
    
    for i in 0..<signs.count {
        if signs[i] == true{
            result += absolutes[i]
        }else{
            result += -(absolutes[i])
        }
    }
    
    return result
}

// 소요시간 3분

// 다른 사람의 풀이 ( 삼항연산자 사용 )
//func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
//    var answer = 0
//
//    for i in 0..<signs.count {
//        answer += signs[i] == true ? absolutes[i] : -absolutes[i]
//    }
//
//    return answer
//}
