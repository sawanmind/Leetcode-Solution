class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()

        let first = firstPosition(nums, target)
        let last = lastPosition(nums, target)

        return [first, last]
    }

    private func firstPosition(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var result = -1

        while left <= right {
            let mid = left + (right - left)/2

            if nums[mid] == target {
                result = mid
                right = mid - 1
            }else if nums[mid] < target {
                left = mid + 1
            }else {
                right = mid - 1
            }
        }
        return result
    }

    private func lastPosition(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var result = -1

        while left <= right {
            let mid = left + (right - left)/2

            if nums[mid] == target {
                result = mid
                left = mid + 1
            }else if nums[mid] < target {
                left = mid + 1
            }else {
                right = mid - 1
            }
        }
        return result
    }
}
