//
//  main.swift
//  SwiftA_StringBase
//
//  Created by Seong A Oh on 2021/09/06.
//
// 문자열 s의 길이가 4 혹은 6이고, 숫자로만 구성돼있는지 확인해주는 함수, solution을 완성하세요.
// 예를 들어 s가 "a234"이면 False를 리턴하고 "1234"라면 True를 리턴하면 됩니다.
//
// < 제한 사항 >
// s는 길이 1 이상, 길이 8 이하인 문자열입니다.
//
// < 입출력 예 >
// s = "a234" return false
// s = "1234" return true

import Foundation


var s1 = "a234"
var s2 = "1234"


// ** 정규식 사용 **
//func solution(_ s:String) -> Bool {
//    let numbers = "[0-9]"
//
//    if s.count == 4 || s.count == 6{
//        let numbersCheck = NSPredicate(format: "SELF MATCHES %@", numbers)
//        return numbersCheck.evaluate(with: s)
//    }else{
//        return false
//    }
//}

// 다른 답안(프로그래머스 제출)
func solution(_ s:String) -> Bool {
    if (s.count == 4 || s.count == 6) && Int(s) != nil{
        return true
    }else{
        return false
    }
}

print(solution(s1))
print(solution(s2))


// 소요 시간 : 30분
