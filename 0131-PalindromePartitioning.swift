class Solution {
    func partition(_ s: String) -> [[String]] {
        var ans = [[String]]()
        var curr = ""
        var list = [String]()
        func checkPalindrome(_ arr: [Character])->Bool {
            for i in 0..<arr.count/2{
                if arr[i] != arr[arr.count-1-i]{return false}
            }
            return true
        }

        func rec(_ i :Int){
            guard i < s.count else{
                if curr == ""{ans.append(list)}
                return 
            }
            let index = s.index (s.startIndex, offsetBy: i )
            curr.append(s[index])
            rec(i+1)
            
            if checkPalindrome(Array(curr)){
                list.append(curr)
                curr = ""
                rec(i+1)
                curr = list.popLast() ?? ""
            }
            curr.removeLast()
        }

        rec(0) 
        return ans      
    }
}
