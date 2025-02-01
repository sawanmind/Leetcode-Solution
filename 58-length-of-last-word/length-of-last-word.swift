class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        optimised(s)
    }

    func bruteforce(_ s: String) -> Int {
        var s = s.components(separatedBy: .whitespacesAndNewlines)
        s.removeAll(where: {$0 == ""})
        
        return s[s.count - 1].count
    }

    func optimised(_ s: String) -> Int {
        var count = 0
        var started = false
        
        for char in s.reversed() {
            if char != " " {
                started = true
                count += 1
            }else {
                if started { break }
            }
        }
        return count
    }
}