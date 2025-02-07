class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        bruteforce(s)
    }

    func bruteforce(_ s: String) -> Int {
        var len = 0
        let s = Array(s)

        for i in 0..<s.count {
            var set = Set<Character>()

            for j in i..<s.count {
                if set.contains(s[j]) {
                    break
                }else {
                    set.insert(s[j])
                }
            }

            len = max(len, set.count)
        }
        return len
    }
}