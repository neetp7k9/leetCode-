#!/usr/bin/ruby

class ListNode
   attr_accessor :val, :next
   def initialize(val)
       @val = val
       @next = nil
   end
end
def reverse_k_group(head, k)
    result = check_k_node(head, k)
    return result[0] if result[1] == nil
    answer_head = result[0]
    next_node = result[1]
    answer_node = result[2]

    while next_node != nil
        result = check_k_node(next_node, k)
        answer_node.next = result[0]
        answer_node = result[2]
        next_node = result[1]
    end
    return answer_head
end

def check_k_node(start, k)
    return [nil,nil,nil] if start == nil
    return [start,nil,start] if start.next == nil
    length = 1
    node = start.next
    pre_node = start
    while node != nil && length < k
      length += 1
      pre_node = node
      node = node.next
    end
    return [start,nil,pre_node] if length < k
    length = 1
    next_node = start.next
    start_node = start
    start.next = nil
    while length < k && next_node != nil
      tmp = next_node.next
      next_node.next = start_node
      start_node = next_node
      next_node = tmp
      length += 1
    end
    return [start_node, next_node, start]
end

    
a = ListNode.new(1)
a.next = ListNode.new(2)
head = reverse_k_group(a,2)
while head != nil
  puts head.val
  head=head.next
end
