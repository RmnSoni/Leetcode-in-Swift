class Solution {
    func checkValidString(_ s: String) -> Bool {
        
        var minOpen = 0
        var maxOpen = 0

        for char in s{
            if char == "("{
                minOpen += 1
                maxOpen += 1
            }
            else if char == "*"{
                minOpen -= 1
                maxOpen += 1
            }else{
                minOpen -= 1
                maxOpen -= 1
            }
            
            if maxOpen < 0{
                return false
            }
            if minOpen < 0{
                minOpen = 0
            }

        }

        return minOpen == 0
    }
}
