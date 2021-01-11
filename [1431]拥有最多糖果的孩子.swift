//
//  main.swift
//  LeetCode-Solution
//
//  Created by 贺峰煜 on 2021/1/8.
//

import Foundation

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var mostCandies = 0
        var result = [Bool]()
        for index in candies {
            if (index > mostCandies) {
                mostCandies = index
            }
        }
        for index in candies {
            if (index + extraCandies >= mostCandies) {
                result.append(true)
            } else {
                result.append(false)
            }
        }
        return result
    }
}
