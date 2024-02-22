class Solution {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        var freq=Array(repeating:0, count:(n+1) )
        if n==1{
            return 1
        }
        for pair in trust{
            freq[pair[0]]-=1
            freq[pair[1]]+=1
        }

        if let ans = freq.firstIndex(of:n-1){
            return ans
        }else{
            return -1
        }
    }
}
