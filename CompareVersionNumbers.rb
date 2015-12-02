# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
    v1 = version1.split('.').map(&:to_i)
    v2 = version2.split('.').map(&:to_i)
    i = 0
    len = [v1.length, v2.length].max
    while i<len
        v1[i] ||=0
        v2[i] ||=0
        if (v1[i]<=>v2[i]) == 0
            i += 1    
        else
            return v1[i]<=>v2[i]
        end
    end
    return 0
end
