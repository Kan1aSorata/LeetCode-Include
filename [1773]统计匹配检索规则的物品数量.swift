class Solution {
    let itemIndexs = ["type", "color", "name"]
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var result = 0
        if let index = itemIndexs.firstIndex(of: ruleKey) {
            for item in items {
                if item[index] == ruleValue {
                    result = result + 1
                }
            }
        }
        return result
    }
}
