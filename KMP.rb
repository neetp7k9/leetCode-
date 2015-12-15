# @param {String} haystack
# @param {String} needle
# @return {Integer}
def kmp(needle)
    j = -1
    match = Array.new(needle.size) {-1}
    1.upto(needle.size) do |i|
        while(j>=0 && needle[i] != needle[j+1]) do j = match[j] end
        j += 1 if needle[i]==needle[j+1] 
        match[i] = j;
    end
    return match  
end
def str_str(haystack, needle)
    return 0 if needle.nil? || needle.size == 0
    return -1 if haystack.nil? || haystack.size == 0
    j = -1
    match = kmp needle
    0.upto(haystack.size) do |i|
        while(j>=0 && haystack[i] != needle[j+1]) do j = match[j] end
        j += 1 if haystack[i]==needle[j+1] 
        return (i-needle.size+1) if j==needle.size-1
    end
    return -1
end


