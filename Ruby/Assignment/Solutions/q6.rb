#!/usr/bin/ruby

def reverse(string)
	a = string.split('.')
	new = ''
	a.each do |element|
		new << element.reverse + ' '
	end
	print new
end

str = 'Hello.this.is.me'
reverse(str)


#output - 
#       olleH siht si em