//
//  main.swift
//  LeetCode-Solution
//
//  Created by 贺峰煜 on 2021/1/8.
//

import Foundation

class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        let hashSet = Set(jewels)
        var count = 0
        for index in stones {
            if (hashSet.contains(index)) {
                count += 1
            }
        }
        return count
    }
}
