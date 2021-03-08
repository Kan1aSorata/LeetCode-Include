import Foundation

class Solution {
    func fib(_ n: Int) -> Int {
        if n == 0 {
            return 0
        }
        var f = [Int](repeating: 0, count: n + 1)
        f[1] = 1
        if n < 2 {
            return n
        } else {
            for i in 2 ... n {
                f[i] = (f[i - 1] + f[i - 2]) % 1000000007
            }
            return f[n]
        }
    }
}
