import Collections

class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var heap = Heap<Int>()

        for num in nums {
            heap.insert(num)
        }

        for _ in 0..<k-1 {
            _ = heap.popMax()
        }       

        return heap.popMax() ?? -1 
    }
}