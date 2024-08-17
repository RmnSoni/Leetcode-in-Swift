class Solution {
    func smallestDistancePair(_ nums: [Int], _ k: Int) -> Int {
        let nums = nums.sorted()
        let n = nums.count
        var low = 0
        var high = nums[n - 1] - nums[0]
        
        while low < high {
            
            let mid = (low + high) / 2
            
            var count = 0
            var left = 0
            
            for right in 0..<n {
                while nums[right] - nums[left] > mid {
                    left += 1
                }
                count += right - left
            }
            
            if count >= k {
                high = mid
            } else {
                low = mid + 1
            }
        }
        
        return low
    }
}
