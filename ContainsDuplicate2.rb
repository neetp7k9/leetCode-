#!/usr/bin/ruby
def contains_nearby_duplicate(nums, k)
    return false if nums.size <= 1 || k==0
    table = {}
    nums.each_index do |i|
        table[nums[i]] ||= Array.new
        table[nums[i]].push i 
    end
    table.keys.each do |i|
        return true if table[i].map.with_index {|x,j| j==0?(k+1):table[i][j]-table[i][j-1]}.min<=k
    end
    return false
end
puts contains_nearby_duplicate([1,2],2)
