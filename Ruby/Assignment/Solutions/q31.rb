#!/usr/bin/ruby

def indices(a,target)
	(0...a.length).each do |i|
		n = target-a[i]
		if a.include?(n)
			return [i,a.index(n)] unless i>a.index(n)
		end
	end
end


nums = [2, 7, 11, 15] 
target = 9
print indices(nums,target)


#output - 
#			[0, 1]