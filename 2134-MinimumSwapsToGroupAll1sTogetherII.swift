class Solution {
    func minSwaps(_ nums: [Int]) -> Int {
        let n = nums.count
        let windowSize = nums.filter({$0 == 1}).count
        var ones = nums[0..<windowSize].filter({$0 == 1}).count
        var ans = n

        for i in 0..<n{
            if nums[i] == 1{ones -= 1}
            if nums[(i+windowSize)%n] == 1{ones += 1}
            ans = min(ans,windowSize-ones)
        }

        return ans
    }
}
