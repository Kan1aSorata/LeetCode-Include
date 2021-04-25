class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var area = 0
        while left < right {
            area = max(area, min(height[left], height[right]) * (right - left))
            if height[left] < height[right] {
                left += 1
            } else if height[left] > height[right] {
                right -= 1
            } else {
                left += 1
                right -= 1
            }
        }
        return area
    }
}
