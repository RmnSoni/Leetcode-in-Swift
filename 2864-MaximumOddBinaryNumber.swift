class Solution {
    func maximumOddBinaryNumber(_ s: String) -> String {
        let n = s.count
        let ones = s.filter{$0 == "1"}.count

        if ones == n{
            return s
        }

        var ans = ""

        for _ in 1 ..< ones{
            ans.append("1")
        }

        for _ in 1 ... (n-ones){
            ans.append("0")
        }

        ans.append("1")

        return ans
    }
}
