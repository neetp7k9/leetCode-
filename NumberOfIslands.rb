def flow(i,j,grid)
    return if grid[i][j] == '0'
    grid[i][j] = '0'
    flow(i,j+1,grid) if (j+1) < grid[0].size
    flow(i+1,j,grid) if (i+1) < grid.size
    flow(i-1,j,grid) if i > 0
    flow(i,j-1,grid) if j > 0
end
def num_islands(grid)
    count = 0
    grid.each_index do |i|
        grid[i].each_index do |j|
            if grid[i][j] == '1'
                flow i,j,grid
                count += 1
            end
        end
    end
    return count
end
