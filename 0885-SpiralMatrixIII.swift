class Solution {
    func spiralMatrixIII(_ rows: Int, _ cols: Int, _ rStart: Int, _ cStart: Int) -> [[Int]] {
        var ans = [[Int]]()
        var directions = [[0,1],[1,0],[0,-1],[-1,0]]
        var dir = 0
        var stride = 1
        var row = rStart
        var col = cStart
        var c = 1
        while ans.count < rows*cols{
            for _ in 1...stride{
                if 0<=row && 0<=col && row<rows && col<cols{
                    ans.append([row,col])
                }
                row+=directions[dir][0]
                col+=directions[dir][1]
            }
            dir = (dir + 1)%4
            if c > 1{
                c=1
                stride+=1
            }else{c+=1}
        }
        return ans
    }
}
