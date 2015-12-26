# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
    result = []
    return result if matrix.size == 0
    row_s, row_e = 0, matrix[0].size-1
    col_s, col_e = 0, matrix.size-1
    while (row_s <= row_e) && (col_s <= col_e) do 
        row_s.upto(row_e) do |i|
            result.push matrix[col_s][i]
        end
        (col_s+1).upto(col_e) do |i|
            result.push matrix[i][row_e]
        end
        if col_s != col_e
            (row_e-1).downto(row_s) do |i|
                result.push matrix[col_e][i]
            end
        end
        if row_s != row_e
            (col_e-1).downto(col_s+1) do |i|
                result.push matrix[i][row_s]
            end
        end
        row_s, row_e, col_s, col_e = row_s+1, row_e-1, col_s+1, col_e-1
    end
    return result
end
