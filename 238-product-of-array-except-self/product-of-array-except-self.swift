class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        optimised(nums)
    }

    func bruteforce(_ nums: [Int]) -> [Int] { // TLE
        var result = [Int]()

        for i in 0..<nums.count {
            var prod = 1
            for j in 0..<nums.count {
                if i != j {
                    prod *= nums[j]
                }
            }
            result.append(prod)
        }

        return result
    }

    func optimised(_ nums: [Int]) -> [Int] { 
         var prefix = [1]
         var preprod = 1

         for i in 1..<nums.count {
            preprod = nums[i-1] * preprod
            prefix.append(preprod)
         }

         var suffix = [1]
         var suffprod = 1

         for i in stride(from: nums.count - 2, through: 0,by: -1) {
            suffprod = nums[i + 1] * suffprod
            suffix.append(suffprod)
         }

         suffix = suffix.reversed()
        

        for i in 0..<prefix.count {
            prefix[i] = prefix[i] * suffix[i]
        }

        return prefix
    }
}
