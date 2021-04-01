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

public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var firstNode = l1
        var secondNode = l2
        var prep = ListNode(-1)
        var head: ListNode? = prep
        while firstNode?.val != nil && secondNode?.val != nil {
            if firstNode?.val ?? 0 <= secondNode?.val ?? 0{
                head?.next = firstNode
                firstNode = firstNode?.next
            } else {
                head?.next = secondNode
                secondNode = secondNode?.next
            }
            head = head?.next
        }
        head?.next = firstNode ?? secondNode
        return prep.next
    }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var firstNode = l1
    var secondNode = l2
    var prep = ListNode(-1)
    var head: ListNode? = prep
    while firstNode?.val != nil && secondNode?.val != nil {
        if firstNode?.val ?? 0 <= secondNode?.val ?? 0{
            head?.next = firstNode
            firstNode = firstNode?.next
        } else {
            head?.next = secondNode
            secondNode = secondNode?.next
        }
        head = head?.next
    }
    head?.next = firstNode ?? secondNode
    return prep.next
}

mergeTwoLists([1], [])
