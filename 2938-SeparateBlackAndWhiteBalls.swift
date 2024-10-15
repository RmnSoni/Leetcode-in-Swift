class Solution {
    func minimumSteps(_ s: String) -> Int {
        var lastZero = 0
        var ans = 0

        for (index, char) in s.enumerated() {
            if char == "0" {
                ans += index - lastZero
                lastZero += 1
            }
        }

        return ans
    }
}
