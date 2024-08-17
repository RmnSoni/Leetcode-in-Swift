class Solution {
    func maxPoints(_ points: [[Int]]) -> Int {
        let m = points.count
        let n = points[0].count
        var prev = points[0]

        for row in 1..<m{
            var curr = [Int](repeating:Int.min, count: n)

            for cIndex in 0..<n{
                for j in 0..<n{
                    curr[cIndex] = max(curr[cIndex],
                    points[row][cIndex] + prev[j] - abs(cIndex - j))
                }
            }

            prev = curr
        }

        return prev.max()!
    }
}
