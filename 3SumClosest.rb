#!/usr/bin/ruby
def three_sum_closest(nums, target)
    solution = []
    value = 2**20 
    nums.sort!
    0.upto(nums.length-3) do |i|
        (i+1).upto(nums.length-2) do |j|
            l=j+1
            r=nums.length-1
            goal = target-(nums[i]+nums[j])
            while (l+1) < r
              if nums[(l+r)/2] > goal
                r = (l+r)/2
              else
                l = (l+r)/2
              end
            end
            if (nums[r]-goal).abs < (nums[l]-goal).abs
              l = r
            end
            puts "#{[nums[i], nums[j], nums[l]]}, #{target}"
            if value.abs > (nums[l]-goal).abs
              solution = [nums[i],nums[j],nums[l]] 
              value = nums[l]-goal
            end
        end
    end
    puts "#{solution}"
    return value+target
end
puts three_sum_closest([-1,0,1,2,-1,-4],3)
