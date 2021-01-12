//
//  main.swift
//  LeetCode-Solution
//
//  Created by 贺峰煜 on 2021/1/8.
//

import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var count = 0, start = 0
                var cache = Array(repeating: 0, count: 128)
                var index = 0
                for char in s {
                    let cacheIndex = cache[Int(char.asciiValue!)]
                    start = max(cacheIndex, start)
                    index += 1
                    count = max(count, index - start)
                    cache[Int(char.asciiValue!)] = index
                }
                return count
    }
}
