#!/usr/bin/ruby
require 'date'

def count(y)
	(1..12).count { |month| Date.new(y, month, 14).wday == 6 }
end

year = 2023
puts count(year)


#output - 
#				2