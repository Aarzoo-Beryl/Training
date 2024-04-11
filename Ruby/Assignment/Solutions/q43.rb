#!/usr/bin/ruby
require 'date'

def day(s)
    days = {0 => "Sunday", 1 => "Monday", 2 => "Tuesday", 3 => "Wednesday", 4 => "Thursday", 5 => "Friday", 6 => "Saturday"}
    s = Date.strptime(s,"%d/%m/%Y")
    return days.values_at(s.wday)
end

d = "12/07/2016"
puts day(d)

#output - 
#       Tuesday