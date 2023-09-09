//
//  main.swift
//  BaekJoon_A-B
//
//  Created by Seong A Oh on 2023/09/09.
//

import Foundation

//[입출력과 사칙연산] A-B
//두 정수 A와 B를 입력받은 다음, A-B를 출력하는 프로그램을 작성하시오.

let inputInteger = readLine()
if let integers = inputInteger {
    let solve = integers.components(separatedBy: " ").compactMap { char -> Int in
        guard let integer = Int(char) else { return 0 }
        return integer
    }
    
    var result = 0
    for index in 0..<solve.count {
        if index == 0 {
            result = solve[index]
        } else {
            result -= solve[index]
        }
    }
    
    print(result)
}

