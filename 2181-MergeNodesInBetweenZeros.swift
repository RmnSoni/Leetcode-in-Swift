/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeNodes(_ head: ListNode?) -> ListNode? {
        var ans = ListNode()
        var ansTail = ans
        var sum = 0
        var curr = head
        while ( curr != nil){
            if curr!.val == 0{
                if sum > 0{
                    ansTail.next = ListNode(sum)
                    ansTail = ansTail.next!
                    sum = 0
                }
            }
            else{
                sum += curr!.val
            }
            curr = curr!.next
        }
        return ans.next
    }
}
