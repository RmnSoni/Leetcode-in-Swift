class Solution {
    func minGroups(_ intervals: [[Int]]) -> Int {
        var starts = [Int]()
        var ends = [Int]()

        for inter in intervals {
            starts.append(inter[0])
            ends.append(inter[1])
        }

        starts.sort()
        ends.sort()

        var started = 0
        var ended = 0
        var ans = 0

        while started < intervals.count {
            if starts[started] <= ends[ended] { started += 1 } else { ended += 1 }
            ans = max(ans, started - ended)
        }

        return ans
    }
}
