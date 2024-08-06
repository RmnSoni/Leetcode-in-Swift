class Solution {
    func rangeSum(_ nums: [Int], _ n: Int, _ left: Int, _ right: Int) -> Int {
        var newArray = [0] 
        for start in 0..<nums.count{
            var curr = 0
            for last in start..<nums.count{
                curr += nums[last]
                newArray.append(curr)
            }
        }
        newArray.sort()
        let mod:Int = 1000000000 + 7
        var ans = 0

        for i in left...right{
            ans += newArray[i]
            ans = ans % mod
        }
        
    return ans
    }
}
