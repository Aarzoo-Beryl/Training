#!/usr/bin/ruby
require 'date'

def total_days(m,y)
  Date.new(y, m, -1).day
end

month = 7
year = 2020
print total_days(month,year)

#output - 
#			31


=begin
	def total_days(m,y)
    count = 0
    (1..31).each do |day|
        count +=1 if Date.new(y,m,day).valid_date?(yyyy,mm,dd) 
    end
    return count
	end
=end
