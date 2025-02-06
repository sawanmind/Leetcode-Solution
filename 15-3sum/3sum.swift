class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        optimised2(nums)
    }

    func bruteforce(_ nums: [Int]) -> [[Int]] { // TLE
       var nums = nums.sorted()
        var result = Set<[Int]>()

        for i in 0..<nums.count {
          for j in i..<nums.count {
            for k in j..<nums.count {
              if i != j && i != k && j != k {
                if nums[i] + nums[j] + nums[k] == 0 {
                  result.insert([nums[i] , nums[j] , nums[k]])
                }
              }
            }
          }
        }

        return Array(result)
    }

    func optimised(_ nums: [Int]) -> [[Int]] {
        var nums = nums.sorted()
        var result = Set<[Int]>()

         for i in 0..<nums.count {
            var l = i + 1
            var r = nums.count - 1

            while l < r {
              let sum = nums[i] + nums[l] + nums[r]
              if sum == 0 {
                  result.insert([nums[i] , nums[l] , nums[r]])
                   l += 1
                   r -= 1
              }else if sum < 0 {
                l += 1
              }else {
                r -= 1
              }
            }
         }
          return Array(result)
    }

    func optimised2(_ nums: [Int]) -> [[Int]] {
        var nums = nums.sorted()
        var result = [[Int]]()

         for i in 0..<nums.count {
            if i > 0 && nums[i] == nums[i-1] {continue}

            var l = i + 1
            var r = nums.count - 1

            while l < r {
              let sum = nums[i] + nums[l] + nums[r]
              if sum == 0 {
                  result.append([nums[i] , nums[l] , nums[r]])
                   l += 1
                   r -= 1
                   while l < r && nums[l] == nums[l-1] { l += 1}
                   while l < r && nums[r] == nums[r+1] { r -= 1}
              }else if sum < 0 {
                l += 1
              }else {
                r -= 1
              }
            }
         }
          return result
    }
}

[3,0,-2,-1,1,2]
[-2,-1,0,1,2,3]