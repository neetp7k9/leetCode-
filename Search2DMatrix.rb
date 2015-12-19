#!/usr/bin/ruby
# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
    l, r = 0, matrix.size - 1
    while r >= l do
        mid = (r+l)/2
        if matrix[mid][0] == target
            return true
        elsif matrix[mid][0] < target
            l = mid + 1 
        else
            r = mid - 1
        end
    end
    row = r
    l = 0
    r = matrix[row].size-1
    while r >= l do
        mid = (r+l)/2
        if matrix[row][mid] == target
            return true
        elsif matrix[row][mid] < target
            l = mid + 1 
        else
            r = mid - 1
        end
    end
    return false
end
