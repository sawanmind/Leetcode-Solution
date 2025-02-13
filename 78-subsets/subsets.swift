class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()

        var output = [Int]()

        func solve(_ start: Int, _ output: inout [Int]) {
            result.append(output)

            for i in start..<nums.count {
                output.append(nums[i])
                solve(i + 1, &output)
                output.removeLast()
            }
        }

        solve(0, &output)

        return result
    }
}