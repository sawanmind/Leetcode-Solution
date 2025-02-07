class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        binarySearch(nums)
    }

    func bruteforce(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return 0
        }

        for i in 0..<nums.count {
            if i == 0 {
                if nums[i] > nums[i+1] {return i}
            }else if i == nums.count - 1 {
                if nums[i] > nums[i-1] {return i}
            }else {
                if nums[i] > nums[i-1] && nums[i] > nums[i+1] {return i}
            }
        }

        return -1
    }

     func binarySearch(_ nums: [Int]) -> Int {
        var l = 0 // left
        var r = nums.count - 1 // right

        while l < r {
            let m = l + (r - l) / 2 // mid

            if nums[m] < nums[m+1] {
                l = m + 1
            }else {
                r = m
            }
        }

        return l
     }
}