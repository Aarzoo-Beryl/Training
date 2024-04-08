#1/usr/bin/ruby

def prefix(string,array)
	prefix = ''
	array.each do |word|
		prefix += word

		if prefix == string
			return true
		elsif	prefix.length > string.length || prefix != string[0,prefix.length]
			return false
		end
	end
	return false
end

x = "abc" 
y = ["ab", "c", "de"]

a = ['he','ll','d']
s = 'hello'

puts prefix(s,a)
puts prefix(x,y)

#output - 
#				false
#				true