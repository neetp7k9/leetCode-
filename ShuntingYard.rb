#!/usr/bin/ruby
# @param {String} s
# @return {Integer}
def calculate(s)
    stack = []
    rpn = []
    s.each_char do |c|
        case c 
            when /\d/ then
                rpn.push c
            when /[\+-]/ then
                while stack.last == '/' || stack.last == '*'
                    rpn.push stack.pop
                end
                stack.push c 
            when /[\*\\]/ then
                stack.push c
            when '(' then
                stack.push c
            when ')' then
                while (k = stack.pop) != '('
                    rpn.push k
                    return nil if stack.size == 0
                end
        end
    end
    rpn += stack.reverse
    stack = []
    rpn.each do |t|
        case t
            when /\d/ 
                stack.push t.to_i
            when '+'
                stack.push stack.pop + stack.pop
            when '-'
                stack.push stack.pop - stack.pop
            when '*'
                stack.push stack.pop * stack.pop
            when '/'
                stack.push stack.pop / stack.pop
        end
    end
    return stack.pop
end
while true
    p "#{k = gets.chomp}, =  #{calculate k}"
end
