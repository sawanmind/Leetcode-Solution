import Foundation

class Solution {
    func hIndex(_ citations: [Int]) -> Int {
        bruteforce(citations)
    }

    func bruteforce(_ citations: [Int]) -> Int {
        let citations = citations.sorted(by: {$0 > $1})

        var h = 0

        for i in 0..<citations.count {
            if citations[i] >= i + 1 {
                h += 1
            }
        }

        return h
    }
}
