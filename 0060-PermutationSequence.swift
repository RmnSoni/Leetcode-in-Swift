class Solution {
    func getPermutation(_ n: Int, _ k: Int) -> String {
        var used = [Bool](repeating:false, count: n+1)
        var ans = ""
        var fact = [Int](repeating:1, count: 10)
        for i in 2...9{fact[i] = i * fact[i-1]}

        func rec(bada :Int, div: Int){
            if div == 0 { return }
            var rem = (bada) / fact[div]
            
            for i in 1...n{
                if used[i] { continue }
                if rem == 0{
                    ans.append(String(i))
                    used[i] = true
                    break
                }
                rem -= 1
            }
            rec(bada: bada % fact[div], div: div-1)
            return
        }

        rec(bada:k-1, div:n-1)

        for i in 1...n{
            if !used[i]{
                ans.append(String(i))
            }
        }

        return ans
    }
}
