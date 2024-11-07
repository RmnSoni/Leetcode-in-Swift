class Solution {
    func largestCombination(_ candidates: [Int]) -> Int {
        let limiter = candidates.max()!
        var ander = 1
        var ans = 0
        while ander <= limiter {
            var count = 0
            for num in candidates {
                if ander & num > 0 { count += 1 }
            }
            ans = max(count, ans)
            ander <<= 1
        }
        return ans
    }
}
