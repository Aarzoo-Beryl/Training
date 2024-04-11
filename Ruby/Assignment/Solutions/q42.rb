#!/usr/bin/ruby
require 'time'
def time_passed(t1,t2)
	t1 = Time.strptime(t1,"%H:%M")
	t2 = Time.strptime(t2,"%H:%M")

	if t1>=t2
		result = t1-t2
	else
		result = t2-t1
	end
	total_seconds = result.to_i
	hours = total_seconds / 3600
	min = (total_seconds % 3600) / 60
	print "hours= #{hours},minutes= #{min}"
end

time1 = "10:30"
time2 = "15:45"
time_passed(time1,time2)

#output - 
#			hours= 5,minutes= 15