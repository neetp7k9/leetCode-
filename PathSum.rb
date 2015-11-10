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
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
   return false if root == nil
   if root.left == nil && root.right == nil
       return sum == root.val
   end
   r = false
   l = false
   if root.left != nil
        r = has_path_sum(root.left,sum-root.val)
   end
   if root.right != nil
        l = has_path_sum(root.right,sum-root.val)
   end
   return  r || l
end
