#!/usr/bin/ruby
# @param {String} digits
# @return {String[]}

def letter_combinations(digits)
    trans = {
        "1"=>"",
        "2"=>"abc",
        "3"=>"def",
        "4"=>"ghi",
        "5"=>"jkl",
        "6"=>"mno",
        "7"=>"pqrs",
        "8"=>"tuv",
        "9"=>"wxyz",
        "0"=>" ",
    }
    solution = []
    path=""
    dfs digits.length, digits, path, solution, trans
    return solution
end

def dfs depth, digits, path, solution, trans
    if depth == 0
        solution.push path.reverse if path.length > 0
        return
    end
    if digits[depth-1] == 1
        dfs depth-1, digits, path, solution, trans
        return 
    end
    trans[digits[depth-1]].each_char do |c|
        dfs depth-1, digits, path+c, solution, trans
    end
end
puts letter_combinations("2")
