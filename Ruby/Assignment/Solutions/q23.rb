#1/usr/bin/ruby


def running_sum(arr)
	new = []
	for i in (0...(arr.length))
		b = 0
		for j in (0..i)
			b += arr[j]
		end
		new << b
	end
	return new
end

a = [1,3,1,5,4,2]
print running_sum(a)

#output - 
#	[1, 4, 5, 10, 14, 16]