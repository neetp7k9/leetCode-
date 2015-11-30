require "./list.rb"
def sort_list(head)
    return head if head.nil? || head.next.nil?
    head_half = half(head)
    head = sort_list(head) if !head.nil?
    head_half = sort_list(head_half) if !head_half.nil?
    tmp = ListNode.new(nil)
    now = tmp
    while !head_half.nil? && !head.nil?
        if head_half.val > head.val
            now.next = head
            head = head.next
            now = now.next
        else
            now.next = head_half
            head_half = head_half.next
            now = now.next
        end
    end
    if head.nil?
        now.next = head_half
    else
        now.next = head
    end
    return tmp.next
end
def half(head)
    walker = head
    runner = head.next
    while !runner.next.nil?
        if runner.next.next.nil?
            break
        else
            runner = runner.next.next
            walker = walker.next
        end
    end
    tmp = walker.next
    walker.next = nil
    return tmp
end
