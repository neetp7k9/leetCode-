/**
 /* Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} root
 * @return {boolean}
 */
var isValidBST = function(root) {
    return (isValidBST_with_value(root))[0];
};
var isValidBST_with_value = function(root){
    if(root === null)
        return Array(true, null, null);
    if(root.right === null && root.left === null)
        return Array(true, root.val, root.val);
    var r = isValidBST_with_value(root.right);
    var l = isValidBST_with_value(root.left);
    if(root.right === null){
        if(!(r[0] && l[0]) ||  root.val <= l[2])
            return Array(false,null,null);
        return Array(true, l[1], root.val);
    }
    
    if(root.left === null){
        if(!(r[0] && l[0]) || root.val >= r[1])
            return Array(false,null,null);
        return Array(true, root.val, r[2]);
    }
    
    if(!(r[0] && l[0]) || (root.val >= r[1] || root.val <= l[2]))
        return [false,null,null];
    return [true,l[1],r[2]];
};
