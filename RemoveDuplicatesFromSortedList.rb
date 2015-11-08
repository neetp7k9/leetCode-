#!/usr/bin/ruby

class ListNode
   attr_accessor :val, :next
   def initialize(val)
       @val = val
       @next = nil
   end
end
def delete_duplicates(head)
    return head if head == nil || head.next == nil
    answer_head = head
    pre = head.val
    answer_node = head
    node = head.next
    answer_node.next = nil

    while node != nil
        if node.val == pre
           node = node.next 
        else
           pre = node.val
           answer_node.next = node
           answer_node = node
           node = node.next
           answer_node.next = nil
        end
    end
    return answer_head
end
    
a = ListNode.new(1)
a.next = ListNode.new(2)
head = reverse_k_group(a,2)
while head != nil
  puts head.val
  head=head.next
end
