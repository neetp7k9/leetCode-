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
  puts "in loop"
  puts r
  puts l
  puts (l+r)/2
    while (l+1) < r
      if nums[(l+r)/2] > nums[l]
        l = (l+r)/2
      else
        r = (l+r)/2
      end
    end
  puts "out loop"
  puts r
  puts l
    if(nums.last >= target)
        l=r
        r=nums.length-1
    else
        r=l
        l=0
    end
  end
  puts r
  puts l
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

puts search [1,1,3,1], 3
