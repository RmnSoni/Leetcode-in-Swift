class Solution {
    func totalNQueens(_ n: Int) -> Int {
        var freeFile = [Bool](repeating:true, count:n)
        var freePos = [Bool](repeating:true, count:2*n)
        var freeNeg = [Bool](repeating:true, count:2*n)


        func rec(_ rank:Int)->Int{
            if rank >= n{
                return 1
            }
            var ret = 0
            for file in 0..<n{
                guard freeFile[file] &&  freePos[file+rank] && freeNeg[n+file-rank] else{
                    continue
                }
                //place here
                freeFile[file] = false  
                freePos[file+rank] = false 
                freeNeg[n+file-rank] = false

                ret += rec(rank+1)
                //
                freeFile[file] = true  
                freePos[file+rank] = true
                freeNeg[n+file-rank] = true
            }
            return ret
        }
        return rec(0)
        
    }
}

