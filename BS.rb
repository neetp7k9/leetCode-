#!/usr/bin/ruby
def bs array, target
    r = array.size-1 
    l = -1
    while r >= l
        mid = (r+l)/2
	p "#{r} #{l} #{mid}"
	if array[mid] == target
	    return mid
	elsif array[mid] < target
	    l = mid + 1
	else
	    r = mid - 1
	end
    end 
    return r
end
p bs (1..10).to_a, 0
