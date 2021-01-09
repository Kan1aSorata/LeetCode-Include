//
//  main.swift
//  LeetCode-Solution
//
//  Created by 贺峰煜 on 2021/1/8.
//

import Foundation

class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var sums = [Int]()
        for i in accounts {
            var sum = 0
            for j in i {
                sum = sum + j
            }
            sums.append(sum)
        }
        var temp = 0
        for i in 0 ..< sums.count - 1 {
            for j in 0 ..< sums.count - 1 - i {
                if (sums[j] < sums[j + 1]) {
                    temp = sums[j]
                    sums[j] = sums[j + 1]
                    sums[j + 1] = temp
                }
            }
        }
        return sums[0]
    }
}
