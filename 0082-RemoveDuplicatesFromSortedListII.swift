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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var start = ListNode(-11000)
        var curr = head
        var checkVal = start.val
        var lastSafe = start
        var prev = start

        while curr != nil{
            if curr.val != checkVal{
                checkVal = prev.val
                lastSafe.next = prev
                lastSafe = lastSafe.next!
            }else{
                check
            }

            prev = curr
            curr = curr.next
        }

        return start.next
    }
}
//TODO: Not complete
