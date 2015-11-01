#!/usr/bin/ruby

def is_match(s, p)
   f = Array.new(s.length+1){Array.new(p.length+1){"none"}}
   0.upto(s.length) do |i|
       f[i][0]=false
   end
   f[0][0] = true
   1.upto(p.length) do |j|
     if(j%2==0 && p[j-1]=="*")
       f[0][j]=f[0][j-2]
     else
       f[0][j]= false
     end
   end
   1.upto(s.length) do |i|
     1.upto(p.length) do |j|
       if s[i-1] == p[j-1] || p[j-1] == "."
         f[i][j] = f[i-1][j-1]
       else
         if p[j-1] == "*"
            if s[i-1] == p[j-2] || p[j-2] == "."
              f[i][j] = f[i-1][j] || f[i][j-2]
            else
              f[i][j] = f[i][j-2]
            end
         else
             f[i][j] = false
         end
       end
     end
   end
0.upto(s.length) do |i|
  0.upto(p.length) do |j|
    print "#{f[i][j]}, "
  end
  puts ""
end
   return f[s.length][p.length]
end
puts is_match("a","a*")
s=gets.chomp
p=gets.chomp
puts is_match(s,p)
