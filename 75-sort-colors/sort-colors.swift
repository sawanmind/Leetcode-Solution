class Solution {
    func sortColors(_ nums: inout [Int]) {
        var l = 0
        var r = nums.count - 1
        var c = 0

        while c <= r {
            if nums[c] == 0 {
                nums.swapAt(l, c)
                l += 1
                c += 1
            }else if nums[c] == 1 {
                c += 1
            }else if nums[c] == 2 {
                nums.swapAt(c, r)
                r -= 1
            }
        }
    }
}