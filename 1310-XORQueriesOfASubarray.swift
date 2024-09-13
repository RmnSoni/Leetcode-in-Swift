class Solution {
    func xorQueries(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
        var ans = [Int]()
        var pre = [0]
        for num in arr{
            pre.append(pre.last! ^ num)
        }
        for q in queries{
            ans.append(pre[q[0]] ^ pre[q[1]+1])
        }
        return ans
    }
}
