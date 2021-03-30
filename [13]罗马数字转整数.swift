class Solution {
    var map:[String: Int] = ["none": 0, "I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000, "IV": 4, ]
    func romanToInt(_ s: String) -> Int {
        let array = Array(s)
        var output = 0
        for index in 0 ..< array.count {
            if map[String(array[index])]! < map[String(array[index + 1]) ?? "none"]! {
                output += -(map[String(array[index])]!)
            } else {
                output += map[String(array[index])]!
            }
        }
        return output
    }
}

var map:[String: Int] = ["none": 0, "I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000, "IV": 4, "IX": 9, "XL": 40, "XC": 90, "CD": 400, "CM": 900]
func romanToInt(_ s: String) -> Int {
    let array = Array(s)
    var output = 0
    for index in 0 ..< array.count {
        if(index == array.count - 1) {
            output += map[String(array[index])]!
        } else {
            if map[String(array[index])]! < map[String(array[index + 1]) ?? "none"]! {
                output += -(map[String(array[index])]!)
            } else {
                output += map[String(array[index])]!
            }
        }
        
    }
    return output
}

print(romanToInt("MCMXCIV"))
