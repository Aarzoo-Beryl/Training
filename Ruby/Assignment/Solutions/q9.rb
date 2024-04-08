#1/usr/bin/ruby

def non_repeating(string)
	arr = string.chars
	a = ''
	for i in 0...(arr.length)
		if arr.count(arr[i]) > 1
			next
		else
			a += arr[i].to_s
		end
	end
	if a.empty? 
		return -1
	else 
		return a[0]
	end
end


str = 'hello this is me here'
puts non_repeating(str)

#output - 
#				o