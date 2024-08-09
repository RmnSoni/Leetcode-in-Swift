class Solution {
    func numMagicSquaresInside(_ grid: [[Int]]) -> Int {
        
        func check3x3(_ i:Int ,_ j:Int )->Bool{
            var already = [Bool](repeating: false , count: 10)
            
            //checkrows checkDuplicates
            for r in i...i+2{
                var sum = 0
                for c in j...j+2{
                    sum += grid[r][c]
                    if grid[r][c] > 9 || grid[r][c] < 1{
                        return false
                    }
                    if already[grid[r][c]] {return false}
                    already[grid[r][c]] = true
                }
                if sum != 15{return false}
            }
            //check cols
            for c in j...j+2{
                var sum = 0
                for r in i...i+2{
                    sum += grid[r][c]
                }
                if sum != 15{return false}
            }
            //check diags
            if grid[i][j]+grid[i+1][j+1]+grid[i+2][j+2] != 15{return false}
            if grid[i+2][j]+grid[i+1][j+1]+grid[i][j+2] != 15{return false}

            return true
        }

        var rows = grid.count
        var cols = grid[0].count

        guard rows >= 3, cols >= 3 else{return 0}

        var ans = 0
        for r in 0..<rows-3{
            for c in 0..<cols-3{
                print
                ans += check3x3(r,c) ? 1 : 0
            }
        }

        return ans

    }
}
