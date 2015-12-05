# @param {Integer[]} citations
# @return {Integer}
def h_index(citations)
    return 0 if citations.size == 0
    citations.sort!
    (citations.size).downto(1) do |i|
        return i if citations[-i]>=i
    end
    return 0
end
