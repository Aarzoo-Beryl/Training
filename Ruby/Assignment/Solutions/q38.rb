#!/usr/bin/ruby

def indexes(n,i)
  if n.include?(i) == false
    return [-1,-1]
	else 
		return [n.index(i), -1 * (n.reverse.index(i) + 1)]
	end
end


i = 5
nums = [1, 2, 2, 3, 5, 7, 8, 8, 9]
print indexes(nums,i)

#output - 
#				[4, -5]