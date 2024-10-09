class Solution {
    func minAddToMakeValid(_ s: String) -> Int {
        var openCount = 0
        var closeCount = 0

        for char in s {
            if char == "(" {
                openCount += 1
            } else if char == ")" && openCount == 0 {
                closeCount += 1
            } else {
                openCount -= 1
            }
        }
        return openCount + closeCount
    }
}
