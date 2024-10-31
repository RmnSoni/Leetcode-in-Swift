class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var hash = [Character: Int]()
        var ans = 0
        var left = -1
        for (right, char) in s.enumerated() {
            if hash[char, default: -1] > left {
                left = hash[char]!
            }
            ans = max(ans, right - left)
            hash[char] = right
        }
        return ans
    }
}
