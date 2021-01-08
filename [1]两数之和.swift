//
//  main.swift
//  LeetCodeSolution
//
//  Created by 贺峰煜 on 2020/8/11.
//  Copyright © 2020 贺峰煜. All rights reserved.
//

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = Dictionary<Int, Int>()
        var i = 0
        for n in nums {
            dic[n] = i
            i = i + 1
        }
        var ans = [Int]()
        var j = 0
        for n in nums {
            if dic.keys.contains(target - n) && j != dic[target - n] {
                ans.append(j)
                ans.append(dic[target - n] ?? -1)
                return ans
            }
            j = j + 1
        }
        return [ ]
    }
}
