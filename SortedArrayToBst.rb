def sorted_array_to_bst(nums)
    return nil if nums == nil || nums.size == 0
    root = TreeNode.new(nums[nums.size/2])
    return root if nums.size == 1
    root.left= sorted_array_to_bst(nums[0..(nums.size/2-1)])
    root.right = sorted_array_to_bst(nums[(nums.size/2+1)..-1])
    return root
end
