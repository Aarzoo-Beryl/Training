#!/usr/bin/ruby
def number(integer)
    while integer > 0 
        if integer == 3
            integer -= 1 
            redo
        end
        print "#{integer},"
        integer -= 1
    end
end


number(5)




#output-
#       5,4,2,1, 