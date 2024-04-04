#!/usr/bin/ruby

def number(integer)
	while integer > 0 do
		if integer <= 7
			break
		else
			print "#{integer} "
		end
		integer -= 1
	end
end

number(10)




#output-
#       10 9 8