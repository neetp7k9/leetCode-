#!/usr/bin/ruby
def climb_stairs(n)
   ways_table = Array.new(n+1){0}
   ways_table[0] = 0
   ways_table[1] = 1
   ways_table[2] = 2
   3.upto(n) do |i|
      ways_table[i] = ways_table[i-1] + ways_table[i-2] 
   end
   return ways_table[n]
end
