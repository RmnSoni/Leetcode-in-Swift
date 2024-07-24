class Solution {
    func sortJumbled(_ mapping: [Int], _ nums: [Int]) -> [Int] {
        func map( _ num:Int)->Int{
            if num == 0{return mapping[0]}
            var num = num
            var base = 1
            var ret = 0
            while num > 0{
                var digit = num % 10
                ret += mapping[digit] * base
                base *= 10
                num /= 10
            }
            return ret
        }

        var pairs = [[Int]]()
        for (index, num) in nums.enumerated(){
            pairs.append([map(num), index])
        }
        pairs.sort(by: {($0[0] < $1[0]) || ($0[0] == $1[0] && $0[1] < $1[1])})
        var ans = [Int]()
        for pair in pairs{
            ans.append(nums[pair[1]])
        }
        return ans
    }
}
