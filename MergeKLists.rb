#!/usr/bin/ruby
class ListNode
   attr_accessor :val, :next
   def initialize(val)
       @val = val
       @next = nil
   end
end
def merge_k_lists(lists)
    candiate = []
    lists.each do |n|
        candiate.push n if n != nil
    end
    return nil if candiate.length == 0
    candiate.sort_by! {|a| -a.val }
    tmp = candiate.pop
    head = tmp
    candiate.push tmp.next if tmp.next != nil
    candiate.sort_by! {|a| -a.val }
    while candiate.length !=0
      tmp.next = candiate.pop
      tmp = tmp.next
      candiate.push tmp.next if tmp.next != nil
      candiate.sort_by! {|a| -a.val }
    end
    return head
end
a = ListNode.new(1)
a.next = ListNode.new(2.5)
b = ListNode.new(2)
c = ListNode.new(3)
head = merge_k_lists([a,b,c])
while head != nil
  puts head.val
  head=head.next
end
