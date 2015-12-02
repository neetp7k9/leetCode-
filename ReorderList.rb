# Definition for singly-linked list.
 class ListNode
     attr_accessor :val, :next
     def initialize(val)
         @val = val
         @next = nil
     end
 end

# @param {ListNode} head
# @return {Boolean}
require './list.rb'

def reorder_list(head)
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
                walker.next.next = nil
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
    return head_node
end
def check(head1,head2)
    tmp=ListNode.new(nil)
    now = tmp
    while(head1!=nil && head2!=nil)
	now.next = head1
	head1 = head1.next
	now.next.next = head2
	now = head2
	head2 = head2.next
    end
    if head1!=nil
        now.next = head1
    end
    return tmp.next
end
