class Solution {
    func countSquares(_ matrix: [[Int]]) -> Int {
        var ans = 0
        let rows = matrix.count
        let cols = matrix[0].count

        var prev = [Int](repeating: 0, count: cols + 1)

        for row in 0..<rows {
            var curr = [Int](repeating: 0, count: cols + 1)
            for col in 1...cols {
                if matrix[row][col - 1] == 1 {
                    curr[col] = 1 + min(prev[col], prev[col - 1], curr[col - 1])
                    ans += curr[col]
                }
            }
            prev = curr
        }

        return ans
    }
}
