#!/usr/bin/ruby
def length_of_last_word(s)

    last =  0

    len = 0

    s.each_char do |c|

        if c == " "

            last = len if len > 0

            len = 0

        else

            len += 1

        end

    end

    last = len if len > 0

      

    return last

end
