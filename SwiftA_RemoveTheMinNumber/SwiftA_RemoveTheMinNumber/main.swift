//
//  main.swift
//  SwiftA_RemoveTheMinNumber
//
//  Created by Seong A Oh on 2021/07/18.
//

// 평균 구하기[Programmers Level 1]
// 정수를 담고 있는 배열 arr의 평균값을 return하는 함수, solution을 완성해보세요.
//
// * 제한사항
// arr은 길이 1 이상, 100 이하인 배열입니다.
// arr의 원소는 -10,000 이상 10,000 이하인 정수입니다.
//
// < 입출력의 예 >
// arr = [1,2,3,4]
// return 2.5
//
// arr = [5,5]
// return 5


import Foundation

var intArray: [Int] = []

var inputString = inputReadLine()
print(inputString)


while(inputString != "end"){
    let inputInt: Int = Int(inputString)!
    inputTheArray(inputInt)
    print("Enter the Integer! 끝내시려면 end를 입력해주세요", terminator:" : ")
    inputString = readLine()! // 입력한 글자
}

var arrayAvg: Double = arrayAvg(intArray)
print("평균은 \(arrayAvg)입니다.")

// method--------------------------------------

// 글자 입력받기
func inputReadLine() -> String{
    print("Enter the Integer! 끝내시려면 end를 입력해주세요", terminator:" : ")
    var inputString = readLine() // 입력한 글자
    return inputString!
}

// 배열에 데이터 추가하기
func inputTheArray(_ inputInt:Int) {
    if inputInt >= -10000 && inputInt <= 10000 && intArray.count <= 100{
        intArray.append(inputInt)
        print(intArray)
    }else if intArray.count == 100{
        print("배열의 데이터갯수가 100개를 초과하여 입력할 수 없습니다.")
    }else{
        print("숫자를 -10,000 ~ 10,000 이내로 입력해주세요")
    }
}

// 배열의 데이터 값들 평균내기
func arrayAvg(_ Array: [Int]) -> Double{ // [Int] = Array<Int>
    var sum = 0
    var dataCount = Array.count
    var avg: Double = 0.0
    
    for i in intArray{
        sum += i
    }
    
    avg = Double(sum) / Double(Array.count)
    
    return avg
}


