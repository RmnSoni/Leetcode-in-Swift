class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var ans = [Int](repeating: 0, count: nums.count)

        var l = 0
        var r = nums.count - 1
        
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            if nums[l] * nums[l] < nums[r] * nums[r]{
                ans[i] = nums[r] * nums [r]
                r -= 1
            }else {
                ans[i] = nums[l] * nums [l]
                l += 1
            }
        }
        return ans
    }
}
