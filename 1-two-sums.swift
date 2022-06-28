class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        if nums.count >= 2 {
            for i in 0 ... nums.count - 1 {
                for x in i ... nums.count - 1 {
                    let total = nums[i] + nums[x]
                    if total == target && i != x{
                        result = [i,x]
                    }
                }
            }
        }
        return result
    }
}

var solution = Solution().twoSum([3,3], 6)
print(solution)
