class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        optimised(nums)
    }

    func bruteforce(_ nums: [Int]) -> Int {
        let n = nums.count

        if n == 1 {return 0}

        for i in 0..<nums.count {
            if i == 0 {
                if nums[i] > nums[i+1] {return i}
            }else if i == n - 1 {
                if nums[i] > nums[i-1] {return i}
            }else {
                if nums[i] > nums[i-1] && nums[i] > nums[i+1] {return i}
            }
        }

        return -1
    }

    func optimised(_ nums: [Int]) -> Int {
        let n = nums.count
        var left = 0
        var right = n - 1

        while left < right {
            let mid = left + (right - left)/2

            if nums[mid] < nums[mid+1] {
                left = mid + 1
            }else {
                right = mid
            }
        }
        
        return left
    }
}