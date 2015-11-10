#!/usr/bin/ruby
# @param {String} s
# @return {Integer}
def title_to_number(s)
    col_num = 0
    s.each_char do |c|
        col_num *= 26
        col_num += (c.ord-'A'.ord+1)
    end
    return col_num
end
