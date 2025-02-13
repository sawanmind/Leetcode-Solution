class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var len = 0
        var dp = Array(repeating: 1, count: nums.count)

        for i in 0..<nums.count {
            for j in 0..<i {
                if nums[i] > nums[j] {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }

            len = max(dp[i], len)
        }

        return len
    }
}