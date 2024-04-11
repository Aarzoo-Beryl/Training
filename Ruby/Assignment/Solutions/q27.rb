#!usr/bin/ruby

def sorting(arr)
	even = []
	odd = []
	arr.each do |i|
		even << i if i%2 == 0
		odd << i if i%2 != 0 
	end
	return odd+even
end

a = [1,2,3,4,5,6,7,8,9,10]
print sorting(a)


#output - 
#			[1, 3, 5, 7, 9, 2, 4, 6, 8, 10]



=begin
	other method (this creates the partition between odd and even elements of the array-
	def sorting(arr)
		arr.partition(&:even?).flatten
	end
=end

