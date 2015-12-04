#!/usr/bin/ruby
# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
    return if matrix.nil?
    row_1 = false
    column_1 = false
    0.upto(matrix.length-1) do |i|
        if matrix[i][0] == 0
            column_1 = true
        end
    end
    0.upto(matrix[0].length-1) do |i|
        if matrix[0][i] == 0
            row_1 = true
        end
    end
    0.upto(matrix.length-1) do |i|
        0.upto(matrix[0].length-1) do |j|
            if matrix[i][j] == 0
                matrix[i][0] = 0
                matrix[0][j] = 0
            end
        end
    end
    1.upto(matrix.length-1) do |i|
        if matrix[i][0] == 0
            0.upto(matrix[0].length-1) do |j|
                matrix[i][j] = 0
            end
        end
    end
    1.upto(matrix[0].length-1) do |i|
        if matrix[0][i] == 0
            0.upto(matrix.length-1) do |j|
                matrix[j][i] = 0
            end
        end
    end
    if row_1
        0.upto(matrix[0].length-1) do |i|
            matrix[0][i] = 0
        end
    end
    
    if column_1
        0.upto(matrix.length-1) do |i|
            matrix[i][0] = 0
        end
    end
end
