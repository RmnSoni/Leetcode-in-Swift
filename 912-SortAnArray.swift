class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var nums = nums
        func quicksort(_ start:Int, _ end: Int){
            guard start < end else {return}
            var i = start-1
            let pivotIndex = Int.random(in: start...end)
            let pivot = nums[pivotIndex]
            nums.swapAt(pivotIndex, end)
            for j in start...end{
                if nums[j] < pivot{
                    i += 1
                    nums.swapAt(i,j) 
                }
            }
            i+=1
            nums.swapAt(i,end)
            quicksort( start, i-1 )
            quicksort( i+1, end )
        }
        quicksort(0, nums.count - 1)
        return nums
    }
}
