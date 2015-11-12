#!/usr/bin/ruby
def trailing_zeroes(n)
   sum = 0
   while n != 0
     sum += n/5
     n /= 5
   end
   return sum
end
