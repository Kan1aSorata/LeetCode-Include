//
//  main.swift
//  LeetCode-Solution
//
//  Created by 贺峰煜 on 2021/1/8.
//

import Foundation

public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let result = ListNode(0)
        var head = result
        var carry = 0
        
        var p = l1
        var q = l2
        
        while(p != nil || q != nil) {
            let sum = (p?.val ?? 0) + (q?.val ?? 0) + carry
            carry = sum / 10
            head.next = ListNode(sum % 10)
            head = head.next!
            p = p?.next
            q = q?.next
        }
        
        if(carry > 0) {
            head.next = ListNode(carry)
        }
        
        return result.next
    }
}

/*
 每日一题：
 [基础]请归类以下数据结构：
    A 线性表
    B 图
    C 集合
    D 树
    E 栈
    F 队列
    1、其中是线性结构的是：A E F
    2、其中是非线性结构的是：B C D
 */

