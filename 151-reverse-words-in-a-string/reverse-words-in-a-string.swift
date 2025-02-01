class Solution {
    func reverseWords(_ s: String) -> String {
        optimised(s)
    }

    func bruteforce(_ s: String) -> String {
        var s = s.components(separatedBy: .whitespacesAndNewlines)
        s.removeAll(where: {$0 == ""})

        s = s.reversed()

        var result = ""
        
        for word in s {
            result += word
            result += " "
        }
        result.removeLast()

        return result
    }

     func optimised(_ s: String) -> String {
        return s.split(separator: " ").reversed().joined(separator: " ")
    }
}