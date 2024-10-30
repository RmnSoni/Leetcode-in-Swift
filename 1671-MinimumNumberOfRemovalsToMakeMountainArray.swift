class Solution {
    func minimumMountainRemovals(_ nums: [Int]) -> Int {
        let n = nums.count
        var lis = Array(repeating: 1, count: n)
        for i in 1..<n {
            for prev in 0..<i {
                if nums[prev] < nums[i] {
                    lis[i] = max(lis[i], 1 + lis[prev])
                }
            }
        }
        var lds = Array(repeating: 1, count: n)
        for i in (0..<n).reversed() {
            for next in i..<n {
                if nums[next] < nums[i] {
                    lds[i] = max(lds[i], 1 + lds[next])
                }
            }
        }
        var ans = n
        for i in 1..<n {
            if lis[i] > 1 && lds[i] > 1 {
                ans = min(ans, 1 + n - (lis[i] + lds[i]))
            }
        }
        return ans
    }
}
