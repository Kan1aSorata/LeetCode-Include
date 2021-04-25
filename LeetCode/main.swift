class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let oriNums = nums.sorted(by: <)
        var sum = 0
        var close: Int!
        for num in oriNums {
            var left = 0
            var right = nums.count - 1
            close = num + oriNums[left] + oriNums[right] - target
            while left < right {
                sum = num + oriNums[left] + oriNums[right]
                if sum > target {
                    right -= 1
                } else if sum < target {
                    left += 1
                } else {
                    return sum
                }
                close = {
                    if abs(close) >= abs(sum - target) {
                        return sum - target
                    } else {
                        return close
                    }
                }()
            }
        }
        return target + close
    }
}

func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    let oriNums = nums.sorted(by: <)
    var sum = 0
    var close: Int!
    for num in oriNums {
        var left = 0
        var right = nums.count - 1
        close = num + oriNums[left] + oriNums[right] - target
        while left < right {
            sum = num + oriNums[left] + oriNums[right]
            if sum > target {
                right -= 1
            } else if sum < target {
                left += 1
            } else {
                return sum
            }
            close = {
                if abs(close) >= abs(sum - target) {
                    return sum - target
                } else {
                    return close
                }
            }()
        }
    }
    return target + close
}

print(threeSumClosest([-1,2,1,-4], 1))
