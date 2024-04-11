#!/usr/bin/ruby

def target_sum(a,b,s)
  result = []
  for i in a
		for j in b
			result << [i,j] if i + j == s
		end
	end
	return result
end


arr1 = [3, 1, 5, 7]
arr2 = [4, 2, 6, 8]
x = 9
print target_sum(arr1,arr2,x)

#output - 
#				[[3, 6], [1, 8], [5, 4], [7, 2]]