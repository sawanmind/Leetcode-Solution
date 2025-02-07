class Solution {
    func rob(_ nums: [Int]) -> Int {
        optimised(nums)
    }

    func bruteforce(_ nums: [Int]) -> Int {
        let n = nums.count

        func solve(_ i: Int) -> Int {
            if i >= n {return 0}

            return max((nums[i] + solve(i + 2)), solve(i + 1))
        }

        return solve(0)
    }

    func optimised(_ nums: [Int]) -> Int {
        let n = nums.count
        
        if n == 1 {
          return nums[0]
        }

        if n == 2 {
          return max(nums[0], nums[1])
        }

        var dp = Array(repeating: 0, count: n)
        dp[0] = nums[0]
        dp[1] = max(nums[0], nums[1])
       

        for i in 2..<n {
          dp[i] = max((nums[i] + dp[i - 2]), dp[i - 1])
        }

        return dp[n - 1]
    }
}

