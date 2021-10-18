//
//  main.swift
//  SwiftA_VisitLength
//
//  Created by Seong A Oh on 2021/10/18.
//
// 게임 캐릭터를 4가지 명령어를 통해 움직이려 합니다. 명령어는 다음과 같습니다.
// - U: 위쪽으로 한 칸 가기
// - D: 아래쪽으로 한 칸 가기
// - R: 오른쪽으로 한 칸 가기
// - L: 왼쪽으로 한 칸 가기
// 캐릭터는 좌표평면의 (0, 0) 위치에서 시작합니다.
// 좌표평면의 경계는 왼쪽 위(-5, 5), 왼쪽 아래(-5, -5), 오른쪽 위(5, 5), 오른쪽 아래(5, -5)로 이루어져 있습니다.
// 이때, 우리는 게임 캐릭터가 지나간 길 중 캐릭터가 처음 걸어본 길의 길이를 구하려고 합니다.
// 예를 들어 위의 예시에서 게임 캐릭터가 움직인 길이는 9이지만, 캐릭터가 처음 걸어본 길의 길이는 7이 됩니다. (8, 9번 명령어에서 움직인 길은 2, 3번 명령어에서 이미 거쳐 간 길입니다)
// 단, 좌표평면의 경계를 넘어가는 명령어는 무시합니다.
// 명령어가 매개변수 dirs로 주어질 때, 게임 캐릭터가 처음 걸어본 길의 길이를 구하여 return 하는 solution 함수를 완성해 주세요.
//
// < 제한 사항 >
// - dirs는 string형으로 주어지며, 'U', 'D', 'R', 'L' 이외에 문자는 주어지지 않습니다.
// - dirs의 길이는 500 이하의 자연수입니다.
//
// < 입출력 예 >
// dirs = "ULURRDLLU"
// answer = 7
//
// dirs = "LULLLLLLU"
// answer = 7


import Foundation

func solution(_ dirs:String) -> Int {
   var x = 0
   var y = 0
   var set: Set<String> = []

   for i in 0..<dirs.count {
       var index = dirs.index(dirs.startIndex, offsetBy: i)
       switch dirs[index] {
       case "U":
           if y < 5 {
               set.insert(String(x)+String(y)+String(x)+String(y+1))
               set.insert(String(x)+String(y+1)+String(x)+String(y))
               y += 1
           }
           break
       case "D":
           if y > -5{
               set.insert(String(x)+String(y)+String(x)+String(y-1))
               set.insert(String(x)+String(y-1)+String(x)+String(y))
               y -= 1
           }
           break
       case "R":
           if x < 5{
               set.insert(String(x)+String(y)+String(x+1)+String(y))
               set.insert(String(x+1)+String(y)+String(x)+String(y))
               x += 1
           }
           break
       case "L":
           if x > -5{
               set.insert(String(x)+String(y)+String(x-1)+String(y))
               set.insert(String(x-1)+String(y)+String(x)+String(y))
               x -= 1
           }
           break
       default:
           break
       }
   }

   return set.count / 2
}

print(solution("ULURRDLLU"))
print(solution("LULLLLLLU"))
print(solution("UDU"))

// 소요시간 40분
// 명령어 "UDU"는 1임을 생각하자.

