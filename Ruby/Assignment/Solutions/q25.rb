#!/usr/bin/ruby

def majority_element(a)
	new = []
	a.each do |i|
		new << [a.count(i),i]
	end
	x = new.max
	print " The majority element is #{x[1]} with total occurance of #{x[0]} times in the array - #{a}"
end


arr = [1,1,1,1,1,2,3,4]
print majority_element(arr)


#output - 
#			 The majority element is 1 with total occurance of 5 times in the array - [1, 1, 1, 1, 1, 2, 3, 4]