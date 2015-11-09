#!/usr/bin/ruby
def reverse(x)
   ((x=(x>0?x.abs.to_s.reverse.to_i: -x.abs.to_s.reverse.to_i))> 2**31 ||  x < -2**31)?0: x
end
