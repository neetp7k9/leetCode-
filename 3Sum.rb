#!/usr/bin/ruby

def three_sum nums
    solution = {}
    nums.sort!
    0.upto(nums.length-1) do |i|
        break if(nums[i] > 0)
        (i+1).upto(nums.length-1) do |j|
            break if (j<nums.length-2) && nums[i] + nums[j] > 0
            l=j+1
            next if l > (nums.length-1)
            r=nums.length-1
            target = -(nums[i]+nums[j])
            while (l+1) < r
              if nums[(l+r)/2] > target
                r = (l+r)/2
              else
                l = (l+r)/2
              end
            end
            if nums[r] == target
              l = r
            end
            puts "#{[nums[i], nums[j], nums[l]]}, #{target}"
            solution[[nums[i],nums[j],target]] = 1 if nums[l] == target
        end
    end
    solution.keys.each do |a|
        puts "#{a}" 
    end
end
three_sum([-1,0,1,2,-1,-4])
