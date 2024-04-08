#1/usr/bin/ruby

def anagram(a,b)
	array_a = a.chars
	array_b = b.chars
	if array_a.sort == array_b.sort
		print "true"
	else
		print "false"
	end
end

str_1 = 'hello'
str_2 = 'holle'

anagram(str_1,str_2)


#output - 
#       true