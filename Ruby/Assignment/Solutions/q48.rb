#!/usr/bin/ruby

require 'date'

def days_left(date)
	d = Date.strptime(date, "%m/%d/%Y")
	final = Date.new(2022, 12, 31)
	return (final-d).to_i
end

str = "09/08/2022"
puts days_left(str)

#output - 
#       114