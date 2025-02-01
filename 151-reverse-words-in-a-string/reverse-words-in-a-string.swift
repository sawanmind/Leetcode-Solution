class Solution {
    func reverseWords(_ s: String) -> String {
        bruteforce(s)
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
}