# @param {Integer} n
# @return {Integer}
def count_primes(n)
   return 0 if n <=2
   return 1 if n ==3
   isPrime = Array.new(n){true}
   isPrime[0], isPrime[1] = false, false
   x = 2
   while x*x < n do 
       if isPrime[x]
           p = x * x
           while p < n do
               isPrime[p] = false
               p += x
           end
       end
       x += 1
   end
   isPrime.count true
end
