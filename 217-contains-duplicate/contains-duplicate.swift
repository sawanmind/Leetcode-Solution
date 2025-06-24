class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dic = [Int: Int]()

        for num in nums {
            dic[num, default: 0] += 1
        }

        return !dic.filter {$0.value >= 2}.isEmpty
    }
}