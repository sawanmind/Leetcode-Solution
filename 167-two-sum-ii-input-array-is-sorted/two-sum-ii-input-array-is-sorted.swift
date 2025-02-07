class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        optimised(numbers,target)
    }

    func optimised(_ numbers: [Int], _ target: Int) -> [Int] {
        var l = 0
        var r = numbers.count - 1

        while l < r {
            let sum = numbers[l] + numbers[r]

            if sum == target {
                return [l+1, r+1]
            }else if sum < target {
                l += 1
            }else {
                r -= 1
            }
        }
        return [-1,-1]
    }

    func bruteforce(_ numbers: [Int], _ target: Int) -> [Int] {
        for i in 0..<numbers.count {
            for j in (i+1)..<numbers.count {
                if numbers[i] + numbers[j] == target {
                    return [i+1, j+1]
                }
            }
        }

        return [-1,-1]
    }
}