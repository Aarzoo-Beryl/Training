#!/usr/bin/ruby

def count(arr)
  b=0
  arr.each do |i|
    if i%2 == 0
      b += 1
    end
  end
  return b
end


array = [1,2,3,4,5,6,7,8,9,10,20]
puts count(array)


#output - 
#     6