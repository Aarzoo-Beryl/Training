#!/usr/bin/ruby

require 'date'

def friday_13(m,y)
    date = Date.new(y,m,13)
    return date.friday?
end

month = 5
year = 2024
puts friday_13(month,year)


#output - 
#       false