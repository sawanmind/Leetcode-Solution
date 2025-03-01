import Collections

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        optimised(nums, k)
    }


    func bruteforce(_ nums: [Int], _ k: Int) -> [Int] {
        var hashMap = [Int: Int]()

        for num in nums {
            hashMap[num, default: 0] += 1
        }

        return Array(hashMap.sorted {$0.value > $1.value}.map {$0.key}.prefix(k))
    }

    func optimised(_ nums: [Int], _ k: Int) -> [Int] {
        var dic = [Int: Int]()

        for num in nums {
            dic[num, default: 0] += 1
        }

        var heap = Heap<HElement>()

        for (key, val) in dic {
            heap.insert(HElement(key:key , value:val))
        }

        var result = [Int]()

        for i in 0..<k {
            if let key = heap.popMax()?.key {
                result.append(key)
            } 
        }

        return result
    }
}

struct HElement: Comparable {
    var key: Int
    var value: Int
    
    static func > (lhs: HElement, rhs: HElement) -> Bool {
        return lhs.value > rhs.value
    }
    
    static func < (lhs: HElement, rhs: HElement) -> Bool {
        return lhs.value < rhs.value
    }
    
    static func >= (lhs: HElement, rhs: HElement) -> Bool {
        return lhs.value >= rhs.value
    }
    
    static func <= (lhs: HElement, rhs: HElement) -> Bool {
        return lhs.value <= rhs.value
    }
}
