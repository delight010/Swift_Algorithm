//
//  main.swift
//  SwiftA_MidString
//
//  Created by Seong A Oh on 2021/07/17.
//
//  단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요.
//  단어의 길이가 짝수라면 가운데 두글자를 반환하면 됩니다.
//  제한사항 : s는 길이가 1 이상, 100이하인 스트링입니다.
//  < 입출력 예 >
//  s = "abcde" return = "c"
//  s = "qwer"  return = "we"


import Foundation

print("Enter the String!", terminator:" : ")
var inputString = readLine() // 입력한 글자

if inputString!.count>100 || inputString?.count == 0{
    print("글자는 1~100개까지 입력할 수 있습니다.")
    print("Enter the String!", terminator:" : ")
    var inputString = readLine() // 입력한 글자
}else{
    var resultString = solution(inputString!) // 최종으로 출력할 글자
    print("가운데 글자는 \(resultString) 입니다")
}

// method
func solution(_ s:String) -> String {
    var inputStringArr = Array(s) // 입력된 값을 배열로 변환
    var stringLength = inputStringArr.count // 배열의 데이터 갯수 세기
    var countString = 0 // stringLength가 홀수인지 짝수인지 판별
    var midString = "" // 리턴할 가운데 글자
    
    if stringLength % 2 == 0{
        countString = stringLength / 2
        midString = String(inputStringArr[countString-1...countString])
    }else{
        countString = (stringLength / 2)
        midString = String(inputStringArr[countString])
    }

    return midString
}

// 소요시간 2시간?
