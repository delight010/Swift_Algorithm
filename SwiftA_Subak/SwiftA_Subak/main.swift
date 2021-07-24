//
//  main.swift
//  SwiftA_Subak
//
//  Created by Seong A Oh on 2021/07/24.
//
// 길이가 n이고, "수박수박수박수...."와 같은 패턴을 유지하는 문자열을 리턴하는 함수, solution을 완성하세요.
// 예를들어 n이 4이면 "수박수박"을 리턴하고 3이라면 "수박수"를 리턴하면 됩니다.
//
// 제한 조건 : n은 길이 10,000이하인 자연수입니다.
//
// < 입출력 예 >
// n = 3, return "수박수"
// n = 4, return "수박수박"


import Foundation

print("Enter the Integer!", terminator: " : ")
var inputInt = Int(readLine()!) // 입력한 글자

print("\(returnString(inputInt!))")


func returnString(_ n: Int) -> String{
    var su = "수"
    var bak = "박"
    var result = ""
    
    if n <= 10000{
        for i in 0..<n{
            switch i%2{
            case 0:
                result += su
                continue
            case 1:
                result += bak
                continue
            default:
                break
            }
        }
    }else{
        print("1~10,000까지 입력 가능합니다!")
        print("Enter the Integer!", terminator: " : ")
        inputInt = Int(readLine()!) // 입력한 글자
    }
    
    return result
}

