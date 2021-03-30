
import Foundation
class Solution {
    //40:( 41:( 91:[ 93:] 123:{ 125:}
    //better
    func isValid(_ s: String) -> Bool {
        let brackets = Array(s)
        var stack = [Character]()
        for index in brackets {
            switch index {
            case "(", "[", "{":
                stack.append(index)
            case ")":
                if stack.popLast() != "(" {
                    return false
                }
            case "]":
                if stack.popLast() != "[" {
                    return false
                }
            case "}":
                if stack.popLast() != "{" {
                    return false
                }
            default:
                return false
            }
        }
        if stack.isEmpty {
            return true
        } else {
            return false
        }
    }
    
}

//我写的拉胯版
func isValid(_ s: String) -> Bool {
    let brackets = Array(s)
    var stack = [Character]()
    for index in brackets {
        if index == "(" || index == "[" || index == "{" {
            stack.append(index)
        }
        if stack.count == 0 && (index == ")" || index == "]" || index == "}") {
            return false
        } else if stack.count != 0 && (index == ")" || index == "]" || index == "}") {
            if (stack.last == "(" && index == ")") || (stack.last == "[" && index == "]") || (stack.last == "{" && index == "}") {
                stack.removeLast()
            }
        }
    }
    if stack.count == 0 {
        return true
    } else {
        return false
    }
}

//正则表达式
func iisValid(_ s: String) -> Bool {
    var sString = s
    for _ in 0 ..< s.count {
        if sString.contains("()") {
            sString = sString.replacingOccurrences(of: "()", with: "")
        } else if sString.contains("[]") {
            sString = sString.replacingOccurrences(of: "[]", with: "")
        } else if sString.contains("{}") {
            sString = sString.replacingOccurrences(of: "{}", with: "")
        }
        if sString.count == 0 {
            return true
        }
    }
    return false
}

print(iisValid("()[]{}"))
