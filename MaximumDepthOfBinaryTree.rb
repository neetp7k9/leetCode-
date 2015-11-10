#!/usr/bin/ruby
def max_depth(root)
    return 0 unless root
    return [max_depth(root.right),max_depth(root.left)].max+1
end
