# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
    table = {}
    0.upto(s.size-1) do |i|
        table[s[i]] ||= t[i] unless table.values.include? t[i]
        return false if table[s[i]] != t[i]
    end
    return true
end
