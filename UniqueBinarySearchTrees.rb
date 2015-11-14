#!/usr/bin/ruby
# Definition for a binary tree node.

# class TreeNode

#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer} n
# @return {TreeNode[]}
def generate_trees(n)
    return generate_trees_with_base(n,0)
end
def generate_trees_with_base(n,base)
    return [nil] if n == 0
    return [TreeNode.new(base+1)] if n == 1
    answer = []
    1.upto(n) do |i|
        generate_trees_with_base(i-1,base).each do |nodel|
            generate_trees_with_base(n-i,base+i).each do |noder|
                root = TreeNode.new(i+base)
                root.left = nodel
                root.right = noder
                answer.push root
            end
        end
    end
    return answer
end
