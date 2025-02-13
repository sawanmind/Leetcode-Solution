class Solution {

    func lengthOfLIS(_ nums: [Int]) -> Int {
        var result = [Int]()

        for i in 0..<nums.count {
            let j = search(nums[i])

            if j < result.count {
                result[j] = nums[i]
            }else {
                result.append(nums[i])
            }
        }

        return result.count

        func search(_ target: Int) -> Int {
            var l = 0
            var r = result.count - 1

            while l <= r {
                let m = l + (r - l) / 2

                if target > result[m] {
                    l = m + 1
                }else {
                    r = m - 1
                }
            }

            return l
        }
    }

    /*
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
    */
}