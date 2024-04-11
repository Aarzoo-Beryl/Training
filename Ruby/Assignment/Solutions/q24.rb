#1/usr/bin/ruby

def diagonal_sum(a)
	sum = 0
	n = a.length
	for i in (0...n)
		sum += a[i][i]
		j = n - i - 1
		sum += a[i][j] unless i==j
	end
	return sum
end


arr = [[1,1,3],[2,1,5],[3,4,2]]
print diagonal_sum(arr)


#output - 
#			10






=begin
	other method  - 

	def diagonal_sum(a)
    primary = 0
    secondary = 0
    n = a.length

    (0...n).each do |i|
        primary += a[i][i]
        j = n-1-i
        secondary += a[i][j] unless i==j
    end
    return primary+secondary
	end

=end
