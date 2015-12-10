class Solution(object):
    def minPathSum(self, grid):
        """
        :type grid: List[List[int]]
        :rtype: int
        """
        if len(grid) == 0 | len(grid[0]) == 0:
            return 0
        for i in range(len(grid)-1):
            grid[i+1][0] += grid[i][0]
        for j in range(len(grid[0])-1):
            grid[0][j+1] += grid[0][j]
        for i in range(len(grid)-1):
            for j in range(len(grid[0])-1):
                grid[i+1][j+1] += min(grid[i][j+1],grid[i+1][j])
        return grid[len(grid)-1][len(grid[0])-1]
