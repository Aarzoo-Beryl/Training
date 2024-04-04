#!/usr/bin/ruby

def method(*a)
	puts "Total number of parameters assigned -> #{a.length}"
	for i in 0...a.length
		b=i+1
		puts "#{b} . #{a[i]}"
	end
end

method("iphone","iwatch","macbook")
method("hello","hi","hey")


#output - 
#       Total number of parameters assigned -> 3
#       1 . iphone
#       2 . iwatch
#       3 . macbook
#       Total number of parameters assigned -> 3
#       1 . hello
#       2 . hi
#       3 . hey