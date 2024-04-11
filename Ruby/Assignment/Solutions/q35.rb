#!/usr/bin/ruby

def anagram(s,t)
	if s.length!=t.length 
		return 0
	end
	return steps = (s.chars - t.chars).uniq.length
end

s = "silent"
t = "lisnin"
puts anagram(s,t)

#output - 
#			2