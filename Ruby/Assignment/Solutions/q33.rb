#!/usr/bin/ruby

def missing(n)
  n.each do |i|
		if n[i] != i
			return i 
		end
	end
end

n = [0,1,2,3,4,6,7,8,9]
puts missing(n)

#output - 
#			6