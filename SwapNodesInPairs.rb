#!/usr/bin/ruby

class ListNode
   attr_accessor :val, :next
   def initialize(val)
       @val = val
       @next = nil
   end
end
def swap_pairs(head)
    return head if head == nil || head.next == nil
    answer_head = head.next
    next_node = head.next.next
    answer_head.next = head
    answer_node = head
    answer_node.next = nil
    while next_node != nil
        if next_node.next == nil 
            answer_node.next = next_node
            answer_node.next.next = nil
            break
        end
        answer_node.next = next_node.next
        tmp_node = next_node.next.next
        answer_node.next.next = next_node
        answer_node = next_node
        answer_node.next = nil
        next_node = tmp_node
    end
    return answer_head
end
a = ListNode.new(1)
a.next = ListNode.new(2)
head = swap_pairs(a)
while head != nil
  puts head.val
  head=head.next
end
