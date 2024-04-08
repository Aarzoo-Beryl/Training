#1/usr/bin/ruby

def palindrome(s)
	new = s.downcase.gsub(/[^a-z0-9]/, '')

	if new.reverse == new
		return true

	else 
		return false
	end
end


str = "race @a %car"
a = "anana"
puts palindrome(str)
puts palindrome(a)


#output - 
#			false
#			true