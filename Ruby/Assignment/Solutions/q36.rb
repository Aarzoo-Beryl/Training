#!/usr/bin/ruby

def instances(w,s)
	string = s.each_char.with_object(Hash.new(0)) { |char, counts| counts[char] += 1 }
  word = w.each_char.with_object(Hash.new(0)) { |char, counts| counts[char] += 1 }
	min_count = Float::INFINITY
  word.each_key do |char|
    min_count = [min_count, string[char] / word[char]].min
  end
	return min_count
end


word = "balloon"
string = "baalloobnnaalloo"
puts instances(word,string)


#output - 
#				2