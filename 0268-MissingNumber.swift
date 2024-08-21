class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let n = nums.count
        var sum = (n*(n+1))/2
        for i in nums{
            sum-=i
        }
        return sum 
    }
}