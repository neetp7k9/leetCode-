#!/usr/bin/ruby
# @param {Integer[]} nums
def rotate(nums, k)
    a, b = nums.length, k
    return if k == 0
    while(a%b != 0 && b!= 0)
        a, b = b, a%b
    end
    puts "b=#{b}"
    tmp = Array.new(b){|i| nums[i]}
            puts "nums=#{nums}"
    (nums.length/b-1).downto(0) do |i|
        0.upto(b-1) do |j|
            nums[(i*b+j+k)%nums.length] = nums[(i*b+j)%nums.length]  
            puts " #{(i*b+k+j)%nums.length} be set to  #{(i*b+j)%nums.length}"
            puts "nums=#{nums}"
        end
    end
    puts "nums=#{nums}"
    puts "tmp=#{tmp}"
    0.upto(b-1) do |i|
        nums[(i+b)%nums.length] = tmp[i]  
    end
end
a = [1,2,3]
rotate(a,2)
puts "#{a}"
