#!/usr/bin/ruby

require 'date'

def valid_date(d,m,y)
    return Date.valid_date?(y,m,d)
end


date = 29
month = 2
year = 2024
puts valid_date(date,month,year)


#output - 
#       true