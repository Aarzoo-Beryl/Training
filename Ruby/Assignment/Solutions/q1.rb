#!/usr/bin/ruby


def sorting(arr)
	a = []
	arr.each do |element|
    if element.is_a?(Integer)
			a.append(element)
		end
	end
	print a
end


array = [1, "pear", 5, "grape", 8, "kiwi"]

sorting(array)

#output - 
#					[1, 5, 8]