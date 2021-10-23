//
//  main.swift
//  SwiftA_CorrectBracket
//
//  Created by Seong A Oh on 2021/10/23.
//
// 괄호가 바르게 짝지어졌다는 것은 '(' 문자로 열렸으면 반드시 짝지어서 ')' 문자로 닫혀야 한다는 뜻입니다.
// 예를 들어
// "()()" 또는 "(())()" 는 올바른 괄호입니다.
// ")()(" 또는 "(()(" 는 올바르지 않은 괄호입니다.
// '(' 또는 ')' 로만 이루어진 문자열 s가 주어졌을 때,
// 문자열 s가 올바른 괄호이면 true를 return 하고,
// 올바르지 않은 괄호이면 false를 return 하는 solution 함수를 완성해 주세요.
//
// < 제한 사항 >
// - 문자열 s의 길이 : 100,000 이하의 자연수
// - 문자열 s는 '(' 또는 ')' 로만 이루어져 있습니다.
//
// < 입출력 예 >
// s = "()()"
// answer = true
//
// s = "(())()"
// answer = true
//
// ")()("
// answer = false
//
// "(()("
// answer = false


import Foundation

// 초기 풀이(스택 사용)
//func solution(_ s:String) -> Bool {
//    var stack: [Character] = []
//
//    for bracket in s {
//        if !stack.isEmpty && stack.first! == ")"{
//            return false
//        }else if !stack.isEmpty && stack.last! != bracket {
//            // stack.last!는 마지막에 들어간 요소를 의미 & Optional을 풀어줌
//            stack.removeLast()
//        }else{
//            stack.append(bracket)
//        }
//    }
//    return stack.isEmpty == true ? true : false
//}


// 효율성을 고려한 풀이
func solution(_ s:String) -> Bool {
    let stack = Array(s)
    var number = 0
    
    for bracket in stack {
        if bracket == "(" {
            number += 1
        }else{
            if number == 0 {
                return false
            }
            number -= 1
        }
    }

    return number == 0 ? true : false
    
}

print(solution("()()"))
print(solution("(())()"))
print(solution(")()("))
print(solution("(()("))



// 소요시간 47분

