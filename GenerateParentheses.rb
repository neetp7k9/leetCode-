#!/usr/bin/ruby
# @param {Integer} n
# @return {String[]}

def generate_parenthesis(n)
   solution = []
   return solution if n == 0
   g solution, "", 0, n, 0, 0
   return solution
end

def g solution, sample, depth, n, left, right
    if depth == 2*n
        solution.push sample
        return
    end
    if left < n
        g solution, sample+"(", depth+1, n, left+1, right
    end
    if right < left
        g solution, sample+")", depth+1, n, left, right+1
    end
end
puts generate_parenthesis(5)
