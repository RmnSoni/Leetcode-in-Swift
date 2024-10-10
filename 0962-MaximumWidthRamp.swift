class Solution {
    func maxWidthRamp(_ nums: [Int]) -> Int {
        let n = nums.count
        var stack = [0]

        for i in 1..<n {
            if nums[i] < nums[stack.last!] {
                stack.append(i)
            }
        }

        var ans = 0
        for end in (0..<n).reversed() {
            while !stack.isEmpty && nums[stack.last!] <= nums[end] {
                ans = max(end - stack.last!, ans)
                stack.popLast()
            }
        }

        return ans
    }
}
