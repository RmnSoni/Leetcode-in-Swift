class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var ans = [[Int]]()
        let n = nums.count
        var curr = [Int]()
        func rec(_ i:Int){
            guard i < n else{
                ans.append(curr)
                return
            }
            rec(i+1)
            curr.append(nums[i])
            rec(i+1)
            curr.removeLast()
        }
        rec(0)
        return ans
    }
}
