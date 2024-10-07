class Solution {
    func areSentencesSimilar(_ sentence1: String, _ sentence2: String) -> Bool {
        let s1 = sentence1.split(separator: " ")
        let s2 = sentence2.split(separator: " ")

        if s1.count > s2.count { return areSentencesSimilar(sentence2, sentence1) }

        var l1 = 0
        while l1 < s1.count && s1[l1] == s2[l1] {
            l1 += 1
        }
        var r1 = s1.count - 1
        var r2 = s2.count - 1

        while r1 >= l1 && s1[r1] == s2[r2] {
            r1 -= 1
            r2 -= 1
        }

        return l1 > r1
    }
}
