class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        if nums.count <= 2 {
            return []
        }
        //TODO: sort()与sorted()的区别
        let nums = nums.sorted()
        var result = [[Int]]()
        if nums[0] > 0 {
            return []
        }
        for index in 0 ..< nums.count - 1 {
            if index > 0 && nums[index - 1] == nums[index] {
                continue
            }
            var lowPoint = index + 1
            var heighPoint = nums.count - 1
            let targetNum = 0 - nums[index]
            
            while lowPoint < heighPoint {
                let sum = nums[lowPoint] + nums[heighPoint]
                if targetNum == sum {
                    result.append([nums[index], nums[lowPoint], nums[heighPoint]])
                while (lowPoint < heighPoint && nums[lowPoint] == nums[lowPoint + 1]) {
                    lowPoint += 1
                }
                while (lowPoint < heighPoint && nums[heighPoint] == nums[heighPoint - 1]) {
                    heighPoint -= 1
                }
                lowPoint += 1
                heighPoint -= 1
                } else if sum > targetNum {
                    heighPoint -= 1
                } else {
                    lowPoint += 1
                }
            }
        }
        return result
    }
}
