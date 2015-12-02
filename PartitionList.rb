# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
    return head if head.nil?
    smaller = ListNode.new(nil)
    smaller_now = smaller
    bigger = ListNode.new(nil)
    bigger_now = bigger
    while !head.nil?
        if head.val < x
            smaller_now.next = head
            smaller_now = head
        else
            bigger_now.next = head
            bigger_now = head
        end
        head = head.next
    end

    smaller_now.next = bigger.next
    bigger_now.next = nil
    return smaller.next
end
