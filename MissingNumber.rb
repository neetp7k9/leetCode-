# @param {Integer[]} nums
# @return {Integer}

def missing_number(nums)
    nums.each_index do |i|
        next if nums[i].nil?
        now,nums[i] = nums[i],nil
        while now
            nums[now],now = now, nums[now]
        end
    end
    (nums.index(nil).nil?)?nums.size: nums.index(nil)
end
