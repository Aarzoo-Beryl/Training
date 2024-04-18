#!usr/bin/ruby


def fibonnaci(i)
	a = [0,1]
	(2..i).each do |j|
		a << a[j-1] + a[j-2]
	end
	return a
end


print fibonnaci(15)

#output - 
#		[0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]