class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var nums = nums
        var result = [[Int]]()

        func solve(_ start: Int) {
            if start == nums.count - 1 {
                result.append(nums)
                return
            }

            for i in start..<nums.count {
                nums.swapAt(i, start)
                solve(start + 1)
                nums.swapAt(i, start)
            }
        }   

        solve(0)    

        return result
    }
}