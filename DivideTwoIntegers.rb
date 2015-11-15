#!/usr/bin/ruby
# @param {Integer} dividend

# @param {Integer} divisor

# @return {Integer}

def divide(dividend, divisor)

    type = ((dividend>= 0 && divisor >=0 ) || (dividend < 0 && divisor <0 ))?0:1

    dividend = -dividend if dividend<0

    divisor = -divisor if divisor<0

    now_v = divisor

    now_i = 1

    value = [1]

    index = [0]

    while dividend >= now_v

        value.unshift now_v

        index.unshift now_i

        now_v += now_v

        now_i += now_i

    end

    answer = 0

    value.each_index do |i|

        if dividend >= value[i]

            dividend -= value[i]

            answer += index[i]

        end

    end

    answer = 2147483647 if answer > 2147483647 && type == 0

    answer = 2147483648 if answer > 2147483648 && type == 1

    return answer if type == 0

    return -answer if type == 1

end
