#1/usr/bin/ruby

def prime(n)
	if n>1000
		print "Wrong number,the number should be less than 1000"
	else
		a = (1..n).to_a
		a.reject! do |num|
			(2..num / 2).any? { |i| num % i == 0 }
		end
		print a.count
	end
end


prime(100)


#output - 
#			26