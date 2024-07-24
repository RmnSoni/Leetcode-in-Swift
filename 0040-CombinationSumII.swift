class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var curr = [Int]()
        var ans = [[Int]]()
        let arr = candidates.sorted()
        let n = candidates.count
        func rec(_ already: Int, _ index: Int){
            if already == target{
                ans.append(curr)
                return
            }
            if already > target{return}
            guard index < n else{return}
            var next = index + 1
            while(next < n && arr[next] == arr[index]){
                next += 1
            }
            curr.append(arr[index])
            rec(already+arr[index] , index+1)
            curr.removeLast()
            rec(already, next)
        }
        rec(0,0)
        return ans       
    }
}
