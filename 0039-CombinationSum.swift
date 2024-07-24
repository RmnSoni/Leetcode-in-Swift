class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var curr = [Int]()
        var ans = [[Int]]()
        let n = candidates.count
        func rec(_ already: Int, _ index: Int){
            if already == target{
                ans.append(curr)
                return
            }
            if already > target{return}
            guard index < n else{return}

            curr.append(candidates[index])
            rec(already+candidates[index] , index)
            curr.removeLast()
            rec(already, index+1)
        }
        rec(0,0)
        return ans
    }
}
