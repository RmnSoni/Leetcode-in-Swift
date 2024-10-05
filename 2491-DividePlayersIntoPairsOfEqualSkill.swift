class Solution {
    func dividePlayers(_ skill: [Int]) -> Int {
        var chemistrySum = 0
        let arr = skill.sorted()
        let n = arr.count
        let target = arr.first! + arr.last!
        for i in 0..<(n / 2) {
            if arr[i] + arr[n - 1 - i] != target { return -1 }
            chemistrySum += arr[i] * arr[n - 1 - i]
        }
        return chemistrySum
    }
}
