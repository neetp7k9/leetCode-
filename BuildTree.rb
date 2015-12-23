def build_tree(inorder, postorder)
    return nil if inorder.size == 0
    return nil if inorder.size != postorder.size
    root = TreeNode.new(postorder[-1])
    index = inorder.index(postorder[-1])
    root.left = build_tree(inorder[0,index],postorder[0,index])
    root.right = build_tree(inorder[index+1,inorder.size-index-1],postorder[index,postorder.size-index-1])
    return root
end
