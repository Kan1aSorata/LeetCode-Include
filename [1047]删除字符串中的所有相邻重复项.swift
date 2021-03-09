class Solution {
    func removeDuplicates(_ S: String) -> String {
        var result = [Character]()
        for index in S {
            if result.count != 0 && index == result.last {
                result.removeLast()
            } else {
                result.append(index)
            }
        }
        return String(result)
    }
}
