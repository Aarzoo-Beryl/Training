#!usr/bin/ruby

def good_pairs(arr)
  new = []
  arr.each_with_index do |a=arr[i], i|
    arr.each_with_index do |b=arr[j], j|
      if a == b && i < j
        new << [i,j]
      end
    end
  end
  return new.count
end

arr = [1, 2, 3, 1, 1, 3, 4, 2, 2, 1]
puts good_pairs(arr)

#output - 
#       10 
# good pairs - [[0, 3], [0, 4], [0, 9], [1, 7], [1, 8], [2, 5], [3, 4], [3, 9], [4, 9], [7, 8]]