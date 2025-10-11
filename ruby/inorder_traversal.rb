# LeetCode #94: Binary Tree Inorder Traversal (Ruby)
def inorder_traversal(root)
    result = []
    inorder_helper(root, result)
    result
end

def inorder_helper(node, result)
    return if node.nil?

      inorder_helper(node.left, result)
        result << node.val
         inorder_helper(node.right, result)
end
