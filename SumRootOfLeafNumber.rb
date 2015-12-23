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
def sum_numbers(root)
    sum_tree(root)[0]
end

def sum_tree(root)
    return 0 if root.nil?
    return [root.val,1] if root.right.nil? && root.left.nil?
    t_left = [0,0]
    t_left = sum_tree(root.left) unless root.left.nil?
    t_right = [0,0]
    t_right = sum_tree(root.right) unless root.right.nil?
    return [t_left[0]+t_right[0]+(t_left[1]+t_right[1])*10*root.val,(t_left[1]+t_right[1])*10]
end
