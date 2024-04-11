#!/usr/bin/ruby

def number(n)
  missing_number = nil
  repeating = nil
  (1...n.length).each do |i|
    if n[i]-n[i-1] == 0
      repeating = n[i]
    elsif n[i]-n[i-1] == 2
      missing_number = n[i]-1
    else
      next
    end
  end
  puts "Missing number is #{missing_number} and the repeating number is #{repeating}"
end

array = [1,2,4,5,6,6,7,8,9,10]
number(array)
