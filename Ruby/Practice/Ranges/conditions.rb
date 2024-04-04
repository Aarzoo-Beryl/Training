#!/use/bin/ruby


def marks(i)
	case i
	when 1..33
		puts "fail"
	when 34..60
		puts "pass"
	when 61..100
		puts "passed with merit"
	else
		puts "Invalid score"
	end
end


#here case is used for conditional branching. 
#Its purpose is to evaluate an expression once and then compare it against multiple values or conditions. 

marks(17)

marks(55)

marks(99)

#output - 
#       fail
#       pass
#       passed with merit