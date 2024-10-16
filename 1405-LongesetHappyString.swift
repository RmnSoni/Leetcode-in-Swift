class Solution {
    func longestDiverseString(_ a: Int, _ b: Int, _ c: Int) -> String {
        var ans: String = ""
        var counts: [Character: Int] = ["a": a, "b": b, "c": c]

        while true {
            var tuple = counts.max { $0.value < $1.value }!

            if [tuple.key, tuple.key] == ans.suffix(2) {
                tuple = counts.filter { $0.key != tuple.key }.max { $0.value < $1.value }!
            }
            if tuple.value < 1 { break }
            ans.append(tuple.key)
            counts[tuple.key]! -= 1
        }

        return ans
    }
}
