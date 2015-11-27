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
def delete_duplicates(head)
    return head unless head
    tmp = ListNode.new(0)
    tmp.next = head
    pre = tmp
    now = head
    while now != nil
        node = check now
        if node == now
            pre = now
            now = now.next
        else
            pre.next = node
            now = node
        end
    end
    return tmp.next
end
def check(head)
    return head unless head
    now = head
    while now.next!=nil && now.next.val == now.val
        now = now.next
    end
    return now.next if head != now
    return head
end
