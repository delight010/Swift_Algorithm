//
//  main.swift
//  SwiftA_CaesarCipher
//
//  Created by Seong A Oh on 2021/08/14.
//
// 어떤 문장의 각 알파벳을 일정한 거리만큼 밀어서 다른 알파벳으로 바꾸는 암호화 방식을 시저 암호라고 합니다.
// 예를 들어 "AB"는 1만큼 밀면 "BC"가 되고, 3만큼 밀면 "DE"가 됩니다.
// "z"는 1만큼 밀면 "a"가 됩니다.
// 문자열 s와 거리 n을 입력받아 s를 n만큼 민 암호문을 만드는 함수, solution을 완성해 보세요.
//
// 제한사항
// - 공백은 아무리 밀어도 공백입니다.
// - s는 알파벳 소문자, 대문자, 공백으로만 이루어져 있습니다.
// - s의 길이는 8000이하입니다.
// - n은 1 이상, 25이하인 자연수입니다.
//
// < 입출력 예 >
// s = "AB", n = 1
// result = "BC"
//
// s = "z", n = 1
// result = "a"
//
// s = "a B z", n = 4
// result = "e F d"

import Foundation

func solution(_ s:String, _ n:Int) -> String {
    var sArr = Array(s) // 문자열 -> 배열(Char)로 변환
    var numArr: [UInt8] = []
    var result = ""

    // 제한조건 검사
    if s.count > 8000{
        print("글자의 길이가 8000 이상입니다.")
    }else if n<1 || n>25{
        print("숫자는 1이상 25이하인 자연수입니다.")
    }else{
        // sArr의 요소를 numArr로 변환
        // 문자열 -> 숫자로 변환
        for i in 0...sArr.count-1{
            switch sArr[i] {
            case "Z":
                numArr.append(UInt8(64) + UInt8(n))
                break
            case "z":
                numArr.append(UInt8(96) + UInt8(n))
                break
            default:
                numArr.append(sArr[i].asciiValue! + UInt8(n))
            }
        }

        // numArr의 요소를 문자열로 변환
        // 숫자 -> 문자열 변환
        for i in 0...numArr.count-1{
            if numArr[i] == 36{
                result += " "
            }else{
                result += String(UnicodeScalar(numArr[i]))
            }
        }
    }
    return result
}

print(solution("AB", 1))
print(solution("z", 1))
print(solution("a B z", 4))
print(solution("a", 26))

// 소요시간 : 1시간 17분
