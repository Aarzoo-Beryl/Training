#1/usr/bin/ruby

def prime(a)
	a.reject! do |num|
		(2..num / 2).any? { |i| num % i == 0 }
	end
	print a
end

n = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
prime(n)


#output - 
#				[1, 2, 3, 5, 7]