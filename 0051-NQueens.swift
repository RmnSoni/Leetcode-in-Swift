class Solution {
    func solveNQueens(_ n: Int) -> [[String]] {
        var freeFile = [Bool](repeating:true, count:n)
        var freePos = [Bool](repeating:true, count:2*n)
        var freeNeg = [Bool](repeating:true, count:2*n)

        var ans = [[String]]()
        var curr = [String]()
        
        func rankStr(f :Int)->String{
            var ret = ""
            for i in 0..<f{
                ret.append(".")
            }
            ret.append("Q")
            var c = f+1
            while(c<n){
                ret.append(".")
                c+=1
            }
            return ret
        }

        func rec(_ rank:Int){
            if rank >= n{
                ans.append(curr)
            }
            
            for file in 0..<n{
                guard freeFile[file] &&  freePos[file+rank] && freeNeg[n+file-rank] else{
                    continue
                }
                //place here
                freeFile[file] = false  
                freePos[file+rank] = false 
                freeNeg[n+file-rank] = false
                curr.append(rankStr(f: file))

                rec(rank+1)
                //
                freeFile[file] = true  
                freePos[file+rank] = true
                freeNeg[n+file-rank] = true
                curr.removeLast()
            }
            return
        }
        rec(0)
        return ans
    }
}

