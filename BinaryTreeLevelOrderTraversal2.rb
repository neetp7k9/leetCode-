#!/usr/bin/ruby
def level_order_bottom(root)

    answer = []

    recurrsive_level_order(root, 0, answer)

    return answer.reverse

end

def recurrsive_level_order(root, depth, answer)

    return unless root

    answer[depth] ||= []

    answer[depth].push root.val

    recurrsive_level_order(root.left, depth+1, answer)

    recurrsive_level_order(root.right, depth+1, answer)

end
