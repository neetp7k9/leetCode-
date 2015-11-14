#!/usr/bin/ruby
def zigzag_level_order(root)

    answer = []

    recurrsive_level_order(root, 0, answer)

    return answer

end



def recurrsive_level_order(root, depth, answer)

    return unless root

    answer[depth] ||= []

    answer[depth].push root.val if depth%2 == 0

    (answer[depth].reverse!.push root.val).reverse! if depth%2 == 1

    recurrsive_level_order(root.left, depth+1, answer)

    recurrsive_level_order(root.right, depth+1, answer)

end
