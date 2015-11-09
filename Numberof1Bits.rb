#!/usr/bin/ruby
def hamming_weight(n)
    n.to_s(2).delete("0").length
end
