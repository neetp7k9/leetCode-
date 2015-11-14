#!/usr/bin/ruby
def game_of_life(board)
    0.upto(board.length-1) do |x|
        0.upto(board[0].length-1) do |y|
            update(board,x,y,board.length,board[0].length)
        end
    end
    0.upto(board.length-1) do |x|
        0.upto(board[0].length-1) do |y|
            board[x][y] /=2
        end
    end
end
def update(board,i,j,max_i,max_j)
    dx = [1,1,1,0,0,-1,-1,-1]
    dy = [1,0,-1,1,-1,1,0,-1]
    count = Array.new(8){|k| ((i+dx[k])>=0)&&((i+dx[k])<max_i)&&((j+dy[k])>=0)&&((j+dy[k])<max_j)?board[i+dx[k]][j+dy[k]]%2:0}.inject(:+) 
    puts "#{i},#{j},#{count}"
    case count
    when 0..1
        board[i][j] += 0
    when 2..3
        board[i][j] += 2 if board[i][j] == 1
        board[i][j] += 2 if board[i][j] == 0 && count ==3
    when 4..8
        board[i][j] += 0
    end
end
board = [[1,1],[1,0]]
game_of_life(board)
puts "#{board}"

