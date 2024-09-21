class Solution {
    func lexicalOrder(_ n: Int) -> [Int] {
        var lexicalList = [Int]()
        var currentNum = 1
        
        for _ in 1...n{
            lexicalList.append(currentNum)

            if currentNum*10 <= n{
                currentNum  *= 10
            }else{
                while currentNum % 10 == 9 || currentNum == n{
                    currentNum /= 10
                }
                currentNum += 1
            }
        }
        
        return lexicalList
    }
}
