#!/usr/bin/ruby
# Definition for a binary tree node.

# class TreeNode

#     attr_accessor :val, :left, :right

#     def initialize(val)

#         @val = val

#         @left, @right = nil, nil

#     end

# end



# @param {TreeNode} root

# @return {Integer[][]}

def level_order(root)

    answer = []

    recurrsive_level_order(root, 0, answer)

    return answer

end

def recurrsive_level_order(root, depth, answer)
    return unless root
    answer[depth] ||= []
    answer[depth].push root.val
    recurrsive_level_order(root.left, depth+1, answer)
    recurrsive_level_order(root.right, depth+1, answer)
end
