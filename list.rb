#Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end
def makeList list
    head = ListNode.new(list[0])
    now = head 
    1.upto(list.length-1) do |i|
        now.next = ListNode.new(list[i])
        now = now.next
    end
    head
end
def printList head
    while !head.nil?
        print "#{head.val}->"
        head = head.next
    end
    print "nil\n"
end

