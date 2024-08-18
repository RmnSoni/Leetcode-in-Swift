class Solution {
    func nthUglyNumber(_ n: Int) -> Int {
        if n == 1{return 1}
        var nums = [1]
        var i2 = 0
        var i3 = 0
        var i5 = 0

        for i in 2...n{
            let next = min(nums[i2]*2,nums[i3]*3,nums[i5]*5)
            nums.append(next)
            if next == nums[i2]*2{i2+=1}
            if next == nums[i3]*3{i3+=1}
            if next == nums[i5]*5{i5+=1}
        }

        return nums.last!
    }
    }
