class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var set = Set<Int>()

        for num in nums {
            if set.contains(num) {
                set.remove(num)
            }else {
                set.insert(num)
            }
        }

        return Array(set).last!
    }
}