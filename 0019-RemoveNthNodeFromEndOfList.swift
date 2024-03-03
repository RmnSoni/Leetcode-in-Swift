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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        
        var tail = head
        var curr = head
        
        for _ in 1...n{
            tail = tail?.next
        }
        if tail == nil{
            return head?.next
        }
        while tail?.next != nil{
            tail = tail?.next
            curr = curr?.next
        }
        curr?.next = curr?.next?.next
        
        return head
    }
}
