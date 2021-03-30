class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 {
            return ""
        }
        let firstString = Array(strs[0])
        var pointer = ""
        for time in 0 ..< firstString.count {
            pointer.append(firstString[time])
            for index in strs {
                if !index.hasPrefix(pointer) {
                    pointer.removeLast()
                    return pointer
                }
            }
        }
        return pointer
    }
}

func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count == 0 {
        return ""
    }
    let firstString = Array(strs[0])
    var pointer = ""
    for time in 0 ..< firstString.count {
        pointer.append(firstString[time])
        for index in strs {
            if !index.hasPrefix(pointer) {
                pointer.removeLast()
                return pointer
            }
        }
    }
    return pointer
}

print(longestCommonPrefix([]))
