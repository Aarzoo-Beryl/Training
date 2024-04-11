#!/usr/bin/ruby

def palindrome(s)
  string = s.each_char.with_object(Hash.new(0)){|z,count| count[z] += 1}
	odd_count = false
  palindrome_length = 0

  string.each_value do |count|
    if count % 2 == 0
      palindrome_length += count
    else
      palindrome_length += count - 1
      odd_count = true
    end
  end
	palindrome_length += 1 if odd_count
	return palindrome_length
end


string = "baalbnaalloo"
puts palindrome(string)

#output - 
#				11