class Solution {
    /*
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dic = [Int: Int]()

        for num in nums {
            dic[num, default: 0] += 1
        }

        return !dic.filter {$0.value >= 2}.isEmpty
    }
    */

    func containsDuplicate(_ nums: [Int]) -> Bool {
        var set = Set<Int>()

        for num in nums {
            if set.contains(num) {return true}
            else { set.insert(num) }
        }

        return false
    }
}