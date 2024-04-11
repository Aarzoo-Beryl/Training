#!/usr/bin/ruby

def good_string(s)
	string = ('a'..'z').to_a
	letter = Hash.new(0)
	s.downcase.each_char do |i|
		letter[i] += 1 if string.include?(i)
	end
	if letter.values.uniq.length == 1
		return true
	else false
	end
end

str = "aabbccdd"
str2 = "hello"
puts good_string(str)
puts good_string(str2)

#output - 
#			true
#			false