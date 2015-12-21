#!/usr/bin/ruby
def near s1, s2
    diff = 0
    0.upto(s1.size-1) do |i|
        if s1[i] != s2[i]
            return false if diff == 1
            diff = 1
        end
    end
    return false if diff == 0
    return true
end
def find_near word, word_list
    p "word now ="+word
    result = []
    word_list.each do |w|
        if near w, word
            result.push w
            word_list.delete w
        end
    end
    p "word near ="+result.to_s
    return result
end
def ladder_length(begin_word, end_word, word_list)
    queue = [begin_word]
    dist = Hash.new(-1)
    dist[begin_word] = 1
    while queue.size > 0 do 
    p "queue ="+queue.to_s
        word = queue.shift
        if near word, end_word
	    p 'find '+word
            return dist[word]+1
        end
        near = find_near word, word_list
	near.each do  |c|
	    dist[c] = dist[word] + 1
	end
        queue += near
    end
    return 0
end
p ladder_length("hit","cog",["hot","dot","dog","lot","log"])
