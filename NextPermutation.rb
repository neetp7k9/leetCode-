# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def next_permutation(nums)
    return nums if nums.size <= 1
    pre = nums.last
    i = nums.size-2
    while i>=0 && nums[i] >= pre
        pre = nums[i]
        i -= 1
    end
    return nums.reverse! if i == -1
    j = nums.size - 1
    while j > i && nums[j] <= nums[i]
        j -= 1
    end
    nums[i], nums[j] = nums[j], nums[i]
    r, l = nums.size-1, i+1
    while r > l
        nums[r], nums[l] = nums[l], nums[r]
        r, l = r-1, l+1
    end
end
