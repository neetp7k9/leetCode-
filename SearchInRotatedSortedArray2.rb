# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def search(nums, target)
    return false if(nums.length == 0)
    return  nums[0] == target || (nums.length == 2 && nums[1] == target) if nums.length <= 2
    l=0
    r=nums.length-1
    max = r
    return search(nums[l..((r+l)/2)],target) || search(nums[((r+l)/2+1)..r], target) if nums[l]  == nums[r]
    if nums.first >= nums.last
        while r > (l+1) do 
            mid = (l+r)/2
            if nums[mid] >= nums[l]
                l = mid 
            else
                r = mid - 1
            end
        end
        max = l
    end
    if target > nums.last 
        l = 0
        r = max
    else
        l = max + 1 if max < nums.size - 1
        r = nums.size - 1
    end
    while r >= l do
        mid = (l+r)/2
        return true if nums[mid] == target
        if nums[mid] > target
            r = mid - 1
        else
            l = mid + 1
        end
    end
    return nums[r] == target || nums[l] == target
end
