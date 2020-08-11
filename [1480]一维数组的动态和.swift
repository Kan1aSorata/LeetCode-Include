//
//  main.swift
//  LeetCodeSolution
//
//  Created by 贺峰煜 on 2020/8/11.
//  Copyright © 2020 贺峰煜. All rights reserved.
//

import Foundation

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var ans = nums
        for i in 1 ..< nums.count {
            ans[i] = ans[i-1] + ans[i]
        }
        return ans
    }
}
