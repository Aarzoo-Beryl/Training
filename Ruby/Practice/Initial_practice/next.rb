#!/usr/bin/ruby

def number(integer)
    while integer > 0 do
        if integer == 3
            next
        else
            print "#{integer} "
        end
        integer -= 1
    end
end

number(5)




#output-
#       5 4 