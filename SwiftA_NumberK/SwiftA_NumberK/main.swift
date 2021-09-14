//
//  main.swift
//  SwiftA_NumberK
//
//  Created by Seong A Oh on 2021/09/14.
//
// 배열 array의 i번째 숫자부터 j번째 숫자까지 자르고 정렬했을 때, k번째에 있는 수를 구하려 합니다.
// 예를 들어 array가 [1, 5, 2, 6, 3, 7, 4], i = 2, j = 5, k = 3이라면
// 1. array의 2번째부터 5번째까지 자르면 [5, 2, 6, 3]입니다.
// 2. 1에서 나온 배열을 정렬하면 [2, 3, 5, 6]입니다.
// 3. 2에서 나온 배열의 3번째 숫자는 5입니다.
// 배열 array, [i, j, k]를 원소로 가진 2차원 배열 commands가 매개변수로 주어질 때,
// commands의 모든 원소에 대해 앞서 설명한 연산을 적용했을 때 나온 결과를 배열에 담아 return 하도록 solution 함수를 작성해주세요.
//
// < 제한 사항 >
// array의 길이는 1 이상 100 이하입니다.
// array의 각 원소는 1 이상 100 이하입니다.
// commands의 길이는 1 이상 50 이하입니다.
// commands의 각 원소는 길이가 3입니다.
//
// < 입출력 예 >
// array = [1, 5, 2, 6, 3, 7, 4]
// commands = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]
// return [5, 6, 3]
//
// < 입출력 예 설명 >
// [1, 5, 2, 6, 3, 7, 4]를 2번째부터 5번째까지 자른 후 정렬합니다. [2, 3, 5, 6]의 세 번째 숫자는 5입니다.
// [1, 5, 2, 6, 3, 7, 4]를 4번째부터 4번째까지 자른 후 정렬합니다. [6]의 첫 번째 숫자는 6입니다.
// [1, 5, 2, 6, 3, 7, 4]를 1번째부터 7번째까지 자릅니다. [1, 2, 3, 4, 5, 6, 7]의 세 번째 숫자는 3입니다.

import Foundation


func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for i in 0..<commands.count {
        result.append(array[commands[i][0]-1..<commands[i][1]].sorted()[(commands[i][2]-1)])
    }
    
    return result
}

// 설명
// 1. 배열의 슬라이싱 array[Int..<Int]
// array[commands[i][0]-1..<commands[i][1]]
// 2. 배열의 정렬(오름차순) sorted()
// array[commands[i][0]-1..<commands[i][1]].sorted()
// 3. 정렬한 배열의 특정 인덱스 값 추출 array[]
// commands의 i번째 배열의 2번째 인덱스,
// 배열은 0부터 시작하므로 -1을 해줌. 값을 확실히 가져오기위해 array[()]의 형태로 사용
// array[commands[i][0]-1..<commands[i][1]].sorted()[(commands[i][2]-1)]
// 4. result 배열에 값 추가
// 5. for문을 이용하여 배열에 값 추가




// 소요 시간 20분
