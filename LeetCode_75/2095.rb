# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def delete_middle(head)
    return nil unless head.next
    
    prev = nil
    slow = head
    quick = head

    while quick&.next
        prev = slow
        slow = slow.next
        quick = quick.next.next
    end

    # middle = slow
    prev.next = slow.next
    slow.next = nil
    head
end
