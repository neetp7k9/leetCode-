def unique_paths(m, n)
    factorial = Hash.new{|h,i| h[i] = i*h[i-1]}
    factorial[0] = 1
    factorial[m+n-2]/(factorial[m-1]*factorial[n-1])
end
