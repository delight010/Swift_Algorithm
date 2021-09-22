//
//  main.swift
//  SwiftA_2016
//
//  Created by Seong A Oh on 2021/09/22.
//
// 2016년 1월 1일은 금요일입니다. 2016년 a월 b일은 무슨 요일일까요?
// 두 수 a ,b를 입력받아 2016년 a월 b일이 무슨 요일인지 리턴하는 함수, solution을 완성하세요.
// 요일의 이름은 일요일부터 토요일까지 각각 SUN,MON,TUE,WED,THU,FRI,SAT 입니다.
// 예를 들어 a=5, b=24라면 5월 24일은 화요일이므로 문자열 "TUE"를 반환하세요.
//
// < 제한 조건 >
// - 2016년은 윤년입니다.
// 2016년 a월 b일은 실제로 있는 날입니다. (13월 26일이나 2월 45일같은 날짜는 주어지지 않습니다)
//
// < 입출력 예 >
// a=5
// b=24
// result = "TUE"

import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    // 2016년 1월 1일은 금요일, 고로 1이 되는 값은 금요일로 설정
    let weekdays = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    let days = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    // 입력받은 일자
    var totDay = b
    
    // 입력받은 일자 + (입력받은 월-1)의 일자를 더해줌
    for i in stride(from: 0, to: a-1, by: 1) {
        totDay += days[i]
    }
    
    // 모든 일자를 합한 값%7
    return weekdays[totDay % 7]
}



// 소요시간 20분
