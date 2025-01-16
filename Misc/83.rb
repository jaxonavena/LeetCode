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
def delete_duplicates(head)
    return [] unless head
    curr = head
    ans = []
    while curr.next # iterates linked list til curr.next == nil
        val = curr.val
        next_ = curr.next
        
        if next_.val == val
            curr.next = next_.next # reassign curr -> skip one node
            next_.next = nil # detach the skipped node
        else
            ans.append(curr.val) # add current node to answer
            curr = next_ # incrementing in value, so step to next node
        end
    end
    ans.append(curr.val) # append last node
end
