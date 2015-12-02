#!/usr/bin/ruby
# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    0.upto(8) do |i|
        test = Hash.new(0)
        0.upto(8) do |j|
            test[board[i][j]] += 1
        end
        test.delete('.')
        return false if test.size> 0 && test.values.max > 1
        test = Hash.new(0)
        0.upto(8) do |j|
            test[board[j][i]] += 1
        end
        test.delete('.')
        return false if test.size> 0 && test.values.max > 1
    end
    map = [[0,0],[1,1],[0,1],[-1,1],[1,0],[-1,0],[1,-1],[0,-1],[-1,-1]]
    0.upto(2) do |i|
        0.upto(2) do |j|
            test = Hash.new(0)            
            0.upto(8) do |k|
                sitex = (1+i*3)+map[k][0]
                sitey = (1+j*3)+map[k][1]
                test[board[sitex][sitey]] += 1
            end
            test.delete('.')
            puts "#{test}"
            return false if test.size> 0 && test.values.max > 1
        end
    end
    return true
end
puts is_valid_sudoku([".87654321","2........","3........","4........","5........","6........","7........","8........","9........"])
