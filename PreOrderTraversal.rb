def preorder_traversal(root)
    return (root.nil?)?[]:[root.val]+preorder_traversal(root.left)+preorder_traversal(root.right)
end
