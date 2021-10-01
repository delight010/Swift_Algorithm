//
//  main.swift
//  SwiftA_StringDescendingOrder
//
//  Created by Seong A Oh on 2021/10/01.
//
// 문자열 s에 나타나는 문자를 큰것부터 작은 순으로 정렬해 새로운 문자열을 리턴하는 함수, solution을 완성해주세요.
// s는 영문 대소문자로만 구성되어 있으며, 대문자는 소문자보다 작은 것으로 간주합니다.
//
// < 제한 사항 >
// - str은 길이 1 이상인 문자열입니다.
//
// < 입출력 예 >
// s = "Zbcdefg"
// return "gfedcbZ"

import Foundation

var ss = "Zbcdefg"
var s2 = ss.sorted(by: >)

func solution(_ s:String) -> String {
    var str = ""
    for i in 0..<s.count{
        str += String(s.sorted(by: >)[i])
//        print(String(i) + " " + str)
//        ---print 하면 출력되는 것--
//        0 g
//        1 gf
//        2 gfe
//        3 gfed
//        4 gfedc
//        5 gfedcb
//        6 gfedcbZ
    }
    
    return str
}

// 입력된 s를 s.sorted(by: >)로 하여 '캐릭터 배열'로 변환
// 배열의 i번째 원소를 str에 하나씩 추가

print(solution(ss))


// < 다른 사람 풀이 >
//func solution(_ s:String) -> String {
//    return String(s.sorted { $0 > $1 })
// 혹은  return String(s.sorted(by:>))
//}


// 소요시긴 26분
