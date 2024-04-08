#1/usr/bin/ruby


def largest(s,k)
	s.map!(&:to_i)
	(0..(s.size-1)).each do |x|
		(x+1..s.size).each do |y|
			if s[x] && s[y] && s[x] < s[y]
        s[x], s[y] = s[y], s[x] 
			end
		end
	end
	puts "the largest-#{k} integer in the array '#{s}' is #{s[k-1]}"
end

i = ["20","224","34","255"]
largest(i,1)
largest(i,2)
largest(i,3)
largest(i,4)


#output - 
#the largest-1 integer in the array '[255, 224, 34, 20]' is 255
#the largest-2 integer in the array '[255, 224, 34, 20]' is 224
#the largest-3 integer in the array '[255, 224, 34, 20]' is 34
#the largest-4 integer in the array '[255, 224, 34, 20]' is 20
