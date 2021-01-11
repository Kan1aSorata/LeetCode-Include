//
//  main.swift
//  LeetCode-Solution
//
//  Created by 贺峰煜 on 2021/1/8.
//

import Foundation

class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        var count = 0
        for num in nums {
            dict[num] = (dict[num] ?? 0) + 1
        }
        for (_, index) in dict {
            if (index >= 2) {
                count += index * (index - 1) / 2
            }
        }
        return count
    }
}
