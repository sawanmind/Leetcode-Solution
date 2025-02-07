class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var l = 0
        var len = 0

        var freq = [Character: Int]()
        var maxfreq = 0
        let s = Array(s)

        for r in 0..<s.count {
            let char = s[r]

            freq[char, default: 0] += 1
            maxfreq = max(maxfreq, freq[char]!)

            let win = r - l + 1

            let replace = win - maxfreq

            if replace > k {
                freq[s[l], default: 0] -= 1
                l += 1
            }

            len = max(len, r - l + 1)
        }

        return len
    }
}