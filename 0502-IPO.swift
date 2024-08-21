class Solution {
    func findMaximizedCapital(_ k: Int, _ w: Int, _ profits: [Int], _ capital: [Int]) -> Int {
        //heap
        //do heapify banao
        let n = profits.count
        var caps = Array(0..<n)
        var heap = [Int]()
        
        caps.sort(by:{capital[$0] < capital[$1]})
        
        func insert(_ val: Int){
            heap.append(val)
            var idx = heap.count - 1
            while idx > 0 {
                let parent = (idx-1)/2
                if heap[parent] < heap[idx]{
                    heap.swapAt(parent, idx)
                    idx = parent
                }else{
                    break
                }
            }
        }
        
        func pop() -> Int?{
            guard !heap.isEmpty else {return nil}
            
            let ret = heap[0]
            heap[0] = heap.removeLast()
            
            var root = 0
            
            while 2*root + 1 < heap.count{
                
                let left = root*2 + 1
                let right = root*2 + 2
                var bigger = root
                
                if right < heap.count && heap[right] > heap[bigger]{
                    bigger = right
                }
                if heap[left] > heap[bigger]{
                    bigger = left
                }
                if bigger == root{
                    break
                }
                
                heap.swapAt(root, bigger)
                root = bigger
            }
            return ret
        }
        
        var wealth = w
        var added = 0
        var i = 0
        
        while added < k{
            
            while i < caps.count && capital[caps[i]] <= wealth{
                insert(profits[caps[i]])
                i += 1
            }
            
            if let curr = pop(){
                wealth += curr
            }else{
                break
            }

            added += 1
        }
        return wealth
    }
}
