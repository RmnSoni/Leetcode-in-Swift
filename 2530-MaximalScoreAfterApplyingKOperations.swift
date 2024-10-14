import Collections

class Solution {
    func maxKelements(_ nums: [Int], _ k: Int) -> Int {
        var heap = Heap<Int>(nums)
        var score = 0

        for _ in 1...k {
            guard let top = heap.popMax() else { break }
            score += top
            heap.insert((top + 2) / 3)
        }

        return score
    }
}
