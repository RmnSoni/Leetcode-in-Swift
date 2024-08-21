class Solution {
    func kthDistinct(_ arr: [String], _ k: Int) -> String {
        var freq = [String:Int]()
        var count = 0

        for s in arr{    
            freq[s,default: 0] += 1
        }

        for s in arr{
            if freq[s] == 1{count += 1}
            if count == k{return s}
        }
        
        return ""
    }
}
