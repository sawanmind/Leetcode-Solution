class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1

        while l <= r {
            let m = l + (r - l) / 2

            if nums[m] == target {
                return m
            }else if nums[m] < nums[r] {
                if nums[r] >= target && nums[m] < target {
                    l  = m + 1
                }else {
                    r = m - 1
                }
            }else {
                if nums[l] <= target && nums[m] > target {
                    r = m - 1
                }else {
                    l = m + 1
                }
            }
        }

        return -1
    }
}