class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        bruteforce(s)
    }

    func bruteforce(_ s: String) -> Int {
        var s = s.components(separatedBy: .whitespacesAndNewlines)
        s.removeAll(where: {$0 == ""})
        
        return s[s.count - 1].count
    }
}