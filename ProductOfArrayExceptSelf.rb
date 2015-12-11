# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    return nums if nums.nil?
    n_zero = (nums.select {|a| a==0}).size
    return nums.map{0} if n_zero > 1
    total = nums.inject(1)  do |product,a| 
        if a!= 0 
            product *=a
        else
            product = product
        end
    end
    if n_zero > 0
        i = nums.index 0
        nums = nums.map{0}
        nums[i] = total
    else
        return nums.map{|a| total/a}
    end
    return nums
end
