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
    func gcf(_ x:Int , _ y:Int)->Int{
        var a = max(x,y)               
        var b = min(x,y)
        var t = 0

        while b > 0{
            t = a
            a = b
            b = t%a
        }

        return a
    }

    func insertGreatestCommonDivisors(_ head: ListNode?) -> ListNode? {

        guard var prev = head else {return head}
        var next = prev.next

        while let itr = next{
            var newNode = ListNode(gcf(prev.val, itr.val), next)
            prev.next = newNode
            prev = itr
            next = itr.next
        }

        return head
    }
}
