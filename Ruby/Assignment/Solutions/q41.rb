#!/usr/bin/ruby

require 'date'

def format(date)
	date_format = [ "%B %e, %Y","%b %e, %Y","%m/%d/%Y","%m-%d-%Y","%m.%d.%Y"]
	date_format.each do |i|
		begin
			d = Date.strptime(date,i)
			return [d.month,d.day,d.year]
		rescue ArgumentError
			next
		end
	end
	return 0
end


date = "September 8, 2002"
print format(date)

#output - 
#[9, 8, 2002]