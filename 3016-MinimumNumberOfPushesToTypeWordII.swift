class Solution {
    func index(char:Character)->Int{
        return Int(char.asciiValue!) - 97
    }
    func minimumPushes(_ word: String) -> Int {
        var freqs = [Int](repeating:0 , count:26)
        
        for c in word{
            freqs[index(char: c)]+=1
        }

        let indexes = Array(0...25).sorted(by:{freqs[$0]>freqs[$1]})
        
        var presses = 1
        var ans = 0
        var count = 0

        for i in indexes{
            ans += presses * freqs[i]
            count+=1
            if count >= 8{
            count = 0
            presses += 1
            }
        }

        return ans
    }
}
