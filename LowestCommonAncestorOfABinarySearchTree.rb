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

# @param {TreeNode} p

# @param {TreeNode} q

# @return {TreeNode}

def lowest_common_ancestor(root, p, q)
    if root.val > p.val && root.val > q.val
        return root unless root.left 
        return lowest_common_ancestor(root.left, p, q)
    end

    if root.val < p.val && root.val < q.val
        return root unless root.right
        return lowest_common_ancestor(root.right, p, q)
    end
    return root 
end
