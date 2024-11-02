class Solution {
    func makeFancyString(_ s: String) -> String {
        guard s.count >= 3 else { return s }
        var ans = String(s.prefix(2))

        for char in s.dropFirst(2) {
            if ans.suffix(2) == String(repeating: char, count: 2) { continue }
            ans.append(char)
        }
        return ans
    }
}
