class Solution {
    func frequencySort(_ nums: [Int]) -> [Int] {
        var hash = [Int:Int]()
        for num in nums{
            hash[num ,default:0] += 1
        }
        var ans = [Int]()
        for key in hash.keys.sorted(by: {hash[$0]<hash[$1]}){
            for i in 1...hash[key]{
                ans.append(key)
            }
            }   
    }
}
