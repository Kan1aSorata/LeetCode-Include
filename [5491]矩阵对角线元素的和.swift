//
//  main.swift
//  [5491]矩阵对角线元素的和
//
//  Created by 贺峰煜 on 2020/9/6.
//  Copyright © 2020 贺峰煜. All rights reserved.
//

class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var sum = 0
        for i in 0 ..< mat.count {
            if (mat.count - i - 1 != i) {
                sum += mat[mat.count - i - 1][i]
                sum += mat[i][i]
            } else {
                sum += mat[i][i]
            }
        }
        return sum
    }
}
