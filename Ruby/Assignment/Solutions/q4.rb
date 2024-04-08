#!/usr/bin/ruby


def divisible(string)
    a = string.to_i(base=10)
    if a%7 == 0
        puts '1'
    else
        puts '0'
    end
end


str = '1256474'
divisible(str)



#output - 
#       0