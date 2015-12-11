# @param {Integer[][]} triangle
# @return {Integer}

def minimum_total(triangle)
    return triangle[0][0] if triangle.size < 2
    record = triangle.last.map {|k| k}
    (triangle.size-2).downto(0) do |i|
        0.upto(i) do |j|
            record[j] = [record[j], record[j+1]].min + triangle[i][j]
        end
    end
    return record[0]
end
