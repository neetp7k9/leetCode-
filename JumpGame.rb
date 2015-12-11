# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
    return false if nums.nil? || nums.size == 0
    max, i = nums[0], 0
    while i<nums.size && max < (nums.size-1)
        max = (i + nums[i]) if (i + nums[i]) > max
        i += 1
        return false if i > max
    end
    return true
end
