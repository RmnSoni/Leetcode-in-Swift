class Solution {
    func trap(_ height: [Int]) -> Int {
        let n = height.count
        if n < 3 { return 0 }
        var water = 0
        var pref = [Int](repeating: 0, count: n)
        var suff = [Int](repeating: 0, count: n)
        for i in 1..<n {
            pref[i] = max(pref[i - 1], height[i - 1])
        }
        for i in 2...n {
            suff[n - i] = max(suff[1 + n - i], height[1 + n - i])
        }
        for i in 0..<n {
            water += max(0, min(suff[i], pref[i]) - height[i])
        }
        return water
    }
}
