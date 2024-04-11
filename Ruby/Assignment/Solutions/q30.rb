#!usr/bin/ruby

def pangram(s)
	hash = ('a'..'z').to_a
	alphabet = Hash.new(0)
	s.downcase.each_char do |char|
		alphabet[char] += 1 if hash.include?(char)
	end
	return hash.length == alphabet.keys.length
end


str = "the quick brown fox jumps over the lazy dog"
puts pangram(str)
puts pangram("hello how are you")


#output - 
#			true
#			false