#!/usr/bin/ruby
def get_row(row_index)
    return [1] if row_index == 0
    answer = Array.new(row_index+1){|i| c(row_index,i)}
end

def c(a,b)
    return 1 if b == 0 || a == b
   ((a-b+1)..a).inject(:*)/(1..b).inject(:*) 
end
