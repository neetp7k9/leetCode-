# @param {String[]} tokens
# @return {Integer}

def evaluate x, y, op
    case op
    when "+"
        return x+y
    when "-"
        return y-x
    when"*"
        return x*y
    when "/"
        return y/x if x*y >= 0
        return (y.abs/x.abs)*(-1)
    end
end
def eval_rpn(tokens)
    return nil if tokens.nil?
    return tokens[0].to_i if tokens.size == 1
    stack = []
    tokens.each do |t|
        if t =~ /\d/
            stack.push t.to_i
        else
            stack.push evaluate(stack.pop, stack.pop,t)
        end
    end
    return stack.pop
end


