//
//  main.swift
//  LeetCode-Solution
//
//  Created by 贺峰煜 on 2021/1/8.
//

import Foundation

class Solution {
    func reverseLeftWords(_ s: String, _ n: Int) -> String {
        let midIndex = s.index(s.startIndex, offsetBy: n)
        return String(s[midIndex ..< s.endIndex]) + String(s[s.startIndex ..< midIndex]))
    }
}
