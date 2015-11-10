#!/usr/bin/ruby
def is_anagram(s, t)
   c_table = Hash.new(0)
   s.each_char do |c|
       c_table[c] += 1
   end
   t.each_char do |c|
       c_table[c] -= 1
   end
   return c_table.values.map {|v| v.abs}.inject(0){|v,sum| sum += v} == 0
end
