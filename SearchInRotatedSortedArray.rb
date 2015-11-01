#!/usr/bin/ruby
# @param {Integer[]} nums

# @param {Integer} target

# @return {Integer}

def search(nums, target)
  return -1 if(nums.length == 0)
  return  0 if(nums.length == 1 && nums[0] == target)
  return  -1 if(nums.length == 1 && nums[0] != target)
  l=0
  r=nums.length-1
  if(nums.first >= nums.last)
    while (l+1) < r
      if nums[(l+r)/2] >= nums[l]
        l = (l+r)/2
      else
        r = (l+r)/2
      end
    end
    if(nums.last >= target)
        l=r
        r=nums.length-1
    else
        r=l
        l=0
    end
  end
  while (l+1) < r
    if nums[(l+r)/2] > target
      r = (l+r)/2
    else
      l = (l+r)/2
    end
  end

  return l if nums[l] == target
  return r if nums[r] == target
  return -1 
end

puts search [3,1], 1
