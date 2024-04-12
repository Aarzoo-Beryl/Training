#!/usr/bin/ruby

require 'date'

def leap_year_count(s)
	a = s.split('-').map(&:to_i)
	count = 0
	(a[0]..a[1]).each do |i|
		if Date.leap?(i)
			count += 1
		end
	end
	return count
end

string = "2010-2024"
puts leap_year_count(string)



#output - 
#				4