//
//  main.swift
//  LeetCode-Solution
//
//  Created by 贺峰煜 on 2021/1/8.
//

import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        var preNum = x
        var result = 0
        while preNum != 0 {
            let end = preNum % 10
            result = result * 10 + end
            preNum = preNum / 10
        }
        guard result >= -INT32_MAX - 1 && result <= INT32_MAX else {
            return 0
        }
        return result
    }
}
