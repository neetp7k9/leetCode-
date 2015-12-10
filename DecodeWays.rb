# @param {String} s
# @return {Integer}
def num_decodings(s)
    return 0 if s[0] == '0'
    record = Array.new(s.size+1){0}
    record[1] = 1
    2.upto(s.size) do |i|
        digit_1 = record[i-1]
        digit_1 = 0 if s[i-1]=='0'
        digit_2 = 0
        digit_2 = (record[i-2]==0)?1:record[i-2] if s[i-2]!='0' && s[i-2,2].to_i <= 26
        record[i] = digit_1 + digit_2
        return 0 if record[i] == 0
    end
    return record[s.size]
end
