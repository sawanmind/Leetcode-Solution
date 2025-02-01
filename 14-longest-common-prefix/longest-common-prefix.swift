class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        bruteforce(strs)
    }

    func bruteforce(_ strs: [String]) -> String {
        var prefix = strs[0]
        
        var i = 1

        while i < strs.count {
            while !strs[i].hasPrefix(prefix) {
                prefix.removeLast()
                if prefix == "" {return ""}
            }
            
            i += 1
        }
        return prefix
    }
}