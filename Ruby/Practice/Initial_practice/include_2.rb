#!/usr/bin/ruby

$LOAD_PATH<<'.'
require "include_1.rb"


class Decade
	include Week
	no_of_years = 10
	def no_of_months
		puts Week::FIRST_DAY
		number = 10*12
		puts number
	end
end


d1 = Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months








#output - 
#       Sunday
#       There are 4 weeks in a month
#       There are 52 weeks in a year
#       Sunday
#       120