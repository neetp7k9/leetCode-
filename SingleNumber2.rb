# @param {Integer[]} nums

# @return {Integer}

def single_number(nums)

    record = Hash.new(0)

    nums.each do |n|

        record[n] += 1

    end

    record.each do |k,v|

        return k if v == 1

    end

end
