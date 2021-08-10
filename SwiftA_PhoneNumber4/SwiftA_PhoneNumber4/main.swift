//
//  main.swift
//  SwiftA_PhoneNumber4
//
//  Created by Seong A Oh on 2021/08/10.
//
//프로그래머스 모바일은 개인정보 보호를 위해 고지서를 보낼 때 고객들의 전화번호의 일부를 가립니다.
//전화번호가 문자열 phone_number로 주어졌을 때,
//전화번호의 뒷 4자리를 제외한 나머지 숫자를 전부 *으로 가린 문자열을 리턴하는 함수,
//solution을 완성해주세요.
//
//제한 사항 : s는 길이 4 이상, 20이하인 문자열입니다.
//
//< 입출력 예 >
//phone_number : "01033334444" -> return "*******4444"
//phone_number : "027778888" -> return "*****8888"

import Foundation

print("Enter the PhoneNumber!", terminator: " : ")
var inputString = readLine()

print(solution(inputString!))

func solution(_ phone_number:String) -> String {
    var inputStringArr = Array(phone_number) // 입력된 값을 배열로 변환
    var strLength = inputStringArr.count // 배열의 데이터 갯수 세기
    var resultStr = ""
    
    switch strLength {
    case 4..<20:
        for i in 0..<(strLength-4){
            resultStr += String(inputStringArr[i])
        }
        resultStr += "****"
        break
    default:
        resultStr = "전화번호는 4글자 이상 20글자 이하입니다!"
        break
    }
    
    return resultStr

}

// 소요시간 : 40분
