# LeetCode #106: Construct Binary Tree from Inorder and Postorder Traversal (Ruby)
def build_tree(inorder, postorder)
    return nil if inorder.empty? || postorder.empty?
   
    inorder_map = {}
    inorder.each_with_index { |val, idx| inorder_map[val] = idx }

    post_idx_ref = [postorder.length - 1]

    
    def build_recursive(inorder_map, postorder, post_idx_ref, in_start, in_end)
        
        return nil if in_start > in_end || post_idx_ref[0] < 0

        root_val = postorder[post_idx_ref[0]]
        root = TreeNode.new(root_val)

        post_idx_ref[0] -= 1

        
        root_idx_in_inorder = inorder_map[root_val]

        root.right = build_recursive(inorder_map, postorder, post_idx_ref, root_idx_in_inorder + 1, in_end)
        root.left = build_recursive(inorder_map, postorder, post_idx_ref, in_start, root_idx_in_inorder - 1)

        return root
    end

    build_recursive(inorder_map, postorder, post_idx_ref, 0, inorder.length - 1)
end