class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        binarysearch(nums, target)
    }

    func binarysearch(_ nums: [Int], _ target: Int) -> Int {
        var l = 0 // left
        var r = nums.count - 1 // right

        while l <= r {
            let m = l + (r - l)/2 // mid

            if nums[m] == target {
                return m
            }else if nums[r] >= nums[m] {
                if nums[r] >= target && nums[m] < target {
                    l = m + 1
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