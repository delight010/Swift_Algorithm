//
//  main.swift
//  LeetCode_LongestCommonPrefix
//
//  Created by Seong A Oh on 2024/01/21.
//

import Foundation

//struct Node<Value: Equatable> {
//    var parent: Value
//    var children: [Node<Value>]
//
//    init(parent: Value) {
//        self.parent = parent
//        self.children = []
//    }
//
//    init(parent: Value, children: [Node<Value>]) {
//        self.parent = parent
//        self.children = children
//    }
//
//    mutating func add(child: Node<Value>) {
//        if children.isEmpty {
//            self.children.append(child)
//        } else {
//            self.children[0].add(child: child)
//        }
//    }
//
//    mutating func addNewChild(child: Node<Value>) {
//        self.children.append(child)
//    }
//
//    mutating func addNextChild(child: Node<Value>) {
//        if children[0].parent == child.parent {
//            self.children[0].add(child: child)
//        }
//    }
//}
//
//
//
//
//var str = "flower"
//
//var tree = Node(parent: str.first!)
//var child = Node(parent: str.dropFirst().first!)
//var grandChild = Node(parent: str.dropFirst().dropFirst().first!)
////tree.add(child: child)
////tree.add(child: grandChild)
//
//
//
//for char in str.dropFirst() {
//    tree.add(child: Node(parent: char))
//}
//
//print(tree)
//var str2 = "flow"
//
//if str.first == str2.first {
//    for char in str2.dropFirst() {
//        tree.addNewChild(child: Node(parent: char))
//    }
//}
//
//
//print(tree)


// 차라리..들어온 배열 중
// 제일 긴 것과 짧은 것을 비교

var strs = ["flower","flow","flight"]


