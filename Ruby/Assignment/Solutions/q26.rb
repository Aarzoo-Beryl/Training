#!usr/bin/ruby

def distinct_string(a,k)
	new = a.select{|i| a.count(i)==1}
	if k < new.length
  	puts new[k]
	else 
		puts "''"
	end
end

array = ["apple", "banana", "orange", "apple", "grape", "banana", "kiwi", "orange"]
distinct_string(array,1)
distinct_string(array,5)

#output - 
#			kiwi
#			''



=begin
	  return k < new.length ? new[k] : ""
		this can also be written instead of the if and else clause 
		this says - to return new[k] if k<length-1 and display '' otherwise
=end
