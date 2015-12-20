# @param {Integer[]} nums
# @return {Integer[]}
def majority_element(nums)
    n1,n2,c1,c2 = nil, nil, 0, 0
    nums.each do |c|
        if c == n1 
            c1 += 1
        elsif c == n2
            c2 += 1
        elsif c1 == 0
            n1, c1 = c, 1
        elsif c2 == 0
            n2, c2 = c, 1
        else
            c1, c2 = c1 - 1, c2 - 1
        end
    end
    result = []
    result.push n1 if nums.count(n1) > nums.size/3
    result.push n2 if nums.count(n2) > nums.size/3
    return result
end
