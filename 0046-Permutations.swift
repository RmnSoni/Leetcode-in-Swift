class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        let n = nums.count
        var available = [Bool](repeating:true, count:n)
        var ans = [[Int]]()
        var curr = [Int]()
        func rec(){
            guard curr.count<n else{
                ans.append(curr)
                return
            }
            for i in 0..<n{
                guard available[i] else {continue}
                curr.append(nums[i])
                available[i] = false
                rec()
                curr.removeLast()
                available[i] = true
            }
            return
        }
        rec()
        return ans
    }
}
