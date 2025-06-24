class Solution {
    /*
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
    */

    func singleNumber(_ nums: [Int]) -> Int {
        var dic = [Int: Int]()

        for num in nums {
            dic[num, default: 0] += 1
        }

        return dic.filter({$0.value == 1}).first?.key ?? -1
    }
}