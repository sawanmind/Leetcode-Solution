class Solution {
    func rob(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else {return 0}
        if nums.count == 1 {return nums[0]}
        if nums.count == 2 {return max(nums[0], nums[1])}

        let rob1 = robber(Array(nums[0..<nums.count - 1])) 
        let rob2 = robber(Array(nums[1..<nums.count])) 
        return max(rob1, rob2)
    }

    func robber(_ nums: [Int]) -> Int {
       
        var dp = Array(repeating: 0, count: nums.count)
        dp[0] = nums[0]
        dp[1] = max(nums[0], nums[1])

        for i in 2..<nums.count {
            dp[i] = max(nums[i] + dp[i-2], dp[i-1])
        }

        return dp[nums.count - 1]
    }
}