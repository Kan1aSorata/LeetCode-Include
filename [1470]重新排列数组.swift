//
//  main.swift
//  LeetCode-Solution
//
//  Created by 贺峰煜 on 2021/1/8.
//

import Foundation

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var newNums = [Int]()
        for i in 0 ..< n {
            for j in 0 ..< nums.count {
                if (j % n == i) {
                    newNums.append(nums[j])
                }
            }
        }
        return newNums
    }
}
