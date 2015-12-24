# @param {Integer[]} nums
# @return {Integer[][]}
def permute_unique_c(count)
    result = []
    count.keys.each do |k|
        next if count[k] == 0
        count[k] -= 1
        result_sub = permute_unique_c(count).map {|c| c.push k}
        result_sub = [[k]] if result_sub.size == 0
        result += result_sub
        count[k] += 1
    end
    return result
end
def permute_unique(nums)
    count = Hash.new(0)
    nums.each do |n|
        count[n] += 1
    end
    result = permute_unique_c(count)
end


