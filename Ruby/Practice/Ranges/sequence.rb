#!/use/bin/ruby

digits = 0..9

min = digits.min

max = digits.max

reject = digits.reject{|i|i<5}

digits.each do |digits|
	puts "In loop #{digits}"
end


puts digits.include?(5)

puts "Max = #{max}"

puts "Min = #{min}"

puts "Rejected values = #{reject}"



#output - 
#       In loop 0
#       In loop 1
#       In loop 2
#       In loop 3
#       In loop 4
#       In loop 5
#       In loop 6
#       In loop 7
#       In loop 8
#       In loop 9
#       true
#       Max = 9
#       Min = 0
#       Rejected values = [5, 6, 7, 8, 9]