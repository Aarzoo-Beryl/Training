#!/usr/bin/ruby

require 'date'

def after_n_days(arr,n)
	days = {0 => "Sunday", 1 => "Monday", 2 => "Tuesday", 3 => "Wednesday", 4 => "Thursday", 5 => "Friday", 6 => "Saturday"}
	arr.each_with_index do |day,i|
		key = (days.key(day).to_i + n) % 7
		arr[i] = days[key]
	end
	return arr
end

arr = ["Thursday", "Monday"]
n = 5
print after_n_days(arr,n)


#output - 
#				["Tuesday", "Saturday"]