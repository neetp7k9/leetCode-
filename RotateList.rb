# Definition for singly-linked list.

# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
    #count length and get end node
    return head if head.nil? || k == 0
    len = 1
    node_now = head
    while node_now.next != nil
        len += 1
        node_now = node_now.next
    end
    node_end = node_now
    k = k % len
    return head if len == 1 || k==0
    #get head_k
    site = len
    node_now = head
    while node_now.next != nil
        site -= 1
        node_pre, node_now = node_now, node_now.next
        if site == k
            node_k = node_now
            break 
        end
    end
    #set head to end node and return node_k
    node_end.next = head
    node_pre.next = nil if node_pre
    return node_k
end
