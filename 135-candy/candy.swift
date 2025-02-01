class Solution {
    func candy(_ ratings: [Int]) -> Int {
        bruteforce(ratings)
    }

    func bruteforce(_ ratings: [Int]) -> Int {
        var result = Array(repeating: 1, count: ratings.count)
        let n = ratings.count
        
        for i in 1..<n {
            if ratings[i] > ratings[i-1] {
                result[i] = result[i-1] + 1
            }
        }

        for i in stride(from: n - 2, through: 0, by: -1) {
            if ratings[i] > ratings[i+1] {
                result[i] = max(result[i], result[i+1] + 1)
            }
        }


        return result.reduce(0,+)
    }
}