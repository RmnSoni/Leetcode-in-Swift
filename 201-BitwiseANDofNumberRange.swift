class Solution {
    func rangeBitwiseAnd(_ left: Int, _ right: Int) -> Int {
        var ans = 0
        var runner = 1 << 31
        
        for _ in 0..<32 {
            let n1 = left & runner
            let n2 = right & runner
            
            if n1 != n2 {
                break
            }
            
            if runner != 0 {
                ans |= n1
            }
            
            runner >>= 1
        }
        
        return ans
    }
}
