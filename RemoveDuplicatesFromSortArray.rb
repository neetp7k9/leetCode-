#!/usr/bin/ruby
# @param {Integer[]} nums
# @return {Integer}

def remove_duplicates(nums)
    return 0 if nums ==nil || nums.length == 0 
    pre = nums[0]-1
    size = 0
    0.upto(nums.length-1) do |i|
        if nums[i] == pre
            next
        else
            nums[size] = nums[i]
            pre = nums[i]
            size += 1
        end
    end
    return size
end
