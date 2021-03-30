class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var num = x
        var count = 0
        var nums = [Int]()
        if num < 0 {
            return false
        }
        while num != 0 {
            nums.append(num % 10)
            num = num / 10
            count = count + 1
        }
        var j = nums.count - 1
        for i in stride(from: 0, to: nums.count - 1, by: 1) {
            if nums[i] != nums[j] {
                return false
            }
            j = j - 1
        }
        return true
    }
}

func isPalindrome(_ x: Int) -> Bool {
    if x < 0 || x % 10 == 0 && x != 0 {
        return false
    }
    var X = x;
    var reverse = 0
    while X > reverse {
        reverse = reverse * 10 + X % 10
        X /= 10
    }
    return X == reverse || X == reverse / 10
}

print(isPalindrome(10))
