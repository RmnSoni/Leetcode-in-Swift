class Solution {
    func longestSubarray(_ nums: [Int]) -> Int {
        //kadane's
        let target = nums.max()!
        var ans = 0
        var and = Int.max
        var curr = 0 
        
        for x in nums{
            and &= x
            
            if and < target{
                curr = 0
                and = Int.max
            }else{
                curr += 1
            }
            ans = max(curr,ans)
        }

        return ans
    }
}
