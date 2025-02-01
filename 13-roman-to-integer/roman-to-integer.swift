class Solution {
    func romanToInt(_ s: String) -> Int {
        bruteforce(s)
    }

    func bruteforce(_ s: String) -> Int {
        let map = ["I":1,
                    "V":5,
                    "X":10,
                    "L":50,
                    "C":100,
                    "D":500,
                    "M":1000,
                    "IV":4,
                    "IX":9,
                    "XL":40,
                    "XC":90,
                    "CD":400,
                    "CM":900]
        let s = Array(s)
        var num = 0
        let n = s.count
        var i = 0 

        while i < n {
            if (i+1) < n {
                if let val = map[String(s[i...i+1])] {
                    num += val
                    i += 2
                }else if let val = map[String(s[i])] {
                    num += val
                    i += 1
                }
            }else {
                if let val = map[String(s[i])] {
                    num += val
                }
                i += 1
            }
        }

        return num
    }
}
