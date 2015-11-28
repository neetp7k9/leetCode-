#!/usr/bin/ruby
# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
    return head if head.nil?
    tmp = ListNode.new(nil)
    tmp.next = head
    now = tmp
    while now.next != nil
        if now.next.val == val
            now.next = now.next.next
        else
            now = now.next
        end
    end
    return tmp.next
end
node = remove_elements(ListNode.new(1),1)
while node
    puts node.val
    node = node.next
end
