# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def insertion_sort_list(head)
    return head if head.nil? || head.next.nil?
    now = head.next
    tmp = ListNode.new(nil)
    tmp.next = head
    while !now.nil?
        pos = tmp
        while pos.next != now
            if pos.next.val >= now.val
                tmp2 = now
                now = now.next
                tmp2.next = pos.next
                pos.next = tmp2
            else
                pos = pos.next
            end
        end
        now = now.next
    end
    return tmp.next
end
