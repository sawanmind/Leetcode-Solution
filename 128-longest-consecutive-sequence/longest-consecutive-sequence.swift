class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        optimised(nums)
    }

    func optimised(_ nums: [Int]) -> Int {
        var set = Set(nums)
        var len = 0
    
        for num in set {
            if !set.contains(num-1) {
                var curr = num
                var temp = 0

                while set.contains(curr) {
                    temp += 1
                    curr += 1
                }

                len = max(len, temp)
            }
        }

        return len
    }

    func bruteforce(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else {return 0}

        var nums = nums.sorted()

        var len = 0
        var temp = 1

        for i in 0..<nums.count - 1 {
            if nums[i] == nums[i+1] {
                continue
            }
            else if nums[i] + 1 == nums[i+1] {
                temp += 1
            }else {
                len = max(len, temp)
                temp = 1
            }
        }

        len = max(len, temp)

        return len
    }
}