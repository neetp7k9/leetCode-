# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
require './list.rb'

def is_palindrome(head)
    return true if head.nil? || head.next.nil?
    runner = head.next
    walker = head
    while !runner.nil?
        if runner.next.nil?
            head2 = walker.next
            walker.next = nil
            break
        else 
            if runner.next.next.nil?
            	head2 = walker.next.next
                walker.next = nil
	        break
            else
	            runner = runner.next.next
        	    walker = walker.next
	    end
	end
    end
    check(head,reverse(head2))
end
def reverse(head)
    puts "before"
    printList head
    return head if head.nil? || head.next.nil?
    head_node = head
    now_node = head.next
    head.next = nil
    while now_node != nil
        tmp = head_node
        head_node = now_node
        now_node = now_node.next
        head_node.next = tmp
    end
    puts "after"
    printList head_node
    return head_node
end
def check(head1,head2)
    return true unless head1 || head2 
    while(head1!=nil && head2!=nil)
        if head1.val == head2.val
            head1 = head1.next
            head2 = head2.next
        else
            return false
        end
    end
    return false if head1 || head2
    return true
end
