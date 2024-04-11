#!usr/bin/ruby

def palindrome(l)
	a = []
	i = l
	while a.length <15 && i>0
		b= i.to_s
		a << i if b == b.reverse
	
		i -= 1
	end
	return a
end

limit = 1000
print palindrome(limit)


#output - 
#		[999, 989, 979, 969, 959, 949, 939, 929, 919, 909, 898, 888, 878, 868, 858]