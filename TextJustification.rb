# @param {String[]} words
# @param {Integer} max_width
# @return {String[]}
def fix(line,max_width, last = false)
    line = line.strip
    d = max_width - line.size 
    return line if d ==0
    return line + ' ' * d if last
    k = line.split
    return line+' '*d if k.size == 1
    line_new = ''
    base = d/(k.size-1)
    inc = d%(k.size-1)
    k.each_with_index do |s,i|
        line_new += s + ' ' * (base+1) 
        line_new += ' ' if i< inc
    end
    return line_new.strip
end
def full_justify(words, max_width)
    total = -1
    line = ""
    result = []
    (words.map &:size).each_with_index do |s,i|
         if (total + 1 + s) <= max_width
             total += 1 + s
             line += words[i]+" "
         else
             line = fix(line,max_width,true) if i == words.size-1
             result.push fix(line,max_width) 
             total = s
             line = words[i]+" "
         end
    end
    result.push fix(line,max_width,true) if total > 0
    result = [" "*max_width] if result.size == 0
    return result
end
