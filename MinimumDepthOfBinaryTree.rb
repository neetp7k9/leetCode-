# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
    return 0 if root.nil?
    return 1 if root.right.nil? && root.left.nil?
    l = r = 99999999
    l = min_depth(root.left) if !root.left.nil?
    r = min_depth(root.right) if !root.right.nil?
    return [l, r].min+1
end
